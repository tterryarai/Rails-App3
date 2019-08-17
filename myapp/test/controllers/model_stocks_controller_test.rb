require 'test_helper'

class ModelStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model_stock = model_stocks(:one)
  end

  test "should get index" do
    get model_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_model_stock_url
    assert_response :success
  end

  test "should create model_stock" do
    assert_difference('ModelStock.count') do
      post model_stocks_url, params: { model_stock: { desc: @model_stock.desc, group1: @model_stock.group1, group2: @model_stock.group2, group3: @model_stock.group3, name: @model_stock.name, provider: @model_stock.provider, remark1: @model_stock.remark1, remark2: @model_stock.remark2, remark3: @model_stock.remark3, remark4: @model_stock.remark4, remark5: @model_stock.remark5, scale: @model_stock.scale, status: @model_stock.status } }
    end

    assert_redirected_to model_stock_url(ModelStock.last)
  end

  test "should show model_stock" do
    get model_stock_url(@model_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_model_stock_url(@model_stock)
    assert_response :success
  end

  test "should update model_stock" do
    patch model_stock_url(@model_stock), params: { model_stock: { desc: @model_stock.desc, group1: @model_stock.group1, group2: @model_stock.group2, group3: @model_stock.group3, name: @model_stock.name, provider: @model_stock.provider, remark1: @model_stock.remark1, remark2: @model_stock.remark2, remark3: @model_stock.remark3, remark4: @model_stock.remark4, remark5: @model_stock.remark5, scale: @model_stock.scale, status: @model_stock.status } }
    assert_redirected_to model_stock_url(@model_stock)
  end

  test "should destroy model_stock" do
    assert_difference('ModelStock.count', -1) do
      delete model_stock_url(@model_stock)
    end

    assert_redirected_to model_stocks_url
  end
end
