require 'test_helper'

class ImageDataControllerTest < ActionController::TestCase
  setup do
    @image_datum = image_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_datum" do
    assert_difference('ImageDatum.count') do
      post :create, image_datum: { data_point_id: @image_datum.data_point_id, filename: @image_datum.filename }
    end

    assert_redirected_to image_datum_path(assigns(:image_datum))
  end

  test "should show image_datum" do
    get :show, id: @image_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_datum
    assert_response :success
  end

  test "should update image_datum" do
    patch :update, id: @image_datum, image_datum: { data_point_id: @image_datum.data_point_id, filename: @image_datum.filename }
    assert_redirected_to image_datum_path(assigns(:image_datum))
  end

  test "should destroy image_datum" do
    assert_difference('ImageDatum.count', -1) do
      delete :destroy, id: @image_datum
    end

    assert_redirected_to image_data_path
  end
end
