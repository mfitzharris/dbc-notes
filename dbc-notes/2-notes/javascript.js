// inheritance

// function def in constructor vs prototype

var Fish = function() {
  this.swim = function(){

  }
}
// creates new this.swim function --> taking more memory

//VS

Fish.prototype.swim = function(){ blah }
  // uses one chunk of memory for all 'instances'--> do less work 
  // can redefine all functions more easily
  // can also always be overwritten for a single 'instance'

f = new Fish
f.swim() //--> wont find swim function in f, will go to prototype. prototypal chain

// inherit more --> by setting prototypes 
var Bass = function(){

}
Bass.prototype = Fish
// instance --> bass --> fish --> object class

//--------------------------

//'class'-like methods
// just refer to the Fish itself, so long as it doesnt depend on instance variables
Fish.swim

//------------------------

// === VS ==
// generally use triple equal
// maybe use case in "1" == 1 --> for int into string or string into int

//-----------------
typeOf(variable) //--> similar to variable.class in ruby
//----------------

// THIS
// will get link explaining from Avner

//------------------

