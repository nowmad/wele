class Stakeholder < ActiveRecord::Base
	validate_presence_of :name
end
