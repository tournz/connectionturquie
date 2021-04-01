const myFunction = () => {
  const navbar = document.querySelector(".navbar");
  const sticky = navbar.offsetTop;
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky");
  } else {
    navbar.classList.remove("sticky");
  }
}

export { myFunction };
