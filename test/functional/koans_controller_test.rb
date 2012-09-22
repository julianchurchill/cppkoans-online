require 'test_helper'

class KoansControllerTest < ActionController::TestCase
  setup do
    @koan = koans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:koans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create koan" do
    assert_difference('Koan.count') do
      post :create, koan: { actual_answer: @koan.actual_answer, code: @koan.code, name: @koan.name, proposed_answer: @koan.proposed_answer, question: @koan.question }
    end

    assert_redirected_to koan_path(assigns(:koan))
  end

  test "should show koan" do
    get :show, id: @koan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @koan
    assert_response :success
  end

  test "should update koan" do
    put :update, id: @koan, koan: { actual_answer: @koan.actual_answer, code: @koan.code, name: @koan.name, proposed_answer: @koan.proposed_answer, question: @koan.question }
    assert_redirected_to koan_path(assigns(:koan))
  end

  test "should destroy koan" do
    assert_difference('Koan.count', -1) do
      delete :destroy, id: @koan
    end

    assert_redirected_to koans_path
  end
end
