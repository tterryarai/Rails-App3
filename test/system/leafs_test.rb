require "application_system_test_case"

class LeafsTest < ApplicationSystemTestCase
  setup do
    @leaf = leafs(:one)
  end

  test "visiting the index" do
    visit leafs_url
    assert_selector "h1", text: "Leafs"
  end

  test "creating a Leaf" do
    visit leafs_url
    click_on "New Leaf"

    fill_in "Desc", with: @leaf.desc
    fill_in "Group1", with: @leaf.group1
    fill_in "Group2", with: @leaf.group2
    fill_in "Group3", with: @leaf.group3
    fill_in "Name", with: @leaf.name
    fill_in "Period", with: @leaf.period
    fill_in "Status", with: @leaf.status
    click_on "Create Leaf"

    assert_text "Leaf was successfully created"
    click_on "Back"
  end

  test "updating a Leaf" do
    visit leafs_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @leaf.desc
    fill_in "Group1", with: @leaf.group1
    fill_in "Group2", with: @leaf.group2
    fill_in "Group3", with: @leaf.group3
    fill_in "Name", with: @leaf.name
    fill_in "Period", with: @leaf.period
    fill_in "Status", with: @leaf.status
    click_on "Update Leaf"

    assert_text "Leaf was successfully updated"
    click_on "Back"
  end

  test "destroying a Leaf" do
    visit leafs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leaf was successfully destroyed"
  end
end
