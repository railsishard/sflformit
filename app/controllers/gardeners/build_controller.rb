class Gardeners::BuildController < ApplicationController
include Wicked::Wizard

  steps :garden_at_home, :garden_location, :garden_size_w, :garden_size_l,
        :maritial_status, :living_arrangements,:joining_details_referral,
        :joining_details_potential_growth,
        :education_levels, :employment, :employment_type,
        :earning_power, :grant, :grant_type, :grant_amount, :access_to_water, :gardening_tools,
        :gardening_tools_qualitative, :other_organizations, :other_organizations_qualitative,
        :help_received, :help_received_qualitative, :previous_experience,
        :currently_growing, :currently_growing_neg, :grown_veg_usage, :veg_bought, :veg_expenditure, :diet_food_intake, :diet_veg_intake, :diet_general_health,
        :diet_health_issues, :avatar

  def show
    #1st you retrieve the group thanks to params[:group_id]
    group = Group.find(params[:group_id])
    #2nd you get all the gardeners of this group
    @gardener= group.gardeners.find(params[:gardener_id])
    #@gardener.build_document
    render_wizard
  end

  def update
     #1st you retrieve the group thanks to params[:group_id]
      group = Group.find(params[:group_id])
    #2nd you get all the gardeners of this group
      @gardener = group.gardeners.find(params[:gardener_id])
      params[:gardener][:status] == 'active' if step == steps.last
      @gardener.update_attributes(gardener_params)
      render_wizard @gardener
  end

  def create
    group = Group.find(params[:group_id])
    @gardener = group.gardener.create
    redirect_to wizard_path(steps.first :gardener_id => @gardener.id)
  end

  private
  def gardener_params
   params.require(:gardener).permit(:garden_at_home, :garden_location, :garden_size_w, :garden_size_l,
    :maritial_status, :living_arrangements,:joining_details_referral,
    :joining_details_referral_qualitative, :joining_details_potential_growth,
       :education_levels, :education_levels_other, :employment, :employment_type,
        :earning_power, :grant, :grant_type, :grant_amount, :access_to_water, :gardening_tools,
         :gardening_tools_qualitative, :other_organizations, :other_organizations_qualitative,
          :help_received, :help_received_qualitative, :previous_experience,:currently_growing,
          :currently_growing_neg, :grown_veg_usage, :veg_bought, :veg_expenditure, :diet_food_intake, :diet_veg_intake, :diet_general_health,
          :diet_health_issues, :avatar, :resume)
  end
end
