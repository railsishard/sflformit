class SupportVisit < ActiveRecord::Base
  has_attached_file :suport_visits, :garden_picture => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"


end
