///// first pass /////////////////////////////////////////////////////////////////
$(document).ready(function(){

  $("textarea").on("keyup", function(event){
    var input = $(this).val();
    input = input.replace(/_([a-zA-Z\s]+)_/g, '$1'.italics() )
    input = input.replace(/\*\*([a-zA-Z\s]+)\*\*/g, '$1'.bold())
    $(".result").html(input);
  });

});

/// second pass //////////////////////////////////////////////////////////////////

$(document).ready(function(){

  $("textarea").on("keyup", processInput());

});

function processInput(event){
  var input = $(this).val();
  input = input.replace(/_([a-zA-Z\s]+)_/g, '$1'.italics() )
  input = input.replace(/\*\*([a-zA-Z\s]+)\*\*/g, '$1'.bold())
  $(".result").html(input);
}

/// third pass /////////////////////////////////////////////////////////////////////

$(document).ready(function(){

  $("textarea").on("keyup", processInput());

});

function italicize(input){
  return input.replace(/_([a-zA-Z\s]+)_/g, '$1'.italics() )
}

function embolden(input){
  return input.replace(/\*\*([a-zA-Z\s]+)\*\*/g, '$1'.bold())
}

function processInput(event){
  var input = $(this).val();
  input = italicize(input);
  input = embolden(input);
  $(".result").html(input);
}

/// fourth pass ////////////////////////////////////////////////////////////////////////

$(document).ready(function(){
  var converter = new MarkdownConverter();
  $("textarea").on("keyup", processInput.bind(converter)()); //=> have to tell what this is

});

var MarkdownConverter = function(){}; //=> RUN INTO PROBLEMS WITH VAR SCOPE, AND ISSUES WITH THIS IN PROCESS INPUT FUNCTION

MarkdownConverter.prototype.italicize = function(input){
  return input.replace(/_([a-zA-Z\s]+)_/g, '$1'.italics() )
}

MarkdownConverter.prototype.embolden = function(input){
  
}return input.replace(/\*\*([a-zA-Z\s]+)\*\*/g, '$1'.bold())


function processInput(event){
  var input = $(event.target).val(); //=> since this is defined now, have to target event differently
  input = this.italicize(input);
  input = this.embolden(input);
  $(".result").html(input);
}


/// fifth pass //////////////////////////////////////////////////////////////////////

$(document).ready(function(){
  var converter = new MarkdownConverter();
  $("textarea").on("keyup", processInput.bind(converter)()); 

});

var View = {
  bindEvent: function(callback) {
    #("textarea").on("keyup", callback);
  },

  updateResult: function(data) {
    $(".result").html(data)
  }
}

var MarkdownConverter = function(){}; 

MarkdownConverter.prototype.italicize = function(input){
  return input.replace(/_([a-zA-Z\s]+)_/g, '$1'.italics() )
}

MarkdownConverter.prototype.embolden = function(input){
  return input.replace(/\*\*([a-zA-Z\s]+)\*\*/g, '$1'.bold())
}

MarkdownConverter.prototype.run = function(){
  View.bindEvent(this.processInput.bind(this))
}

function processInput(event){
  var input = $(event.target).val();
  input = this.italicize(input);
  input = this.embolden(input);
  $(".result").html(input);
}

/////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
/// note /////////////////////////////////////////////////////////////////////////

// goal of refactoring --> single named function --> small methods
// refactoring does not mean shorter

////// KEEP IN MIND THE SCOPE OF THIS --> MAY NEED TO BE BOUND!!!!!!!!!!!!!!! ////////

