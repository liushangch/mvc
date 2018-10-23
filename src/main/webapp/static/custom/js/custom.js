$(function () {
    // initLadda();
    // 初始化重置按钮
    $("#refreshBtn").bind("click", function () {
        $("input:not(:hidden)").val("");
    });
});


//初始化按钮Ladda组件
function initLadda() {
    var dataStyle = $('.ladda-button').attr('data-style');
    if (dataStyle === undefined) {
        $('.ladda-button').attr('data-style', 'zoom-out');
    }
    Ladda.bind('.ladda-button');
}

//初始化多选、单选框iCheck组件
function initICheck() {
    $('input[type=radio],[type=chceckbox]').iCheck({
        checkboxClass: 'icheckbox_minimal-blue', // checkbox样式引用
        radioClass: 'iradio_minimal-blue', // radio样式引用
        increaseArea: '20%' // 点击区域
    });
    // $('#selectAll').on('ifChecked ifUnchecked', function (event) {
    //     if (event.type === 'ifChecked') {
    //         $('input').iCheck('check');
    //     } else {
    //         $('input').iCheck('uncheck');
    //     }
    // });
}

// 服务器端校验提示框
function openWarning(list) {
    var text = [];
    $.each(list, function (index, value) {
        text[index] = value.message;
    });
    $.toast({
        heading: '警告',
        text: text,
        showHideTransition: 'slide',
        position: 'top-right',
        hideAfter: 5000,
        icon: 'error'
    })
}