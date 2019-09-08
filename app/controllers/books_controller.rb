class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index

    # per page(kaminari)
    per = 80

    # order is follows;
    order = 'group1, group2, group3, name'

    # get necessary attr only
    if @ua == 'Mobile'
      select = 'id, name, status'
    else
      select = 'id, name, status, group1, group2, group3, remark1, remark2, remark3'
    end

    # remember latest page
    if params[:page].present?
      @page = params[:page]
      session[:page] = params[:page]
    else
      @page = 1
      session[:page] = 1
    end

    # remember latest group1
    if params[:grup1].present?
      @group1 = params[:group1]
      session[:group1] = params[:group1]
    else
      @group1 = '0'
      session[:group1] = '0'
    end

    # Debug
    debug 'index', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'index', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'

    #@books = Book.all
    if @group1 != '0'
      @books = Book.select(select).where(['group1 = ?', @group1]).order(order).page(@page).per(per)
    else
      @books = Book.select(select).order(order).page(@page).per(per)
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @page = session[:page]
    @group1 = session[:group1]

    # Debug
    debug 'show', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'show', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
  end

  # GET /books/new
  def new
    @book = Book.new
    @page = session[:page]
    @group1 = session[:group1]

    # Debug
    debug 'new', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'new', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
  end

  # GET /books/1/edit
  def edit
    @page = session[:page]
    @group1 = session[:group1]

    # Debug
    debug 'edit', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'edit', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: t('common.message.created_success')}
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
        format.html { redirect_to @book, notice: t('common.message.updated_success')}
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
      format.html { redirect_to books_url, notice: t('common.message.destroyed_success')}
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
      params.require(:book).permit(:name, :desc, :status, :group1, :group2, :group3, :author, :provider, :remark1, :remark2, :remark3, :remark4, :remark5)
    end
end
