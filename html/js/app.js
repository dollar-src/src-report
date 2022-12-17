
dollar = {}; 

console.log('ah')
$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27: // ESC
        dollar.CloseAyarMenu();
            break;
    }
});

dollar.CloseAyarMenu = function() {
    $(".Container").css({"display":"none"});





    $.post('https://src-report/CloseMenu:NuiCallback',JSON.stringify({data: true}));
};




window.addEventListener('message', function(event) {
    eFunc = event.data
    var item = event.data
    
    if (eFunc.action == "showui") {

        $(".Container").css({"display":"block"});
        $('body').show()

    } else if (eFunc.action == "hideui") {

        $("body").fadeOut(500)
        $(".Container").css({"display":"none"});
    }
    


})



    $("#test").click(function() {
      console.log('gel')
  var x = document.getElementById("inputboxtext").value;
  var y = document.getElementById("inputboxtext2").value;

      $.post('https://src-report/src-report:client', JSON.stringify({
          id: x,
          message: y,

          
      }))
      dollar.CloseAyarMenu()
 



  })