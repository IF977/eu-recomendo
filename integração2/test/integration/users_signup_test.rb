require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { nome:  "Example User",
                                            sobrenome:"Example User",
                                            email: "user@example.com",
                                            nickname: "Example User",
                                            telefone: "000000",
                                            rua: "iasia",
                                            cep:"9293",
                                            numero: "9182912",
                                            complemento: "casa",
                                            tipo: "fisica",
                                            password:              "password",
                                            password_confirmation: "password"}
    end
    assert_template 'users/show'
    assert is_logged_in?
  end
end
