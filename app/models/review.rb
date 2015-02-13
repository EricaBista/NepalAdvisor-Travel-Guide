class Review < ActiveRecord::Base
	 validates :user_id, presence: true
  has_many :users
  belongs_to :item
  before_save :add_user_session


  def add_user_session
  	   #self.user_id= @current_user
  	   #puts @current_user.inspect
  end
end
