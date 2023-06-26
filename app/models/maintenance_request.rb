class MaintenanceRequest < ActiveRecord::Base

    belongs_to :unit



    # def self.open_requests
    #     self.all.where(open_request?: true)
    # end
    ######### delete me, probably    

    def self.open_maint_reqs
        self.all.where(date_closed: nil)
    end







#
end