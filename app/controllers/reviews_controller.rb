class ReviewsController < ApplicationController
    def create
      @review = Review.new(review_params)
      @dress = Dress.find(params[:dress_id])
      @review.dress = @dress
      @review.user = current_user
      if @review.save
        redirect_to dress_path(@dress)
      else
        render 'dresses/show', status: :unprocessable_entity
      end
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to dress_path(@review.dress)
    end

    private

    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
