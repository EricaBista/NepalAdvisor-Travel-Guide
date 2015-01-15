class Category < ActiveRecord::Base
	validates :Name, presence: true
	validates :Description, presence: true
	has_many :items
end
