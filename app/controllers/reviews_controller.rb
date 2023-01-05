class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def edit
    @review = Review.find(params[:id])
  end

  def show
    @review = Review.find(params[:id])
  end
  
  def create
    @review = Review.new(reviews_params)
    @review.reviewer_id = current_user.id
    if @review.save
      redirect_to reviews_path, notice: 'Review was successfully created'
    else
      render json: @review.errors, status: :unprocessable_entity  
    end 
  end

  def update
      @review = Review.find(params[:id])
    if @review.update(reviews_params)
      redirect_to Review_path, notice: 'Review was successfully updated'
    else
      render :action => 'edit'
    end
  end

  def destroy
      @review = Review.find(params[:id])
      if @review.destroy
        redirect_to reviews_path, notice: 'Review was successfully destroyed'
      end
  end

  private
    def reviews_params
      params.require(:Review).permit(:book_id, :discription)
    end  
end
