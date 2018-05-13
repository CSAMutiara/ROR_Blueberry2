class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :require_rfactivity, only: [:new, :create]
  

  # GET /books
  # GET /books.json
  # GET /reports/:report_id/rfactivities/:rfactivity_id/books
  def index
    rfactivity = Rfactivity.find(params[:rfactivity_id])
    @books = rfactivity.books
    
    render json: @books.sort
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    rfactivity = Rfactivity.find(params[:rfactivity_id])
    @book = rfactivity.books.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    rfactivity = Rfactivity.find(params[:rfactivity_id])
    @book = rfactivity.books.new(book_params)
    
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :publisher, :year)
    end
   
    def require_rfactivity
      unless Rfactivity.id?
        redirect_to new_report_rfactivity_path
      end
    end
end
