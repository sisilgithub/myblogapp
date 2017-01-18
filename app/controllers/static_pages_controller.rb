class StaticPagesController < ApplicationController
  def home
  	@latest_posts= Micropost.all
  end

  def contact_us
  	@latest_posts= Micropost.all
  end

  def about_us
  	@latest_posts= Micropost.all
  end
end
