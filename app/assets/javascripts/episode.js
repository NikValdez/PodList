document.addEventListener('turbolinks:load', function () {
  $("#show-episodes").click(function(){
      $(".episode-data").show();
  });

  $('#show-episodes').click(function (){
      $(this).hide();
     }
);

  drake = dragula([left1, right1]);
  var leftList = document.querySelector('#left1');
  var rightList = document.querySelector('#right1');
  var list = document.querySelectorAll('#right1 li, #left1 li');
  for (var i = 0; i < list.length; i++) {
    list[i].addEventListener('click', function(){
        if (this.parentNode.id == 'right1') {
          leftList.appendChild(this);
        } else {
          rightList.appendChild(this);
        }
    });
  }
})
