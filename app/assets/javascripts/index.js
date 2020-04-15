$(document).ready(function () {
  $(`#likePost`).click(function () {
    console.log("hello world!");
    let innerClass = $(".fa-heart").attr("class");
    if (innerClass === "fa fa-heart unlike fa-2x") {
      $(".fa-heart").removeClass().addClass("fa fa-heart like fa-2x");
      let count = $(".like-count").html().split(" ")[0];
      let countInt = parseInt(count);
      $(".like-count").html(`${countInt + 1} Likes`);
    } else {
      $(".fa-heart").removeClass().addClass("fa fa-heart unlike fa-2x");
      let count = $(".like-count").html().split(" ")[0];
      let countInt = parseInt(count);
      $(".like-count").html(`${countInt - 1} Likes`);
    }
  });
});
