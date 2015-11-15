require 'test_helper'

class PortafoliosControllerTest < ActionController::TestCase
  setup do
    @portafolio = portafolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portafolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portafolio" do
    assert_difference('Portafolio.count') do
      post :create, portafolio: { archivo: @portafolio.archivo, descripcion: @portafolio.descripcion, nombre: @portafolio.nombre, titulado_id: @portafolio.titulado_id }
    end

    assert_redirected_to portafolio_path(assigns(:portafolio))
  end

  test "should show portafolio" do
    get :show, id: @portafolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portafolio
    assert_response :success
  end

  test "should update portafolio" do
    patch :update, id: @portafolio, portafolio: { archivo: @portafolio.archivo, descripcion: @portafolio.descripcion, nombre: @portafolio.nombre, titulado_id: @portafolio.titulado_id }
    assert_redirected_to portafolio_path(assigns(:portafolio))
  end

  test "should destroy portafolio" do
    assert_difference('Portafolio.count', -1) do
      delete :destroy, id: @portafolio
    end

    assert_redirected_to portafolios_path
  end
end
