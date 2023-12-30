// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"


document.addEventListener('DOMContentLoaded', () => {
  const showMoreButton = document.getElementById('show_more_btn');
  const hiddenElements = document.querySelectorAll('.hidden');

  showMoreButton.addEventListener('click', () => {
    hiddenElements.forEach(
      function(elem){
        elem.style.display = 'block';
      });
  });

});