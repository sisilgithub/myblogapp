class StaticPagesController < ApplicationController
  def home
  	@latest_posts= Post.all
  end

  def contact_us
  	@latest_posts= Post.all
  end

  def about_us
  	@latest_posts= Post.all
  end
end
