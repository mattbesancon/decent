require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

    let(:valid_attributes) {
        { :content => "Test content", :post_id => 5 }
    }

    let(:valid_session) { {} }

    describe "GET #new" do
        it "returns a success response" do
            Comment.create! valid_attributes
            get :new, params: {}, session: valid_session
            expect(response).to be_successful
        end
    end
end
