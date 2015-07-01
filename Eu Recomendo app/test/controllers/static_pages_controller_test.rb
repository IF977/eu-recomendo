require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Eu Recomendo"
  end
   test "should get contato" do
    get :contato
    assert_response :success
    assert_select "title", "Contato | Eu Recomendo"
  end

  test "should get categorias" do
    get :categorias
    assert_response :success
    assert_select "title", "Categorias | Eu Recomendo"
  end
  test "should get anuncie" do
    get :anuncie
    assert_response :success
    assert_select "title", "Anuncie Aqui! | Eu Recomendo"
  end
end

