require 'test_helper'

class RecomendationsControllerTest < ActionController::TestCase
  setup do
    @recomendation = recomendations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recomendations)
  end

  test "should create recomendation" do
    assert_difference('Recomendation.count') do
      post :create, recomendation: { comname: @recomendation.comname, prdname: @recomendation.prdname }
    end

    assert_response 201
  end

  test "should show recomendation" do
    get :show, id: @recomendation
    assert_response :success
  end

  test "should update recomendation" do
    put :update, id: @recomendation, recomendation: { comname: @recomendation.comname, prdname: @recomendation.prdname }
    assert_response 204
  end

  test "should destroy recomendation" do
    assert_difference('Recomendation.count', -1) do
      delete :destroy, id: @recomendation
    end

    assert_response 204
  end
end
