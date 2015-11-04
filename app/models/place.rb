class Place < ActiveRecord::Base
	validates_presence_of :name
	belongs_to :creator, class_name: "User"
end
