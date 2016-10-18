// $ not defined --> jquery not loaded
// google search --> jquery cdn --> maybe use minified
// load jquery before jquery doc


// prefer using --> .on('click', function(){})  --> over --> .click(function(){})


// (this) will represent the event


// for readability --> separate out functions into named functions, and then call those in the $document.ready(){}
// ie:
$(document).ready(function) {
  callFunction();
  callAnotherFunction();
  andAnother();
};

function callFunction(){
  $(function stuff)
};
// etc


// get in habit of always passing (event) as argument to jquery function parameters
// is needed for things like --event.preventDefault;---


// if method is returning a jquery object, variable naming convention to prefix it with a $ (indicate you can use jquery methods on it)
// ie: $variable = $("selected thing")


// find --> over child --> protects for more (doesnt have to be a direct child, can be a grandchild)


// DOM traversal

// DOM manipulation

// event handling