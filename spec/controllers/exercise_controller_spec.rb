#Created by: Nadia Rodriguez
#Debugged by: Erin Terre
#For: Iteration 2
#spec/controller/exercise_controller_spec.rb

require 'spec_helper'
require 'rails_helper'

describe ExercisesController do
	before :each do
		@exercise = Exercise.new
		@exercise.id = 1
		@exercise.name = 'push-ups'
		@exercise.description = 'blah'
		@exercise.save
	end

	describe "#show" do 
		it 'should return different exercises' do
	        get :show, {:id => 1}
		@exercise.name.should eql 'push-ups'
		@exercise.description.should eql 'blah'
		end
	end
end
