const sortMenu = () => {
  const target = document.getElementById("sort-form");
  target.addEventListener("change", function () {
    console.log(this.value);
    const params = `sort=${this.value}`;
    const url = "/menus/sort?" + params;
    const XHR = new XMLHttpRequest();
    XHR.open("GET", url, true);
    XHR.responseType = "json";
    XHR.send();
    XHR.onload = () => {
      console.log(XHR.response.menus);
    };
  });
};

window.addEventListener("load", sortMenu);
