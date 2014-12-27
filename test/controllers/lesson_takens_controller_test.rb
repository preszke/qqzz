require 'test_helper'

class LessonTakensControllerTest < ActionController::TestCase
  setup do
    @lesson_taken = lesson_takens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_takens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_taken" do
    assert_difference('LessonTaken.count') do
      post :create, lesson_taken: { lesson_id: @lesson_taken.lesson_id, user_id: @lesson_taken.user_id }
    end

    assert_redirected_to lesson_taken_path(assigns(:lesson_taken))
  end

  test "should show lesson_taken" do
    get :show, id: @lesson_taken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_taken
    assert_response :success
  end

  test "should update lesson_taken" do
    patch :update, id: @lesson_taken, lesson_taken: { lesson_id: @lesson_taken.lesson_id, user_id: @lesson_taken.user_id }
    assert_redirected_to lesson_taken_path(assigns(:lesson_taken))
  end

  test "should destroy lesson_taken" do
    assert_difference('LessonTaken.count', -1) do
      delete :destroy, id: @lesson_taken
    end

    assert_redirected_to lesson_takens_path
  end
end
