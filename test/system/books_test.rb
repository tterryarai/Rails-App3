require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Author", with: @book.author
    fill_in "Desc", with: @book.desc
    fill_in "Group1", with: @book.group1
    fill_in "Group2", with: @book.group2
    fill_in "Group3", with: @book.group3
    fill_in "Name", with: @book.name
    fill_in "Provider", with: @book.provider
    fill_in "Remark1", with: @book.remark1
    fill_in "Remark2", with: @book.remark2
    fill_in "Remark3", with: @book.remark3
    fill_in "Remark4", with: @book.remark4
    fill_in "Remark5", with: @book.remark5
    fill_in "Status", with: @book.status
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @book.author
    fill_in "Desc", with: @book.desc
    fill_in "Group1", with: @book.group1
    fill_in "Group2", with: @book.group2
    fill_in "Group3", with: @book.group3
    fill_in "Name", with: @book.name
    fill_in "Provider", with: @book.provider
    fill_in "Remark1", with: @book.remark1
    fill_in "Remark2", with: @book.remark2
    fill_in "Remark3", with: @book.remark3
    fill_in "Remark4", with: @book.remark4
    fill_in "Remark5", with: @book.remark5
    fill_in "Status", with: @book.status
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
