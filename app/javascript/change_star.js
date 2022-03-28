const changeStar = () => {
  const stars = document.getElementsByClassName("star");
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
  // const starMouseout = () => {
  //   this.value = "☆";
  // };

  // stars.addEventListener("click", starMouseover);
  // stars.addEventListener("mouseout", starMouseout);

  // for (let i = 0; i < stars.length; i++) {
  //   stars[i].addEventListener("click", starMouseover);
  //   stars[i].addEventListener("mouseout", starMouseout);
  // }
};

window.addEventListener("load", changeStar);
