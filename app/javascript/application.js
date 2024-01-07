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


// for adding field for prescription 
document.addEventListener('DOMContentLoaded', function () {
  // const tableBody = document.querySelector('#prescriptionTable tbody');
  const tableBody = document.querySelector('#table_body');

  // Add row dynamically on 'Add' button click
  tableBody.addEventListener('click', function (event) {
    const target = event.target;
    if (target.classList.contains('addAction')) {
      const row = target.parentNode.parentNode.cloneNode(true);
      const addActionBtn = row.querySelector('.addAction');

      row.children[0].children[0].value = target.parentNode.parentNode.children[0].children[0].value
      row.children[3].children[0].value = target.parentNode.parentNode.children[3].children[0].value
      
      addActionBtn.textContent = 'Remove';
      addActionBtn.classList.remove('addAction');
      addActionBtn.classList.add('removeAction');
      const inputs = target.parentNode.parentNode.querySelectorAll('input');
      inputs.forEach(input => {
        if (input.tagName === 'INPUT') {
          input.value = '';
        }
      });
      tableBody.insertAdjacentElement('afterbegin', row);
    }
  });

  // Remove row dynamically on 'Remove' button click
  tableBody.addEventListener('click', function (event) {
    const target = event.target;
    if (target.classList.contains('removeAction')) {
      const row = target.parentNode.parentNode;
      console.log(row)
      tableBody.removeChild(row);
    }
  });

});
//end of adding field in prescription

//start of report add
document.addEventListener('DOMContentLoaded', function () {
  // const tableBody = document.querySelector('#prescriptionTable tbody');
  const tableBody = document.querySelector('#table_body_report');

  // Add row dynamically on 'Add' button click
  tableBody.addEventListener('click', function (event) {
    const target = event.target;
    if (target.classList.contains('addReport')) {
      const row = target.parentNode.parentNode.cloneNode(true);
      const addActionBtn = row.querySelector('.addReport');

      row.children[0].children[0].value = target.parentNode.parentNode.children[0].children[0].value
      // row.children[3].children[0].value = target.parentNode.parentNode.children[3].children[0].value
      
      addActionBtn.textContent = 'Remove';
      addActionBtn.classList.remove('addReport');
      addActionBtn.classList.add('removeReport');
      // const inputs = target.parentNode.parentNode.querySelectorAll('input');
      // inputs.forEach(input => {
      //   if (input.tagName === 'INPUT') {
      //     input.value = '';
      //   }
      // });
      tableBody.insertAdjacentElement('afterbegin', row);
    }
  });

  // Remove row dynamically on 'Remove' button click
  tableBody.addEventListener('click', function (event) {
    const target = event.target;
    if (target.classList.contains('removeReport')) {
      const row = target.parentNode.parentNode;
      console.log(row)
      tableBody.removeChild(row);
    }
  });
  
});
// end of report add