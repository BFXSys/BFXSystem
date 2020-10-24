$(function(){
    $(".inner").mousedown(function(e){
        var el = $(".inner"),os = el.offset(),dx,$span=$(".outer>span"),$filter=$(".filter-box"),_differ=$(".outer").width()-el.width();
        $(document).mousemove(function(e){
            dx = e.pageX - os.left;
            if(dx<0){
                dx=0;
            }else if(dx>_differ){
                dx=_differ;
            }
            $filter.css('width',dx);
            el.css("left",dx);
        });
        $(document).mouseup(function(e){
            $(document).off('mousemove');
            $(document).off('mouseup');
            dx = e.pageX - os.left;
            if(dx<_differ){
                dx=0;
                $span.html("滑动解锁");
            }else if(dx>=_differ){
                dx=_differ;
                var loginname = $("#loginname").val();
                var password = $("#password").val();
                if(loginname === ""){
                    alert("请输入用户名");
                    location.reload();
                }else if(password === ""){
                    alert("请输入密码");
                    location.reload();
                }else {
                    $(".outer").addClass("act");
                    $span.html("验证通过！");
                    el.html('&radic;');
                    alert("验证通过");
                }
            }
            $filter.css('width',dx);
            el.css("left",dx);
        })
    })
})