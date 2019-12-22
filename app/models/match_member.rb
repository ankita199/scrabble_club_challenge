class MatchMember < ApplicationRecord
	enum result: [:loose,:win]

	belongs_to :match
	belongs_to :member

	after_save :calculate_average_score

	def calculate_average_score
		average_score = member.match_members.average(:score).round(2)
		self.member.update_attribute(:average_score,average_score)
	end
end