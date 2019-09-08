require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { author: @book.author, desc: @book.desc, group1: @book.group1, group2: @book.group2, group3: @book.group3, name: @book.name, provider: @book.provider, remark1: @book.remark1, remark2: @book.remark2, remark3: @book.remark3, remark4: @book.remark4, remark5: @book.remark5, status: @book.status } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author: @book.author, desc: @book.desc, group1: @book.group1, group2: @book.group2, group3: @book.group3, name: @book.name, provider: @book.provider, remark1: @book.remark1, remark2: @book.remark2, remark3: @book.remark3, remark4: @book.remark4, remark5: @book.remark5, status: @book.status } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
