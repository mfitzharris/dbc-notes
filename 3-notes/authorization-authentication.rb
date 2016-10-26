# authorization
  # what you're allowed to see/do
  # usually requires authentication
    # can't say what you're allowed to do w/out knowing who u are
  # IN SINATRA
    put 'songs/:id'
      song = Song.find(params[:id])
      if song.owner.id != current_user.id
        redirect '/login'
      else
        ...
      end
    end
  # IN RAILS
    # before action
    class SongController < WhateverItIs
      before_action :owner_only, only: [:edit] # can also take an except parameter

      def edit

      end

      private

      def owner_only
        unless something
          redirect_to login_url
        end
      end
    end

  # REAL WORLD
    # would be using gems (like cancancan ) 

# authentication 
  # login --> who are you?
  # making sure a user is who they say they are
  # IN RAILS
    # has_secure_password
      # migration needs field -> password_digest
      # user.password = "blah" & rails takes care of the rest :)
    # REAL WORLD
      # might use gem like devise 