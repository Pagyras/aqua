const burger = document.querySelector('.burger');
const mobileMenu = document.querySelector('#mobileMenu');
const mobileLinks = document.querySelectorAll('.mobile-menu a');

if (burger && mobileMenu) {
  burger.addEventListener('click', () => {
    const isOpen = mobileMenu.classList.toggle('is-open');
    burger.classList.toggle('is-open', isOpen);
    burger.setAttribute('aria-expanded', String(isOpen));
  });
}

mobileLinks.forEach((link) => {
  link.addEventListener('click', () => {
    if (!burger || !mobileMenu) return;
    mobileMenu.classList.remove('is-open');
    burger.classList.remove('is-open');
    burger.setAttribute('aria-expanded', 'false');
  });
});
