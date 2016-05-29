require 'test_helper'

class SystemDataControllerTest < ActionController::TestCase
  setup do
    @system_datum = system_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_datum" do
    assert_difference('SystemDatum.count') do
      post :create, system_datum: { data_point_id: @system_datum.data_point_id, soc_temperature: @system_datum.soc_temperature }
    end

    assert_redirected_to system_datum_path(assigns(:system_datum))
  end

  test "should show system_datum" do
    get :show, id: @system_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_datum
    assert_response :success
  end

  test "should update system_datum" do
    patch :update, id: @system_datum, system_datum: { data_point_id: @system_datum.data_point_id, soc_temperature: @system_datum.soc_temperature }
    assert_redirected_to system_datum_path(assigns(:system_datum))
  end

  test "should destroy system_datum" do
    assert_difference('SystemDatum.count', -1) do
      delete :destroy, id: @system_datum
    end

    assert_redirected_to system_data_path
  end
end
