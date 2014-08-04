require 'rails_helper'

RSpec.describe ProjectsController, :type => :controller do

	let(:project){FactoryGirl.create(:project)}

	let(:valid_session) { {user_id: 1}}

	let(:user) {FactoryGirl.create(:user)}

	describe "GET index" do
		render_views
		# it "renders the index template" do
		# 	get :index, {:id => user.to_param}, valid_session
		# 	expect(response).to render_template(:index)
		# end

		it "assigns all current users' projects as @projects" do
			user 
			project
			user.projects << project
			get :index, {id: user.to_param}, valid_session
			expect(assigns(:projects)).to eq([project])
		end
	end


end