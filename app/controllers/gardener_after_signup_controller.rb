class GardenerAfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :garden_at_home, :garden_location

  def show
   group = Group.find(params[:group_id])
   @gardener = group.gardeners.find(params[:gardener_id])

   render_wizard
  end

end
