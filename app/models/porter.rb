class Porter < ActiveRecord::Base
  belongs_to :turn
  attr_accessible  :name, :surname, :address, :phone,  :turn_id
  
  def self.search(search)
		where("name like '%#{search}%' or surname like '%#{search}%' or address like '%#{search}%' or phone like '%#{search}%'")
	end
	
end
