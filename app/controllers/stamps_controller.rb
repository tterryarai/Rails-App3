class StampsController < ApplicationController
  before_action :set_stamp, only: [:show, :edit, :update, :destroy]

  # GET /stamps
  # GET /stamps.json
  def index

    # set group1 from params
    group1_check

    # set search keyword
    keyword_check

    #set page from params
    page_control

    # per page(kaminari)
    @per = 80

    # terget attribute for search and keyword is;
    search_target = 'name LIKE ? or remark1 LIKE ? or remark2 LIKE ? or remark3 LIKE ? or remark4 LIKE ? or remark5 LIKE ?'
    key = '%'+@keyword+'%'

    # get necessary attr only
    if @ua == 'Mobile'
      select = 'id, name, price, status, group1, remark1, group2, remark2, group3, remark3'
    # order is;
    order = 'group1, remark1, group2, remark2, group3, remark3, name'
    else
      select = 'id, name, price, status, group1, remark1, group2, remark2, group3, remark3, remark4, remark5, leaf_id'
    # order is;
    order = 'group1, remark1, group2, remark2, group3, remark3, remark4, remark5, name'
    end

    # Debug
    debug 'index', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'index', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
    debug 'index', 'search is set: ['+@keyword+']'

    #@stamps = Stamp.all
    if @group1 != '0'
      @stamps = Stamp.select(select).where(['group1 = ?', @group1])
    elsif @keyword.present?
      @stamps = Stamp.select(select).where([search_target, key,key,key,key,key,key])
    else
      @stamps = Stamp.select(select)
    end

    @stamps = @stamps.order(order).page(@page).per(@per)
  end

  # GET /stamps/1
  # GET /stamps/1.json
  def show
  end

  # GET /stamps/new
  def new
    @stamp = Stamp.new
  end

  # GET /stamps/1/edit
  def edit
  end

  # POST /stamps
  # POST /stamps.json
  def create
    @stamp = Stamp.new(stamp_params)

    respond_to do |format|
      if @stamp.save
        format.html { redirect_to @stamp, notice: t('common.message.created_success')}
        format.json { render :show, status: :created, location: @stamp }
      else
        format.html { render :new }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stamps/1
  # PATCH/PUT /stamps/1.json
  def update
    respond_to do |format|
      if @stamp.update(stamp_params)
        format.html { redirect_to @stamp, notice: t('common.message.updated_success')}
        format.json { render :show, status: :ok, location: @stamp }
      else
        format.html { render :edit }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stamps/1
  # DELETE /stamps/1.json
  def destroy
    @stamp.destroy
    respond_to do |format|
      format.html { redirect_to stamps_url, notice: t('common.message.destroyed_success')}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stamp
      @stamp = Stamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stamp_params
      params.require(:stamp).permit(:name, :desc, :status, :price, :group1, :group2, :group3, :issue_date, :image_path, :remark1, :remark2, :remark3, :remark4, :remark5, :leaf_id)
    end
end
