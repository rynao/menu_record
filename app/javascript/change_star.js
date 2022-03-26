const changeStar = () => {
  const stars = document.getElementsByClassName("star");
  for (let i = 0; i < stars.length; i++) {
    stars[i].addEventListener("click", function () {
      if (this.textContent === "☆") {
        this.textContent = "★";
      } else {
        this.textContent = "☆";
      }
    });
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
