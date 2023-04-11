let availableKeywords = [
    'Top destination',
    'Bora Bora',
    'City breaks',
    'Adventure',
    'Holiday',
    'Where can I go in the winter',
    'When is the best time to travel',
    'Recommendations',
    'Recommended hotel',
    'Activities',
    'Resort',
    'Mexico',

];
// suggested search terms for search bar

const resultsBox = document.querySelector(".result-box");
const inputBox = document.getElementById("input-box");

inputBox.onkeyup = function(){
    let result = [];
    let input = inputBox.value;
    if(input.length){
        result = availableKeywords.filter
        ((keyword)=>{
          keyword.includes(input);
           return keyword.toLowerCase().includes(input.toLowerCase());
        });
        console.log(result);
    }
    display(result);

    if(!result.length){
        resultsBox.innerHTML = '';
    }
}
// when you type anything in input box, then the condition statement will be executed
// 
function display(result){
    const content = result.map((list)=>{
        return "<li onclick=selectInput(this)>" + list + "</li>";
    });

    resultsBox.innerHTML = "<ul>" + content.join('') + "</ul>";
}
//  line 35 is to remove random commas that come up in suggested searches
// second conditional statement is to remove horizontal line that appears under search bar

function selectInput(list){
    inputBox.value = list.innerHTML;
    resultsBox.innerHTML = '';
}
// hides other search results when user writes a word that should only bring up one result 