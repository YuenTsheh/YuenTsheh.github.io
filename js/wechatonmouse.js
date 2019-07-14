
    $('#log-wechat-darian').on('mousemove', function(ev) {
    var left = ev.clientX - 200
    var top = ev.clientY - 200
    $('#log-wechat-darian-img').css({
        top: top + 'px',
        left: left + 'px',
        display: 'block'
    })
    })
    $('#log-wechat-darian').on('mouseout', function() {
        $('#log-wechat-darian-img').css('display', 'none')
    })