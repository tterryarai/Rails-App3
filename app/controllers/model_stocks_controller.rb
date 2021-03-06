class ModelStocksController < ApplicationController
  before_action :set_model_stock, only: [:show, :edit, :update, :destroy]

  # GET /model_stocks
  # GET /model_stocks.json
  def index

    # set group1 from params
    group1_check

    # set search keyword
    keyword_check

    # set page from params
    page_control

    # per page(kaminari)
    @per = 80

    # order is follows;
    order = 'group1, group2, group3, name'

    # get necessary attr only
    if @ua == 'Mobile'
      select = 'id, name, status, group1'
    else
      select = 'id, name, status, group1, group2, group3, remark1, remark2, remark3'
    end

    # Debug
    debug 'index', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'index', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
    debug 'index', 'search is set: ['+@keyword+']'

    #@model_stocks = ModelStock.all
    if @group1 != '0'
      @model_stocks = ModelStock.select(select).where(['group1 = ?',@group1])
    elsif @keyword.present?
      @model_stocks = ModelStock.select(select).where(['name LIKE ?', '%'+@keyword+'%'])
    else
      @model_stocks = ModelStock.select(select)
    end
    @model_stocks = @model_stocks.order(order).page(@page).per(@per)
  end

  # GET /model_stocks/1
  # GET /model_stocks/1.json
  def show
    @page = session[:page]
    @group1 = session[:group1]

    # Debug
    debug 'show', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'show', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
  end

  # GET /model_stocks/new
  def new
    @model_stock = ModelStock.new
    @page = session[:page]
    @group1 = session[:group1]

    # Debug
    debug 'new', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'new', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
  end

  # GET /model_stocks/1/edit
  def edit
    @page = session[:page]
    @group1 = session[:group1]

    # Debug
    debug 'edit', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'edit', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
  end

  # POST /model_stocks
  # POST /model_stocks.json
  def create
    @model_stock = ModelStock.new(model_stock_params)

    respond_to do |format|
      if @model_stock.save
        format.html { redirect_to @model_stock, notice: t('common.message.created_success')}
        format.json { render :show, status: :created, location: @model_stock }
      else
        format.html { render :new }
        format.json { render json: @model_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_stocks/1
  # PATCH/PUT /model_stocks/1.json
  def update
    respond_to do |format|
      if @model_stock.update(model_stock_params)
        format.html { redirect_to @model_stock, notice: t('common.message.updated_success')}
        format.json { render :show, status: :ok, location: @model_stock }
      else
        format.html { render :edit }
        format.json { render json: @model_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_stocks/1
  # DELETE /model_stocks/1.json
  def destroy
    @model_stock.destroy
    respond_to do |format|
      format.html { redirect_to model_stocks_url, notice: t('common.message.destroyed_success')}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_stock
      @model_stock = ModelStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_stock_params
      params.require(:model_stock).permit(:name, :desc, :status, :group1, :group2, :group3, :scale, :provider, :remark1, :remark2, :remark3, :remark4, :remark5)
    end

end
