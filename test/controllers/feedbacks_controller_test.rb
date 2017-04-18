require 'test_helper'

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feedback = feedbacks(:one)
  end


  test "should get new" do
    get new_feedback_url
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post feedbacks_url, params: { feedback: { age: @feedback.age, description: @feedback.description, file: @feedback.file, name: @feedback.name } }
    end

    assert_redirected_to feedback_url(Feedback.last)
  end

  test "should show feedback" do
    get feedback_url(@feedback)
    assert_response :success
  end
end
