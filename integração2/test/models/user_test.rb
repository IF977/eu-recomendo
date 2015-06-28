require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
   @user = User.new(nome: "Example User", sobrenome:"example", email: "user@example.com", nickname:"example", telefone:"019201", rua:"example", 
   cep:"0120192", numero:"1029102",complemento:"casa", tipo:"string", password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "nome should be present" do
    @user.nome = "     "
    assert_not @user.valid?
  end
  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end
  test "nickname should be present" do
    @user.nickname = "     "
    assert_not @user.valid?
  end
  test "telefone should be present" do
    @user.telefone = "     "
    assert_not @user.valid?
  end
  test "rua should be present" do
    @user.rua = "     "
    assert_not @user.valid?
  end
  test "cep should be present" do
    @user.cep = "     "
    assert_not @user.valid?
  end
  test "numero should be present" do
    @user.numero = "     "
    assert_not @user.valid?
  end
  test "tipo should be present" do
    @user.tipo = "     "
    assert_not @user.valid?
  end
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
   test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

end