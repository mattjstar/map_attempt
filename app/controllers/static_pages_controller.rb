class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  		@micropost = current_user.microposts.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
  	  @locations = Location.all
      @json = Location.all.to_gmaps4rails
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
