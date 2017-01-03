# shotgun turning into zombie
  # command line --> ps ax --> shows all running programs
  # PS AX | grep "shotgun"
    # number blahblah blahblah program
    # process id
    # kill [process id] 
    # REALLY DEAD --> kill -9 [process id]
    # above will 

 # git
  # databases
  # merge / rebase

  # postgres and sinatra are separate (automatically postgres is running locally)
  # sinatra is divorced from files 
  # this is why u use seeds

# helpers do end --> is okay (dont need to do modules unless more test coverage)
  # available in controllers and views
  # verify user is logged in
  # who the current user is
  # extract certain infomration
  # get current user
    # user model --> vs --> helper
    # session is controller stuff. model doesnt know its in a web app
    def current_user 
      User.find_by(id: session[:user_id])
        # find_by bc find_by will return nil instead of blowing up
    end
      # inefficient bc have to run computation/db everytime its called

    def current_user
      @user = @user ||= User.find_by(id: session[:user_id])
    end
      # not gonna user @user but lets it persist for method scope each times its called

    get '/one' do
      @user = 1
    end

    get '/two' do 
      puts @user #--> not actually gonna stick around so will p nil, vars are cleared when route finishes running
    end

# can links do post
  # no --> do form with button and style to look like button 
  # shouldnt change data thru a get request --> should be read only 

# idempotent ---> get request should be able to do 

# sessions
  # setcookie_rack_session = lkajdflkajdlkhasdg
  # cookie is sent back and forth. not putting stuff in cookie directly
  # session[:user_id] = 6 <---- gets encrypted! ---> jasldkjlakdshfdlkhasjdf
  # passing a lockbox back and forth (sinatra decrypts it when it has it)
  # security risk --> cookie hijacking

# partials
  # repurposing parts of erb code