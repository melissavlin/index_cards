require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

	let(:user){ FactoryGirl.create(:user) }

	# let(:valid_session) { {user_id: 1}}

	describe "POST create" do

		describe "with valid attributes" do
			it "creates new user" do
				expect {
					post :create, {user: attributes_for(:user)}
				}.to change(User, :count).by(1)
			end
		end

	end


end