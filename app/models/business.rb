class Business < ApplicationRecord
  scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}
  scope :get_random, -> { order("RANDOM()").first}
end
