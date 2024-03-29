require 'rails_helper'

RSpec.describe PostsController, type: :controller do

    login_user

    let(:valid_attributes) {
        { :title => "Test title", :author => "Test author", :content => "Test content" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Post.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful
        end
    end
end
