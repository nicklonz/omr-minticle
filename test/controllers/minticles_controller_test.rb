require 'test_helper'

class MinticlesControllerTest < ActionController::TestCase
  setup do
    @minticle = minticles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minticles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minticle" do
    assert_difference('Minticle.count') do
      post :create, minticle: { description: @minticle.description }
    end

    assert_redirected_to minticle_path(assigns(:minticle))
  end

  test "should show minticle" do
    get :show, id: @minticle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @minticle
    assert_response :success
  end

  test "should update minticle" do
    patch :update, id: @minticle, minticle: { description: @minticle.description }
    assert_redirected_to minticle_path(assigns(:minticle))
  end

  test "should destroy minticle" do
    assert_difference('Minticle.count', -1) do
      delete :destroy, id: @minticle
    end

    assert_redirected_to minticles_path
  end
end
