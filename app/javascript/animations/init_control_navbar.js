const initControlNavbar = () => {
  const burger = document.querySelector('.burger-menu i')
  const navbar = document.querySelector('.nav-grab')
  burger.addEventListener('click', () => {
    console.log("clikc")
    navbar.classList.toggle('navbar');
    navbar.classList.toggle('navbar-show');
    burger.classList.toggle('fa-bars')
    burger.classList.toggle('fa-times')
    document.querySelector('.reded').classList.toggle('transoshi')
  });
};

export { initControlNavbar };
