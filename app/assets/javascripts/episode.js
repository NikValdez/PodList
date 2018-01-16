document.addEventListener('turbolinks:load', function () {
  $("#show-episodes").click(function(){
      $(".episode-data").toggle();
  });
})
