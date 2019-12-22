class DashboardController < ApplicationController
  def index
  	@top_participants = Member.top_10_participant
  end
end
