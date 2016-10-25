# came about with an attack on GitHub (homakov)
# homakov hacked the Rails GitHub account, and exploited use of update_attributes
  # switched an SSH key for his own account to one associated with the Rails GitHub account members AND the user_id of the Rails team member
# ultimately he was able to push to the rails master, and post from the future in a issue
# the immediate rails 3 fix, was to set fields as attr_accessible, which a bit of a misnomer, bc the action that you REALLY care about, is that by setting any as accessible all others automatically become INACCESSIBLE

# either done

# in class WEHN RAILS 3
class Post < ActiveRecord::Base
  attr_accessible :title, :content
  # extra fields cant be added to the chrome element inspector/dom editor
end

# in controller WHEN RAILS 4
# attr_accessible and attr_protected no longer exist, whitelisting nolonger happens in the model
# before passing params into a model in a controller, they must be wrapped in a permit
# any parameter not defined in the permit (or strengthened) -> 
# generates a "ActiveModel::ForbiddenAttributesError"
class PostController < ApplicationController
  def create
    #blahblahblah
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
    # also prevents extra/unwanted fields from being added via chrome/dom editors
  end
end

# this came from many people creating private methods in their controller like
private

def post_params
  params[:post].slice(:title, :content)
end

# this was then called when creating/updating/etc in the controller instead of the raw params[:post]
# this was generally used in addition to the attr_accesible

# Strong Params makes it so, by default - nothing is accessible for mass assignment. You are still able to assign attributes one by one though. which makes sense because you are obviously expecting those attributes to be there. 