import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["No cocktails ideas for tonight ...", "Don't worry", "We have everything you need !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
