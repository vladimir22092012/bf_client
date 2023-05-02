;function SmsApp(phone, success_callback, _options)
{
    var app = this;

    app.code;
    app.phone = phone;
    app.success_callback = success_callback;

    app.sms_sent = 0;
    app.sms_timer;
    app.$modal;

    app.options = $.extend({
        button_name: 'Продолжить',
        modal: false,
        registration: 0
    }, _options);

    _init = function(){

        _create_modal();

        _init_repeat_sms();
        _init_confirm_sms();

        _send_sms(1);
    };

    var _send_sms = function(via_call = 0){

        $.ajax({
            url: 'ajax/sms_code.php',
            data: {
                action: 'send',
                phone: app.phone,
                via_call: via_call,
                registration: app.options.registration
            },
            success: function(resp){
                if (!!resp.error)
                {
                    if (resp.error == 'sms_time')
                        _set_timer(resp.time_left);
                    else
                        console.log(resp);
                }
                else
                {
                    _set_timer(resp.time_left);
                    app.sms_sent = 1;

                    if (!!via_call && !!resp.aero_call_id)
                    {
                        setTimeout(function(){
                            $.ajax({
                                url: 'ajax/sms_code.php',
                                data: {
                                    action: 'check_aero_status',
                                    phone: app.phone,
                                    aero_call_id: resp.aero_call_id,
                                    via_call: via_call,
                                },
                            })
                        }, 60000);
                    }

                    if (!!resp.developer_code)
                        $('.js-sms-code').val(resp.developer_code).change();
                }
            }
        });

    };

    var _check_sms = function(){
        app.code = $('.js-sms-code').val();
        var _data = {
            action: 'check',
            phone: app.phone,
            code: app.code
        };
        $.ajax({
            url: 'ajax/sms_code.php',
            data: _data,
            beforeSend: function(){
            },
            success: function(resp){
                if (resp.success)
                {
                    $('.js-sms-error').html('').hide();
                    app.success_callback(app.code);
                    $('.js-sms-code-wrap').removeClass('-error').addClass('-ok');
                    try {
                        ym(88054135,'reachGoal','accept_phone')
                    } catch (e) {
                        console.log(e)
                    }
                }
                else
                {
                    // код не совпадает
                    $('.js-sms-error').html('Код не совпадает').show();
                    $('.js-sms-code-wrap').removeClass('-ok').addClass('-error')
                }
            }

        });

    };

    var _set_timer = function(_seconds){
        clearInterval(app.sms_timer);

        app.sms_timer = setInterval(function(){
            _seconds--;
            if (_seconds > 0)
            {
                $('.js-sms-timer').text(_seconds+'сек');
                $('.js-sms-repeat').addClass('disable');
            }
            else
            {
                $('.js-sms-timer').text('');
                $('.js-sms-repeat').removeClass('disable');
                clearInterval(app.sms_timer);
            }
        }, 1000);

    };

    var _init_repeat_sms = function(){
        $('.js-sms-repeat').click(function(e){
            e.preventDefault();
            setTimeout(() => {
                if (!$(this).hasClass('disable')) {
                    _send_sms();
                    $('#wasSent').text(' было отправлено сообщение с кодом подтверждения');
                    $('#enterCode').text('Введите код из СМС');
                    $('#sendAgain').text('Отправить еще раз');

                    //"сейчас поступит звонок"
                    //"введите 4 последние цифры номера"
                    //"Получить код по смс"
                }
            }, 500);

        });
    };

    var _init_confirm_sms = function(){
        $('.js-sms-confirm').click(function(e){
            e.preventDefault();
            _check_sms();
        });
    };


    var _create_modal = function(){

            app.$modal = $('#sms_code_modal');
            app.$modal.html('');

            //var _tpl = '<div>На Ваш номер телефона <div><strong>'+app.phone+'</strong></div> <div id="wasSent">было отправлено сообщение с кодом подтверждения</div></div>';
            var _tpl = '<div>На Ваш номер телефона <div><strong>'+app.phone+'</strong></div> <div id="wasSent">сейчас поступит звонок</div></div>';
            _tpl += '<div class="form-group form-phone js-sms-code-wrap">';
            //_tpl += '<span class="phone_info -fs-14" id="enterCode">Введите код из СМС</span>';
            _tpl += '<span class="phone_info -fs-14" id="enterCode">Прослушайте код</span>';
            _tpl += '<input type="text" name="" autocomplete="one-time-code" class="form-control -fs-18 -gil-m js-mask-sms js-sms-code" value="">';
            _tpl += '<div class="error_text js-sms-error" style="display:none">Код не совпадает</div>';
            //_tpl += '<a href="javascript:void(0);" class="js-sms-repeat sms-repeat"><div id="sendAgain">Отправить еще раз</div> <span class="js-sms-timer"></span></a>';
            _tpl += '<a href="javascript:void(0);" class="js-sms-repeat sms-repeat"><div id="sendAgain">Получить код по СМС</div> <span class="js-sms-timer"></span></a>';
            _tpl += '</div>';
            _tpl += '<a href="#" class="btn btn-secondary -fs-20 -fullwidth js-sms-confirm">'+app.options.button_name+'</a>';

            app.$modal.html(_tpl);

            $.fancybox.open({
                src: '#sms_code_modal',
                modal: app.options.modal
            });
        }

    ;(function(){
    _init();

    return app;
})();
}