class SupportVisitsController < ApplicationController
	def create
  @support_visit = SupportVisit.create(support_visit_params)
end
def new
  @support_visit = SupportVisit.new
	end
	def index
	end
def show
  @support_visit = SupportVisit.new
end


private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def support_visit_params
  params.require(:support_visit).permit(:garden_picture)
end
end
