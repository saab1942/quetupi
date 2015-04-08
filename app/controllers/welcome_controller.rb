class WelcomeController < ApplicationController
  def index

		#if current_user #tener cuidado, esto da error si el usuario no esta logeado
         @comments = Comment.order("created_at desc") 
        

        # end
	end
end
