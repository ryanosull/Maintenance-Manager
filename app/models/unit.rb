class Unit < ActiveRecord::Base


    has_many  :maintenancerequests
    belongs_to  :owner
    
    # def self.create_new_unit (pizza)
    #     Unit.create(unit_id: pizza)
    # end

    # def self.open_requests
    #     self.all.where(open_request?: true)
    # end





#
end