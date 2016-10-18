//////event delegation//////

// event listeners can only be attached to things that existed at the beginning load of the page
//must listen to a parent or ancestor of the thing

//----------------------------------

//////partials///////

// - good for DRYing up code 
  // - errors 
  // - in response to AJAX reqs --> updating small slices of page's HTML
  // - huge mega-template to split into smaller / easier to read pages (like splitting up a function/method into smaller parts)

// sample code of using partial in route (ruby)
get '/errors' do
  @errors = ["blahblah", "blahblah"]
  erb :'/partials/_errors', layout: false // - layout: false will tell sinatra that it's a partial
      locals: { key/localvariable: value }  // - can send stuff that don't have to have @ instance vars, locals hash can be sent to erb
end 
//- corresponding ajax/js <-- doesnt care where the response is coming from as long as it can read it as plain html
$(document).ready(function(){
  $.ajax({
    url: '/errors'
  })
  .done(dunction(response){
    $("#error_div").append(response); //javascript is reading already embedded ruby--> is a html string
  })
})


//-------------------------------

////////// VISUALIZING THE BACK AND FORTH BTWN THE CLIENT AND THE SERVER ///////////////////////////////

//      SERVER                            |     CLIENT (browser/js)
//-------------------------------------------------------------------------------------------------------
// get '/questions/:id'            <---   |   GET / questions/32 <--- url
//    generates @-> erb :/questions/show->| --> html-->  rendered pretty :)
//-------------------------------------------------------------------------------------------------------
// post '/questions/:id/votes' <--------- | $.ajax POST /questions/32/votes <-- clicked button
//  if request.xhr? -->generate erb ----> | -> .done(function(response){ $(#button).appendTo(response)})
//--------------------------------------------------------------------------------------------------------
// <----- <---- parse request <---------  | <----- <----- always starts on client
// ---> generate response ----------> --> | ---> do something with the response 
//                                        | <-------- AND ON AND ON 