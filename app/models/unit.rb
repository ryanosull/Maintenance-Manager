class Unit < ActiveRecord::Base


    has_many  :maintenancerequests
    belongs_to  :owner
    
    # def self.create_new_unit (pizza)
    #     Unit.create(unit_id: pizza)
    # end

    def self.units_with_open_requests #will likely delete
        self.all.where(open_request?: true)
    end


    def self.use_me
        self.all.where(id: MaintenanceRequest.select(:unit_id))
    end



#testing



#
end