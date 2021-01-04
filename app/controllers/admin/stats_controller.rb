class Admin::StatsController < ApplicationController
# When you create a new folder under /controllers, Rails will automatically pick that up as a module and expect you to namespace the controller accordingly.
  def index
    @post_count = Post.count
    @authors_count = Author.count
    @last_post = Post.last
  end
end

# Top-tip: The views folder for a controller module (in this case /admin) 
# expects a subfolder structure that matches the names of the controllers 
# (in this case /admin/stats).
