# class ApplicationController < ActionController::Base
#     include ActionController::Cookies
#     wrap_parameters format: []
#     skip_before_action :verify_authenticity_token
#     rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
#     rescue_from ActiveRecord::RecordNotFound, with: :no_records_found 
    

#     private 

#     def no_records
#         render json: {errors: "No records found!"}, status: :not_found
#     end 

#     def render_unprocessable_entity(invalid)
#         render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
#     end 
# end
class ApplicationController < ActionController::Base
    include ActionController::Cookies
    wrap_parameters format: []
  
    skip_before_action :verify_authenticity_token
  
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_no_records_found
  
    private
  
    def render_no_records_found
      render json: { errors: "No records found!" }, status: :not_found
    end
  
    def render_unprocessable_entity(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
  end
  