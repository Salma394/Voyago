const availableKeywords = [
  'Top destination',
  'City breaks',
  'Adventure',
  'Tokyo',
  'Cairo',
];

const resultsBox = document.querySelector('.result-box');
const inputBox = document.getElementById('search-input');

inputBox.addEventListener('input', function() {
  let input = inputBox.value.toLowerCase();
  let result = availableKeywords.filter((keyword) => keyword.toLowerCase().startsWith(input));
  display(result);
});

function display(result) {
  let content = '';
  if (result.length > 0) {
    content = result.map((list) => {
      return '<li onclick="selectInput(this)">' + list + '</li>';
    }).join('');
  }
  resultsBox.innerHTML = '<ul>' + content + '</ul>';
}

function selectInput(list) {
  inputBox.value = list.innerHTML;
  resultsBox.innerHTML = '';
}
