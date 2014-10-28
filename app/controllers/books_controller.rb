class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show

  end

  def edit

  end

  def update

  end


  def create
    @book = Book.new(book_params)
  end

  def destroy

  end

  private

  def book_params
    params.require(:book).permit(:name, :creator, :description)
  end

end
