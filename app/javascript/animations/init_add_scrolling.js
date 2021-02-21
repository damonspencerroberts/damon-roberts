const initAddScrolling = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 75) {
        navbar.classList.add('nav-scroll-down')
      } else {
        navbar.classList.remove('nav-scroll-down')
      }
    });
  }
}

export { initAddScrolling };
