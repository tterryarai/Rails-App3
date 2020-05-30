class LeafsController < ApplicationController
  before_action :set_leaf, only: [:show, :edit, :update, :destroy]

  # GET /leafs
  # GET /leafs.json
  def index

    # set group1 from params
    group1_check

    # set search keyword
    keyword_check

    # terget attribute for search and keyword is;
    search_target = 'name LIKE ?'
    key = '%'+@keyword+'%'

    # get necessary attr only
    select = 'id, name, period, status, group1'

    # Debug
    #debug 'index', 'page is set: ['+@page.to_s+':'+session[:page].to_s+':'+params[:page].to_s+']'
    debug 'index', 'group1 is set: ['+@group1.to_s+':'+session[:group1].to_s+':'+params[:group1].to_s+']'
    debug 'index', 'search is set: ['+@keyword+']'

    #@leafs = Leaf.all
    if @group1 != '0'
      @leafs = Leaf.select(select).where(['group1 = ?', @group1]).order(:id)
    elsif @keyword.present?
      @leafs = Leaf.select(select).where([search_target, key])
    else
      @leafs = Leaf.select(select).order(:id)
    end

  end

  # GET /leafs/1
  # GET /leafs/1.json
  def show
  end

  # GET /leafs/new
  def new
    @leaf = Leaf.new
  end

  # GET /leafs/1/edit
  def edit
  end

  # POST /leafs
  # POST /leafs.json
  def create
    @leaf = Leaf.new(leaf_params)

    respond_to do |format|
      if @leaf.save
        format.html { redirect_to @leaf, notice: t('common.message.created_success')}
        format.json { render :show, status: :created, location: @leaf }
      else
        format.html { render :new }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leafs/1
  # PATCH/PUT /leafs/1.json
  def update
    respond_to do |format|
      if @leaf.update(leaf_params)
        format.html { redirect_to @leaf, notice: t('common.message.updated_success')}
        format.json { render :show, status: :ok, location: @leaf }
      else
        format.html { render :edit }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leafs/1
  # DELETE /leafs/1.json
  def destroy
    @leaf.destroy
    respond_to do |format|
      format.html { redirect_to leafs_url, notice: t('common.message.destroyed_success')}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaf
      @leaf = Leaf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leaf_params
      params.require(:leaf).permit(:name, :period, :desc, :status, :group1, :group2, :group3)
    end
end
