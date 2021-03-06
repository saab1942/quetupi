class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :followings
	 has_many :followed_users, 
    through: :followings, 
    source: :following_user  #  esto seria en cierta manera el tipo que quiero que devuelva

  has_many :comments

  def following?(following_user) #el signo de pregunta es parte del nombre 
    followings.where(following_user_id: following_user.id).first
   # esto devuelve verdadero o falso se puede hacer con if tambien
  end

  def mostrar_email
    puts "El nombre es: #{email}"
  end

end
