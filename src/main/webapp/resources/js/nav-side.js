/*
* 侧边标签栏的切换样式
* */
$('#sideNav a').each(function(){
    if($($(this))[0].href===String(window.location))
        $(this).parent().addClass('active');
});
