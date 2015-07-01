require 'rails_helper'

RSpec.describe UsuarioController, type: :controller do

describe UsersController do 
    describe "POST: create" do 
        context "on success" do 
            it "should create user with provided arguments" do 
                user = mock_model(User).as_null_object 
                User.should_receive(:new).with("role" => gt; "editor").and_return(user) 
                post :create, :user => gt; {:role =&gt; "editor"} 
            end 
        end 
    end 
end

end
