class AddTonsOfFieldsToGardeners < ActiveRecord::Migration
  def change
add_column :gardeners, :joining_details_referral, :string
add_column :gardeners, :joining_details_referral_qualitative, :string
add_column :gardeners, :joining_details_potential_growth, :string
add_column :gardeners, :education_levels, :string
add_column :gardeners, :education_levels_other, :string
add_column :gardeners, :employment, :boolean
add_column :gardeners, :employment_type, :string
add_column :gardeners, :earning_power, :string
add_column :gardeners, :grant, :boolean
add_column :gardeners, :grant_type, :string
add_column :gardeners, :grant_amount, :string
add_column :gardeners, :access_to_water, :string
add_column :gardeners, :gardening_tools, :boolean
add_column :gardeners, :gardening_tools_qualitative, :string
add_column :gardeners, :other_organizations, :boolean
add_column :gardeners, :other_organizations_qualitative, :string
add_column :gardeners, :help_received, :boolean
add_column :gardeners, :help_received_qualitative, :string
add_column :gardeners, :previous_experience, :boolean
add_column :gardeners, :previous_experience_qualitative, :string
add_column :gardeners, :currently_growing, :boolean
add_column :gardeners, :currently_growing_neg, :string
add_column :gardeners, :grown_veg_usage, :string
add_column :gardeners, :grown_veg_other_qualitative, :string
add_column :gardeners, :veg_bought, :string
add_column :gardeners, :veg_expenditure, :string
add_column :gardeners, :diet_food_intake, :integer
add_column :gardeners, :diet_veg_intake, :integer
add_column :gardeners, :diet_general_health, :string
add_column :gardeners, :diet_health_issues, :string
  end
end

