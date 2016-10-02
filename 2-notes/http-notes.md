## Web applications
*built using http protoca
  * http clients - 
    * figure out how to build a web req
  * http servers (browser, or programming language - 
    * JS to make http/ajax requests, Ruby can make them too)
* request / response
  * just text sent over the internet
  * request
    * http method (GET/POST/ETC) 
    * followed by a path
    * language that client knows how to speak
    * line break then followed by a body
* sinatra
  * dsl (domain specific language) specifically built for Web languages (rspec is another example of this kind of specific language)
  * matching request type & path to a block of code that can be executed
  * method + route
    * match http VERB to the route it's going to
  * params
    * use for getting info from a form
    * or from query parameters (part of the url)
      * route with key for accessing the value
  * response objects
  * request objects

## Skeleton
*config.ru file 
  * requires environment.rb
    * reqs gems (uri, pathname, active_record, logger, sinatra, sinatra reloader, erb)
    * set constants
    * set root
    * set session secret
    * tell sinatra where views can be found (if not in default views directory)
    * load code in respective folders (controllers, helpers, etc)
    * require database
      * load models directory
  * set app_file
  * run Sinatra::Application
* rakefile
  * be rake -T (to see what's available to run from rakefile)
