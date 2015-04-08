class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # segun el id que reciba  rescata el usurio
    @comments = @user.comments      # rescata el comentario de ese usuario

  end
end
