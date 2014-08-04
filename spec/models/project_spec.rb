require 'rails_helper'

RSpec.describe Project, :type => :model do

	let(:project){ FactoryGirl.create(:project) }
	let(:card){ FactoryGirl.create(:car) }

	describe "is invalid without a" do

		it "name" do
			project.title = nil
			expect(project).to be_invalid
		end

		it "has one user" do
			expect(project.user_id).to eq(15)
		end

	end

	describe "#" do

		context "when #project is created" do
			it "#make_card" do
				expect(project.make_card).to be_valid
			end
		end

	end

end