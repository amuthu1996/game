require 'test_helper'

class PaidsControllerTest < ActionController::TestCase
  setup do
    @paid = paids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paid" do
    assert_difference('Paid.count') do
      post :create, paid: { pay: @paid.pay }
    end

    assert_redirected_to paid_path(assigns(:paid))
  end

  test "should show paid" do
    get :show, id: @paid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paid
    assert_response :success
  end

  test "should update paid" do
    patch :update, id: @paid, paid: { pay: @paid.pay }
    assert_redirected_to paid_path(assigns(:paid))
  end

  test "should destroy paid" do
    assert_difference('Paid.count', -1) do
      delete :destroy, id: @paid
    end

    assert_redirected_to paids_path
  end
end
