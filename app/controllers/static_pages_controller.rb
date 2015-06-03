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
  @user = current_user
  @user.send_contact_email
   flash[:info] = "Thanks for contacting us."
  end
end