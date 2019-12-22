
class Match < ApplicationRecord
	has_many :match_members
	has_many :members,through: :match_members
end
