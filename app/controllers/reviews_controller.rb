class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def all
    @reviews = Review.where(book_id: params[:id])
  end

  def new
    @review = Review.new
    @book = Book.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def show
    @review = Review.find(params[:id])
    @id = @review.book_id
    @book = @review.book
  end
  
  def create
    @review = Review.new(reviews_params)
    @review.reviewer_id = current_user.id
    if @review.save
      redirect_to review_path(@review), notice: 'Review was successfully created'
    else
      render :new, status: :unprocessable_entity  
    end 
  end

  def update
      @review = Review.find(params[:id])
    if @review.update(reviews_params)
      redirect_to review_path(@review), notice: 'Review was successfully updated'
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
      params.require(:review).permit(:book_id, :discription)
    end  
end
