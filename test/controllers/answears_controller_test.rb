require 'test_helper'

class AnswearsControllerTest < ActionController::TestCase
  setup do
    @answear = answears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answear" do
    assert_difference('Answear.count') do
      post :create, answear: { is_correct: @answear.is_correct, question_id: @answear.question_id, text: @answear.text }
    end

    assert_redirected_to answear_path(assigns(:answear))
  end

  test "should show answear" do
    get :show, id: @answear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answear
    assert_response :success
  end

  test "should update answear" do
    patch :update, id: @answear, answear: { is_correct: @answear.is_correct, question_id: @answear.question_id, text: @answear.text }
    assert_redirected_to answear_path(assigns(:answear))
  end

  test "should destroy answear" do
    assert_difference('Answear.count', -1) do
      delete :destroy, id: @answear
    end

    assert_redirected_to answears_path
  end
end
