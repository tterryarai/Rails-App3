require "application_system_test_case"

class ModelStocksTest < ApplicationSystemTestCase
  setup do
    @model_stock = model_stocks(:one)
  end

  test "visiting the index" do
    visit model_stocks_url
    assert_selector "h1", text: "Model Stocks"
  end

  test "creating a Model stock" do
    visit model_stocks_url
    click_on "New Model Stock"

    fill_in "Desc", with: @model_stock.desc
    fill_in "Group1", with: @model_stock.group1
    fill_in "Group2", with: @model_stock.group2
    fill_in "Group3", with: @model_stock.group3
    fill_in "Name", with: @model_stock.name
    fill_in "Provider", with: @model_stock.provider
    fill_in "Remark1", with: @model_stock.remark1
    fill_in "Remark2", with: @model_stock.remark2
    fill_in "Remark3", with: @model_stock.remark3
    fill_in "Remark4", with: @model_stock.remark4
    fill_in "Remark5", with: @model_stock.remark5
    fill_in "Scale", with: @model_stock.scale
    fill_in "Status", with: @model_stock.status
    click_on "Create Model stock"

    assert_text "Model stock was successfully created"
    click_on "Back"
  end

  test "updating a Model stock" do
    visit model_stocks_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @model_stock.desc
    fill_in "Group1", with: @model_stock.group1
    fill_in "Group2", with: @model_stock.group2
    fill_in "Group3", with: @model_stock.group3
    fill_in "Name", with: @model_stock.name
    fill_in "Provider", with: @model_stock.provider
    fill_in "Remark1", with: @model_stock.remark1
    fill_in "Remark2", with: @model_stock.remark2
    fill_in "Remark3", with: @model_stock.remark3
    fill_in "Remark4", with: @model_stock.remark4
    fill_in "Remark5", with: @model_stock.remark5
    fill_in "Scale", with: @model_stock.scale
    fill_in "Status", with: @model_stock.status
    click_on "Update Model stock"

    assert_text "Model stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Model stock" do
    visit model_stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Model stock was successfully destroyed"
  end
end
