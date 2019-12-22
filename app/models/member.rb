class Member < ApplicationRecord	
  validates :name,:joining_date,:phone_number, presence: true
  validates :phone_number, uniqueness: true

	has_many :match_members
	has_many :matches,through: :match_members

	scope :top_10_participant, -> { joins(:match_members).group('members.id').having('count(match_members.id) >= 10').order("members.average_score desc").limit(10) }

	def get_number_of_wins
		match_members.where(result: 1).count
	end

	def get_number_of_losses
		match_members.where(result: 0).count
	end

	def get_highest_score
		match_member = match_members.order("score DESC").first
		result = Hash.new
		if match_member
			match = match_member.match
			opponent = nil
			match.match_members.map {|mm| opponent = mm.member if mm.member_id != self.id}
			result = { location: match.location, held: match.held,score: match_member.score,name: opponent.name }
		end
		result
	end
end
