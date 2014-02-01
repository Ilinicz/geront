class VisitorsController < ApplicationController

  def new
  	@posts = Post.all.sample(3)
  end

end
