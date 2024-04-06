@extends('LayoutUser')
@section('content')
@include('User.inc.area', ['active' => isset($status) ? 'Thay đổi mật khẩu' : 'Quên mật khẩu'])
<!-- user-login-area-start -->
<div class="user-login-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="login-title text-center mb-30">
                    <h2>{{ isset($status) ? 'Thay đổi mật khẩu' : 'Quên mật khẩu' }}</h2>
                </div>
            </div>
            <div class="offset-lg-3 col-lg-6 col-md-12 col-12">
                <form action="{{ isset($status) ? route('mail.update',$status) : route('mail.store') }}" method="POST">
                    @isset($status)
                    @method('PUT')
                    @endisset
                    @csrf
                    <div class="login-form">
                        @if (isset($status))
                        <div class="single-login" style="position: sticky;">
                            <label>Mật khẩu <span>*</span></label>
                            <input type="password" name="password" id="password" required />
                        </div>
                        <div class="single-login" style="position: sticky;">
                            <label>Nhập lại mật khẩu <span>*</span></label>
                            <input type="password" name="re_password" id="re_password" required />
                        </div>
                        <div class="field">
                            <span id="message"></span>
                        </div>
                        @else
                        <div class="single-login">
                            <label>Email<span>*</span></label>
                            <input type="email" name="email" required />
                        </div>
                        @endif
                        <div class="single-login single-login-2">
                            <button style=" width: 100%; margin-top: 2%; " type="submit">Tiếp tục <i
                                    class="fa fa-arrow-right"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- user-login-area-end -->
<style type="text/css">
    .wrapper {
        height: 130px;
        width: 250px;
        background: #f8f8f8;
        padding: 10px;
    }

    .field {
        margin: 4px;
    }
</style>
@endsection
@section('js')
<script>
    $('#password, #re_password').on('keyup', function () {
        if ($('#password').val() == "" && $('#re_password').val() == "") {
            $('#submit-pass').prop('disabled', true);
            $('#message').hide();
        } else if ($('#password').val() == $('#re_password').val()) {
            $('#submit-pass').prop('disabled', false);
            $('#message').hide();
        } else {
            $('#submit-pass').prop('disabled', true);
            $('#message').show().html('Mật khẩu không khớp!').css('color', 'red');
        }
    });
</script>
@endsection