class CommentsController < ApplicationController

def new
 @comment = current_user.comments.build
end


def create
 @comment = current_user.comments.build(comment_params)

	if @comment.save
		redirect_to root_path
	else
		render :new
	end
end



def comment_params
 params.require(:comment).permit(:description)
end
end
