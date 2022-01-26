window.onload = function () {
  const url = location.pathname;
  if (url.includes("cooking_records")) {
    location.hash = "today";
  }
};
