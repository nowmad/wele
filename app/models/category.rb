class Category < ActiveRecord::Base
  belongs_to :father, class_name: 'Category'
end
