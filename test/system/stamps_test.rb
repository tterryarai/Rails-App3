require "application_system_test_case"

class StampsTest < ApplicationSystemTestCase
  setup do
    @stamp = stamps(:one)
  end

  test "visiting the index" do
    visit stamps_url
    assert_selector "h1", text: "Stamps"
  end

  test "creating a Stamp" do
    visit stamps_url
    click_on "New Stamp"

    fill_in "Desc", with: @stamp.desc
    fill_in "Group1", with: @stamp.group1
    fill_in "Group2", with: @stamp.group2
    fill_in "Group3", with: @stamp.group3
    fill_in "Image path", with: @stamp.image_path
    fill_in "Issue date", with: @stamp.issue_date
    fill_in "Name", with: @stamp.name
    fill_in "Remark1", with: @stamp.remark1
    fill_in "Remark2", with: @stamp.remark2
    fill_in "Remark3", with: @stamp.remark3
    fill_in "Remark4", with: @stamp.remark4
    fill_in "Remark5", with: @stamp.remark5
    fill_in "Status", with: @stamp.status
    click_on "Create Stamp"

    assert_text "Stamp was successfully created"
    click_on "Back"
  end

  test "updating a Stamp" do
    visit stamps_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @stamp.desc
    fill_in "Group1", with: @stamp.group1
    fill_in "Group2", with: @stamp.group2
    fill_in "Group3", with: @stamp.group3
    fill_in "Image path", with: @stamp.image_path
    fill_in "Issue date", with: @stamp.issue_date
    fill_in "Name", with: @stamp.name
    fill_in "Remark1", with: @stamp.remark1
    fill_in "Remark2", with: @stamp.remark2
    fill_in "Remark3", with: @stamp.remark3
    fill_in "Remark4", with: @stamp.remark4
    fill_in "Remark5", with: @stamp.remark5
    fill_in "Status", with: @stamp.status
    click_on "Update Stamp"

    assert_text "Stamp was successfully updated"
    click_on "Back"
  end

  test "destroying a Stamp" do
    visit stamps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stamp was successfully destroyed"
  end
end
