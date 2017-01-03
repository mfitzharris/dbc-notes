### CRUD / Sinatra workflow ###
# anonymous blog as example

# start by thinking about models and migrations
  # draw a schema
    # entries table
      # title, body
    # tags table
      # name
    # join table (relationship is many-to-many)
      # first pass is always to name it via the other tables --> but this makes it harder to conceptualize. think of it by an action that happened to make this discrete event occur
      # THUS! --> table name = tagging or categorization
        #entry_id, tag_id
  # migrations
  # AR model
    # declare associations

# wireframe the website (from perspective of user)
  # want to see list of entries (draw this)
    # what do these look like? (links)
    # does create entry live here?
      # what does that page look like - 
        # what does submitting that lead to (itself)
  # individual entry page (linked to by above)
    # see tags (if click on those)
    # edit link (with pre populated fields)
      # maybe delete lives there too
        # leads back to main page
      # submit leads back to self
  # entries by tag (linked to by above)


# ROUTES 
# then start labeling that wireframe with routes
  # pages --> 
    # GET routes for all pages
      # get '/entries'
      # get '/entries/:id'
      # get '/tags/:id'
      # get '/entries/:id/edit'
      # get '/entries/new'
    # think about the 'invisible' actions
      # POST
        # post '/entries'
        # put '/entries/:id'
        # delete '/entries/:id'

# possibly split those ^ into folders/files (entries/tags/index)

# VIEWS
  # every rectangle in the wireframe --> template
  # entries folder
    # index --> responsible for listing everything
    # show --> responsible for showing an individual one
    # edit --> responsibel for editing
    # new --> responsible for creating new one (could be named create)
  # tags folder
    # index (not mentioned above) --> show all tags
    # show --> responsible for showing by individual tag

# DO ALL THIS BEFORE ACTUALLY CODING (LOTS OF WIREFRAMED CODE SKELETONS/BLANK FILES)
  