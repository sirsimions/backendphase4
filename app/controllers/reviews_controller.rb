class ReviewsController < ApplicationController
    #before_action :authenticate
      # POST
      def create
        review = Review.create(review_params)
        if review
          render json: review, status: :ok
        else
          render json: {error: review.errors.full_messages}, status: :unprocessable_entity
        end
      end
      # DELETE
      def destroy
        review = Review.find_by(id: params[:id])
        if review
            review.delete
            head :no_content
        else
          render json: {error:"Review not found"}, status: :unprocessable_entity
        end
      end
      private
      # Strong params
      def review_params
        params.permit(:title, :description, :airline_id)
      end
end
4:32
class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    include ActionController::Cookies
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def render_unprocessable_entity(e)
      return render json: {errors:e.record.errors.full_messages}, status: :unprocessable_entity
    end
    def authorize
      render json: {errors: ["Not authorized"] }, status: :unauthorized unless session[:user_id]
    end
end
