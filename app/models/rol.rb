class Rol < ActiveRecord::Base
  attr_accessible :acronym, :name
  	def self.search(search)
		where("acronym like '%#{search}%' or name like '%#{search}%'")
	end
end
