require 'test_helper'

class CodingLangsControllerTest < ActionController::TestCase
  setup do
    @coding_lang = coding_langs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coding_langs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coding_lang" do
    assert_difference('CodingLang.count') do
      post :create, coding_lang: { description: @coding_lang.description, name: @coding_lang.name }
    end

    assert_redirected_to coding_lang_path(assigns(:coding_lang))
  end

  test "should show coding_lang" do
    get :show, id: @coding_lang
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coding_lang
    assert_response :success
  end

  test "should update coding_lang" do
    patch :update, id: @coding_lang, coding_lang: { description: @coding_lang.description, name: @coding_lang.name }
    assert_redirected_to coding_lang_path(assigns(:coding_lang))
  end

  test "should destroy coding_lang" do
    assert_difference('CodingLang.count', -1) do
      delete :destroy, id: @coding_lang
    end

    assert_redirected_to coding_langs_path
  end
end
