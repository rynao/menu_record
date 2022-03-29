const firstRating = () => {
  const stars = document.getElementsByClassName("star");
  const rating_form = document.getElementById("rating_form");
  for (let i = 0; i < stars.length; i++) {
    stars[i].addEventListener("click", function () {
      countStars = starCount(stars);
      num = this.dataset.star;
      if (num < countStars) {
        for (let i = num; i < 5; i++) {
          stars[i].textContent = "☆";
        }
      } else if (num > countStars) {
        for (let i = 0; i < num; i++) {
          stars[i].textContent = "★";
        }
      }
      rating_form.value = starCount(stars);
    });
  }

  function starCount(stars) {
    let starNum = 0;
    for (let i = 0; i < stars.length; i++) {
      if (stars[i].textContent === "★") {
        starNum += 1;
      }
    }
    return starNum;
  }
};

window.addEventListener("load", firstRating);
