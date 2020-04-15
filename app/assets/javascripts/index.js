$(document).ready(function () {
  $("#heart").click(function () {
    let innerClass = $("#heart").attr("class");
    if (innerClass === "fa fa-heart unlike fa-2x") {
      $("#heart").removeClass().addClass("fa fa-heart like fa-2x");
      let count = $("#like-count").html().split(" ")[0];
      let countInt = parseInt(count);
      $("#like-count").html(`${countInt + 1} Likes`);
    } else {
      $("#heart").removeClass().addClass("fa fa-heart unlike fa-2x");
      let count = $("#like-count").html().split(" ")[0];
      let countInt = parseInt(count);
      $("#like-count").html(`${countInt - 1} Likes`);
    }
  });
});
