document.addEventListener('DOMContentLoaded', function() {
  const el = document.querySelector('.load__text');
  const str = el.innerHTML.trim().split("");

  el.innerHTML = str.reduce((acc, curr) => {
    curr = curr.replace(/\/s+/, '&nbsp;');
    return `${acc}<span class="char">${curr}</span>`;
  }, "");
});


// window.addEventListener('load', function() {
//   setInterval(loaded, 2000);
// });

// function loaded() {
//   const loader = document.querySelector('.load');
//   loader.classList.add('loaded');
// }

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
