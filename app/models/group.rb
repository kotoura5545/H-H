class Group < ApplicationRecord

	has_many :g_characters
	has_many :characters, through: :g_characters

end
