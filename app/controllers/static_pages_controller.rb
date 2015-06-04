class StaticPagesController < ApplicationController

   def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about

  end

  def contact
    if logged_in?
      @user  = current_user
      @user.inspect
      UserMailer.contact_email(@user)
    end
  end
end