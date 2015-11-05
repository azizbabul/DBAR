class HomesController < ApplicationController
  def index
    if signed_in?
      redirect_to(:controller=>'members',:action=>'index')


    end
  end
end
