const addurl = () => {
  const url = location.pathname;
  if (url.includes("cooking_record")) {
    history.pushState({}, "", "#today");
  }
};

window.addEventListener("DOMContentLoaded", addurl);
