import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typeScript = document.querySelector('#banner-typed-text');
  if (typeScript) {
    new Typed('#banner-typed-text', {
      strings: ["Welcome", "Bienvenue", "ようこそ", "Bienvenido", "Willkommen", "Benvenuta"],
      typeSpeed: 100,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
