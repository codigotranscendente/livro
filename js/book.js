var imgNbr = 0;
var myVar = setInterval(myTimer, 4000);

function myTimer() {
  imgNbr = (imgNbr+1)%7;
  var caminho = 'url(resources/' + imgNbr + '.png)';
  console.log(caminho);
  $('#background-image').css('background-image', caminho);
}

$( document ).ready(function() {
  $('#background-image').css('background-image', 'url(resources/0.png)');
});

function doar(){
  $('#collapseExample').collapse("show");
}
