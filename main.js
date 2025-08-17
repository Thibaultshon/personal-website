
let curPage = -1;
let text = null;
let  pageNames = null;

function updateTextBox(){
  let pageName  = window.location.pathname.split('/')[1]                    
  if (pageNames.has(pageName)){
    curPage = mod(curPage+ 1, text[pageName].length);
    document.getElementById('box-text').innerHTML = text[pageName][curPage];
  }else{
    curPage = mod(curPage+ 1, text["home"].length);
    document.getElementById('box-text').innerHTML = text["home"][curPage];

  }
}

fetch('/text-box.json?' + new Date().getTime())
  .then(response => response.json())
  .then(data => {
    text =data;
    pageNames = new Set(Object.keys(text));
    updateTextBox();
  });

function mod (n,d){
  return((n % d) + d) % d;
}

document.getElementById('right-button').addEventListener('click', ()=> {
  if (!text) return;
  updateTextBox();

});

