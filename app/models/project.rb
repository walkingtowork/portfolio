class Project < ActiveRecord::Base
  attr_accessible :description, :image_url, :is_complete, :name, :url
end
