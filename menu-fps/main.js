$(function () {
    $('.container').hide();
    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                $('.container').show();
            } else {
                $('.container').hide();
            }
        }
    })

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://menu-fps/close', JSON.stringify({}));
            $('.container').hide();
            return
        }
    };
    
})

function putton1()
{
    $.post('https://menu-fps/button1', JSON.stringify({ 
       
     }))
}

function putton2()
{
    $.post('https://menu-fps/button2', JSON.stringify({ 
       
     }))
}

function putton3()
{
    $.post('https://menu-fps/button3', JSON.stringify({ 
       
     }))
}

function putton4()
{
    $.post('https://menu-fps/button4', JSON.stringify({ 
       
     }))
}

function closemenu() {
    $.post('https://menu-fps/close', JSON.stringify({ message: null }))    //close menu
    $('.container').hide();
}
