const initControlNavbar = () => {
  const burger = document.querySelector('.burger-menu i')
  const navbar = document.querySelector('.nav-grab')
  burger.addEventListener('click', () => {
    console.log("clikc")
    navbar.classList.toggle('navbar');
    navbar.classList.toggle('navbar-show');
  });
};

export { initControlNavbar };
