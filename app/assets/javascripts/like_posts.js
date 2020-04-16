
$(function(){
// jquery loaded
  $(".post-like").on("click", function(){
    var post_id = $(this).data('id');

    $.ajax({
      url: "/posts/like_post/"+post_id,
      method: "POST"
    }).done(function(response){
        console.log(response)
    })
  })
});
