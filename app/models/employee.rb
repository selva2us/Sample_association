class Employee < ActiveRecord::Base
  attr_accessible :manager_id, :name
   has_many :employee_list, class_name: "Employee", foreign_key: "manager_id" 
   belongs_to :manager, class_name: "Employee"
end
