class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:comment, :user_id, :service_id)
    end

end
