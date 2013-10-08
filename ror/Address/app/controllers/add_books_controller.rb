class AddBooksController < ApplicationController
  before_action :set_add_book, only: [:show, :edit, :update, :destroy]

  # GET /add_books
  # GET /add_books.json
  def index
    @add_books = AddBook.all
  end

  # GET /add_books/1
  # GET /add_books/1.json
  def show
  end

  # GET /add_books/new
  def new
    @add_book = AddBook.new
  end

  # GET /add_books/1/edit
  def edit
  end

  # POST /add_books
  # POST /add_books.json
  def create
    @add_book = AddBook.new(add_book_params)

    respond_to do |format|
      if @add_book.save
        format.html { redirect_to @add_book, notice: 'Add book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @add_book }
      else
        format.html { render action: 'new' }
        format.json { render json: @add_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_books/1
  # PATCH/PUT /add_books/1.json
  def update
    respond_to do |format|
      if @add_book.update(add_book_params)
        format.html { redirect_to @add_book, notice: 'Add book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @add_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_books/1
  # DELETE /add_books/1.json
  def destroy
    @add_book.destroy
    respond_to do |format|
      format.html { redirect_to add_books_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_book
      @add_book = AddBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_book_params
      params.require(:add_book).permit(:first_name, :last_name, :email, :zipcode, :fav_color)
    end
end
