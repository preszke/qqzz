require 'test_helper'

class QuestionTakensControllerTest < ActionController::TestCase
  setup do
    @question_taken = question_takens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_takens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_taken" do
    assert_difference('QuestionTaken.count') do
      post :create, question_taken: { attempts: @question_taken.attempts, question_id: @question_taken.question_id, user_id: @question_taken.user_id }
    end

    assert_redirected_to question_taken_path(assigns(:question_taken))
  end

  test "should show question_taken" do
    get :show, id: @question_taken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_taken
    assert_response :success
  end

  test "should update question_taken" do
    patch :update, id: @question_taken, question_taken: { attempts: @question_taken.attempts, question_id: @question_taken.question_id, user_id: @question_taken.user_id }
    assert_redirected_to question_taken_path(assigns(:question_taken))
  end

  test "should destroy question_taken" do
    assert_difference('QuestionTaken.count', -1) do
      delete :destroy, id: @question_taken
    end

    assert_redirected_to question_takens_path
  end
end
