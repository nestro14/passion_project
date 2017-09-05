$(document).ready(function() {
  // sortByPosition();
  $("a.nav-link").click(function() {
  $( this ).toggleClass( "active" );
});
// $( ".nav-link" ).toggle(
//   function() {
//     $( this ).addClass( "active" );
//   }, function() {
//     $( this ).removeClass( "active" );
//   }
// );
  // var sortByPosition = function() {
  //   $("a").toggle(function() {
  //   $(this).addClass('active');
  // }, function() {
  //   $(this).removeClass('active');
  // });
});


//  var addClass = function () { $( ".nav-link" ).toggle(
//   function() {
//     $( this ).addClass( "active" );
//   }, function() {
//     $( this ).removeClass( "active" );
//   }
// );
// }