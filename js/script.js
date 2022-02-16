// 'use strict';

/* flickity */

const elem = document.querySelector('.main-carousel');
const flkty =  new Flickity(elem, {
  cellAlign: 'center',
  contain: true,
  wrapAround: true,
  watchCSS: true
});

/* slid */
class mobileMenu{
  constructor() {
    this.DOM = {};
    this.DOM.btn = document.querySelector('.header__toggle');
    this.DOM.nav = document.querySelector('.header__menu');
    this.eventType = this._getEventType();
    this._addEvent();
  }
  
  _getEventType() {
    return window.ontouchstart ? 'touchstart': 'click';
  }
  _toggle() {
    this.DOM.nav.classList.toggle('active');
    this.DOM.btn.classList.toggle('active')
  }
  _addEvent() {
    this.DOM.btn.addEventListener(this.eventType, this._toggle.bind(this));
  }
}

new mobileMenu();

/* smooth scroll */
const smoothScrollTrigger = document.querySelectorAll('a[href^="#"]');
for(let i = 0; i < smoothScrollTrigger.length; i++) {
  smoothScrollTrigger[i].addEventListener('click', (e) => {
    e.preventDefault();
    let href = smoothScrollTrigger[i].getAttribute('href');
    let targetElement = document.getElementById(href.replace('#', ''));
    const rect = targetElement.getBoundingClientRect().top;
    const offset = window.pageYOffset;
    const gap = 60;
    const target = rect + offset - gap;
    window.scrollTo({
      top: target,
      behavior: 'smooth',
    });
  });
}

/* to top page */
// 表示非表示
const px_change = 100;
window.addEventListener('scroll', function(e) {
  const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
  if(scrollTop > px_change) {
    document.querySelector('.toTopPage').classList.add("fadein");
  } else {
    document.querySelector('.toTopPage').classList.remove("fadein");
  }
});
// スムーススクロール
const toTopPage = document.querySelector('.toTopPage');
toTopPage.addEventListener('click', function() {
  window.scrollTo({
    top: 0,
    behavior: "smooth",
  });
});

/* scroll anime */
// document.addEventListener('DOMContentLoaded', () => {
//   const cb = function(el, isIntersecting) {
//     if(isIntersecting) {
//       el.classList.add('inview');
//     }
//   }
//   const so = new ScrollObserver('.cover-slide', cb);
//   const so2 = new ScrollObserver('.bg-slide', cb);
// });


window.onload = function() {
  const main = new Main();
};
// document.addEventListener('DOMContentLoaded', function() {
//   const main = new Main();
// });

class Main {
  constructor() {
    this._observers = [];
    this._scrollInit();
  }

  set observers(val) {
    this._observers.push(val);
  }
  get observers() {
    return this._observers;
  }

  // _init() {
  //   package.on('done', this._paceDone.bind(this));
  // }

  // _paceDone() {
  //   this._scrollInit();
  // }

  _inviewAnimation(el, inview) {
    if(inview) {
      el.classList.add('inview');
    } else {
      el.classList.remove('inview');
    }
  }

  // _destroyObservers() {
  //   this.observers.forEach(ob => {
  //     ob.destroy();
  //   });
  // }

  // destroy() {
  //   this._destroyObservers();
  // }

  _scrollInit() {
    this.observers = new ScrollObserver('.cover-slide', this._inviewAnimation);
    this.observers = new ScrollObserver('.bg-slide', this._inviewAnimation);
  }
}