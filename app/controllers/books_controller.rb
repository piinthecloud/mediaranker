class BooksController < ApplicationController


  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_index_path
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_index_path
    else
      render :edit
    end

  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_index_path
    end
  end


  def upvote
    @book = Book.find(params[:id])
    if @book.votes == nil
      @book.votes = 1
    else
      @book.votes += 1
    end
    @book.save
    redirect_to request.referer
  end


  private


  def book_params
    params.require(:book).permit(:name, :creator, :description)
  end

end
