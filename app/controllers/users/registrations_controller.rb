class Users::RegistrationsController < Devise::RegistrationsController
   
    def create
        super do |resource|
            if params[:plan]
                resource.plan_id = params[:plan]
                if resource.pan_id == 2
                    resource.save_with_payment
                else
                    resouce.save
                end
            end
        end
    end
   
end