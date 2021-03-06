require 'test_helper'

class CarImagesControllerTest < ActionController::TestCase
  setup do
    @car_image = car_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_image" do
    assert_difference('CarImage.count') do
      post :create, car_image: {  }
    end

    assert_redirected_to car_image_path(assigns(:car_image))
  end

  test "should show car_image" do
    get :show, id: @car_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_image
    assert_response :success
  end

  test "should update car_image" do
    patch :update, id: @car_image, car_image: {  }
    assert_redirected_to car_image_path(assigns(:car_image))
  end

  test "should destroy car_image" do
    assert_difference('CarImage.count', -1) do
      delete :destroy, id: @car_image
    end

    assert_redirected_to car_images_path
  end
end
