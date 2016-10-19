//// OBJECT LITERALS ////
var meal = { 
  drink: "water",
  food: ["curry", "noodles"]
  eat: function(){
    return "nom nom nom";
  }
};
//meal is an object literal with a set of properties--> key/value pairs
//function in an object is often called a method --> is also a property
//access properties using dot notation or square brackets
  meal.drink //=> "water"
  meal[drink] //=> "water"
//use when using only once or twice
//use when simple set of data
//use when need hashlike stuff (passing options hash to ajax call)


//---------------------------------------------------------------------------------
//// CONSTRUCTOR FUNCTION ////
//always capitalize constructors
function Meal (drink, food, dessert) {
  this.drink = drink;
  this.food = food;
  this.dessert = dessert;
  this.eat = function(){
    return "nom nom nom"; //function will be defined on the the object created, itself
  }
};

//can also define on prototype
Meal.prototype.eat = function(){
  return "nom nom nom"
}; 
// preferred because can change it for all instances of constructor-created-objects
// function is found in prototype NOT in the object itself. 
// is also running code less (not each time a new object gets instantiated)-->SAVE SPACE

////CHAINING PROTOTYPES////
//ownObject --> Meal --> Consume --> Object --> null  
//(will probably never really chain prototypes unless building a framework)



//"this" will refer to 
var myMeal = new Meal("water", ["curry", "noodles"], )

//---------------------------------------------------------------------------
//filter / reduce / etc >>VS<< for loops
    //good idea to be able to demonstrate ability to use for loops
    //as always be able to understand what's going on and be able to explain it

//---------------------------------------------------------------------------
//// THIS ////
//changes frequently depending on context 
  //constuctor function --> is --> object being created
  //inside of event handler --> element that raised the event
  //changes inside of function depending on how it's called
//always console.log it!!!!!!!!!!!!