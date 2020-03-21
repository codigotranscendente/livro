$(function() {
  $('.pop').on('click', function() {
    $('.imagepreview').attr('src', $(this).find('img').attr('src'));
    $('#imagemodal').modal('show');   
  });		
});

function copyDivToClipboard(containerid) {
  var range = document.createRange();
  range.selectNode(document.getElementById(containerid));
  window.getSelection().removeAllRanges(); // clear current selection
  window.getSelection().addRange(range); // to select text
  document.execCommand("copy");
  window.getSelection().removeAllRanges();// to deselect
}


$("#menu-toggle").click(function(e) {
  e.preventDefault();
   var isIE11 = !!navigator.userAgent.match(/Trident.*rv\:11\./);
   //⇇
   //⇉
     $("#menu-toggle").html($("#menu-toggle").text() == '⇉MENU⇉' ? "&#8647;<br>M<br>E<br>N<br>U<br>&#8647;" : "&#8649;<br>M<br>E<br>N<br>U<br>&#8649;");
     $("#wrapper").toggleClass("toggled");
     $("#menu-toggle").toggleClass("toggled");
 
     if(isIE11){
           if($("#wrapper").hasClass("toggled")){
       $('#sidebar-wrapper').css("margin-left", "-268px")
     } else {
       $('#sidebar-wrapper').css("margin-left", "-250px")	
           }	 
   }
   });
   
 
   $("#jsSketch").click(function(e) {
     e.preventDefault();
       $("#placeHolder").html("<div class=\"content-fluid\">" +
                   "<main role=\"main\" class=\"flex-shrink-0\">" +
                   "<div id=\"sketch-holder\">" +
                   "TESTE" + 
                   "</div>" +
                   "</main>" +
                   "</div>");
        });
 
        $("#pdeSketch").click(function(e) {
       e.preventDefault();
         $("#placeHolder").html("<div class=\"content-fluid\">" + "<main role=\"main\" class=\"flex-shrink-0\">" + "TESTE" + "</div>" + "</div>");
          });