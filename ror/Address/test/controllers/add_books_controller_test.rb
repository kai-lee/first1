require 'test_helper'

class AddBooksControllerTest < ActionController::TestCase
  setup do
    @add_book = add_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_book" do
    assert_difference('AddBook.count') do
      post :create, add_book: { email: @add_book.email, fav_color: @add_book.fav_color, first_name: @add_book.first_name, last_name: @add_book.last_name, zipcode: @add_book.zipcode }
    end

    assert_redirected_to add_book_path(assigns(:add_book))
  end

  test "should show add_book" do
    get :show, id: @add_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_book
    assert_response :success
  end

  test "should update add_book" do
    patch :update, id: @add_book, add_book: { email: @add_book.email, fav_color: @add_book.fav_color, first_name: @add_book.first_name, last_name: @add_book.last_name, zipcode: @add_book.zipcode }
    assert_redirected_to add_book_path(assigns(:add_book))
  end

  test "should destroy add_book" do
    assert_difference('AddBook.count', -1) do
      delete :destroy, id: @add_book
    end

    assert_redirected_to add_books_path
  end
end
