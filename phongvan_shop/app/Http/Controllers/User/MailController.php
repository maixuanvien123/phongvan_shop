<?php

namespace App\Http\Controllers\User;

use App\Models\User;
use App\Models\Order;
use App\Mail\SendMail;
use App\Models\Product;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use App\Models\OrderCustomer;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Gloudemans\Shoppingcart\Facades\Cart;

class MailController extends Controller
{
    private $user, $product, $order, $orderDetail, $orderCustomer;
    public function __construct(User $user, Product $product, Order $order, OrderDetail $orderDetail, OrderCustomer $orderCustomer)
    {
        $this->user = $user;
        $this->product = $product;
        $this->order = $order;
        $this->orderDetail = $orderDetail;
        $this->orderCustomer = $orderCustomer;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subject = env('APP_NAME') . '.vn - Liên Hệ';
        $view = 'Email.email_contact';
        $array = [
            'name' => request()->name,
            'email' => request()->email,
            'message' => request()->message,
            'date' => now(),
            'status' => 0,
        ];
        $mailTo = env('MAIL_FROM_ADDRESS');
        Mail::to($mailTo)->send(new SendMail($subject, $view, $array));

        return redirect()->back()->with('success', 'Chúng tôi sẽ liên hệ lại bạn trong 24h!');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        for ($i = 0; $i < 100; $i++) {

            $user = $this->user->inRandomOrder()->first();
            $product = $this->product->inRandomOrder()->first();
            $data['id'] = $product->id;
            $data['qty'] = 2;
            $data['name'] = $product->name;
            $data['price'] = $product->price;
            $data['weight'] = $product->qty;
            $data['options']['image'] = $product->ProToGall->imageDefault;
            $data['options']['slug'] = $product->slug;

            Cart::add($data);

            $subTotal = 0;
            foreach (Cart::content() as $item) {
                $subTotal += $item->price * $item->qty;
            }
            $total = $subTotal;

            $customer = $this->orderCustomer->create([
                'userId' => $user->id,
                'name' => $user->name,
                'phone' => $user->phone,
                'address' => fake()->address,
                'note' => null,
            ]);
            $order = $this->order->create([
                'cusId' => $customer->id,
                'discountId' => null,
                'status' => 1,
                'totalPrice' => $total,
                'debt' => $total,
                'payment' => 0,
            ]);
            foreach (Cart::content() as $item) {
                $this->orderDetail->create([
                    'orderId' => $order->id,
                    'proId' => $item->id,
                    'qtyBuy' => $item->qty,
                    'price' => $item->price,
                ]);
                $product = $this->product->find($item->id);
                $qty = $product->qty - $item->qty;
                $product->update(['qty' => $qty > 0 ? $qty : 0]);
            }
            Session::forget('cart');
        }
        return redirect()->route('home.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $subject = env('APP_NAME') . '.vn - Thay đổi mật khẩu';
        $view = 'Email.email_forgetPassword';
        $random = str()->random();
        $user = User::where('email', request()->email)->first();
        if (!$user) {
            return redirect()->back()->with('error', 'Email không tồn tai!');
        }
        $user->forget_token = $random;
        $user->save();

        $array = [
            'name' => $user->name,
            'email' => request()->email,
            'token' => $user->forget_token,
            'date' => now(),
            'status' => 1,
        ];
        $mailTo = request()->email;
        Mail::to($mailTo)->send(new SendMail($subject, $view, $array));

        return redirect()->back()->with('success', 'Vui lòng xem hộp thư của bạn!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::where('forget_token', $id)->first();
        if (!$user) {
            $user->forget_token = null;
            $user->save();

            return redirect()->route('authuser.create')->with('error', 'Token không tồn tai!');
        }

        $status = $user->forget_token;
        return view('User.forget_password', compact('status'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        User::where('forget_token', $id)->update([
            'password' => Hash::make($request->password),
            'forget_token' => null,
        ]);

        return redirect()->route('authuser.signin.index')->with('success', 'Tiếp tục đăng nhập (^-^)');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}