document.addEventListener('DOMContentLoaded', function() {
  const els = document.querySelectorAll('.load__text');
  const cb = function(entries, observer) {
    entries.forEach(entry => {
      if(entry.isIntersecting) {
        const ta = new TextAnimation(entry.target);
        ta.animate();
        observer.unobserve(entry.target);
      } else {

      }
    });
  };
  const options = {
    root: null,
    rootMargin: "0px",
    threshold: 0
  };
  const io = new IntersectionObserver(cb, options);
  els.forEach(el => io.observe(el));
});

class TextAnimation {
  constructor(el) {
    this.DOM = {};
    this.DOM.el = el instanceof HTMLElement ? el : document.querySelector(el);
    this.chars = this.DOM.el.innerHTML.trim().split("");
    this.DOM.el.innerHTML = this._splitText();
  }
  _splitText() {
    return this.chars.reduce((acc, curr) => {
      curr = curr.replace(/\s+/, '&nbsp;');
      return `${acc}<span class="char">${curr}</span>`;
    }, "");
  }
  animate() {
    this.DOM.el.classList.toggle('inview');
  }
}

window.addEventListener('load', function() {
  const loader = document.querySelector('.load');
  const loaderOpacity = function() {
    loader.style.opacity = 0;
  }
  const loaderDisplay = function() {
    loader.style.display = 'none';
  }
  setTimeout(loaderOpacity, 2000);
  setTimeout(loaderDisplay, 3000);
});
