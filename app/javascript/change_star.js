const changeStar = () => {
  const stars = document.getElementsByClassName("star");
  const menuId = document.getElementById("menu_id").value;
  const token = document.getElementsByName("csrf-token")[0].content;
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
      countStars = starCount(stars);
      console.log(countStars);
      const params = `id=${menuId}&rate=${countStars}`;
      const url = `/ratings?${params}`;
      console.log(url);
      const XHR = new XMLHttpRequest();
      XHR.open("POST", url, true);
      XHR.setRequestHeader(
        "content-type",
        "application/x-www-form-urlencoded;charset=UTF-8"
      );
      XHR.setRequestHeader("X-CSRF-Token", token);
      XHR.send();
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
