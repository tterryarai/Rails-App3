require 'test_helper'

class StampsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stamp = stamps(:one)
  end

  test "should get index" do
    get stamps_url
    assert_response :success
  end

  test "should get new" do
    get new_stamp_url
    assert_response :success
  end

  test "should create stamp" do
    assert_difference('Stamp.count') do
      post stamps_url, params: { stamp: { desc: @stamp.desc, group1: @stamp.group1, group2: @stamp.group2, group3: @stamp.group3, image_path: @stamp.image_path, issue_date: @stamp.issue_date, name: @stamp.name, remark1: @stamp.remark1, remark2: @stamp.remark2, remark3: @stamp.remark3, remark4: @stamp.remark4, remark5: @stamp.remark5, status: @stamp.status } }
    end

    assert_redirected_to stamp_url(Stamp.last)
  end

  test "should show stamp" do
    get stamp_url(@stamp)
    assert_response :success
  end

  test "should get edit" do
    get edit_stamp_url(@stamp)
    assert_response :success
  end

  test "should update stamp" do
    patch stamp_url(@stamp), params: { stamp: { desc: @stamp.desc, group1: @stamp.group1, group2: @stamp.group2, group3: @stamp.group3, image_path: @stamp.image_path, issue_date: @stamp.issue_date, name: @stamp.name, remark1: @stamp.remark1, remark2: @stamp.remark2, remark3: @stamp.remark3, remark4: @stamp.remark4, remark5: @stamp.remark5, status: @stamp.status } }
    assert_redirected_to stamp_url(@stamp)
  end

  test "should destroy stamp" do
    assert_difference('Stamp.count', -1) do
      delete stamp_url(@stamp)
    end

    assert_redirected_to stamps_url
  end
end
