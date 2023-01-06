class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def book
     @books = current_user.books
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(books_params)
    @book.writer_id = current_user.id
    if @book.save
      redirect_to your_books_path, notice: 'Book was successfully created'
    else
      render json: @book.errors, status: :unprocessable_entity  
    end 
  end

  def update
      @book = Book.find(params[:id])
    if @book.update(books_params)
      redirect_to book_path, notice: 'Book was successfully updated'
    else
      render :action => 'edit'
    end
  end

  def destroy
      @book = Book.find(params[:id])
      if @book.destroy
        redirect_to books_path, notice: 'Book was successfully destroyed'
      end
  end

  private
    def books_params
      params.require(:book).permit(:book_name, :category)
    end
end