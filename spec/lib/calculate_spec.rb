require 'spec_helper'

describe Calculate do
	context "when men" do
		describe "#men_formula" do
			context "weight <= 40.0" do
				it 'get value' do
					expect(subject.men_formula(40,600)).to eq 801.24
					expect(subject.men_formula(35,600)).to eq 801.24
				end	
			end
			context "weight >= 205.9" do
				it 'get value' do
					expect(subject.men_formula(205.9,600).round(2)).to eq 319.08
					expect(subject.men_formula(300.9,600).round(2)).to eq 319.08			
				end				
			end
			context "weight <= 40.0 && weight >= 205.9" do
				it 'get value' do
					expect(subject.men_formula(60,600).round(2)).to eq 511.74
				end				
			end
		end
	end
	context "when women" do
		describe "#women_formula" do
			context "weight <= 40.0" do
				it 'get value' do
					expect(subject.women_formula(40,600)).to eq 896.16
					expect(subject.women_formula(35,600)).to eq 896.16					
				end				
			end
			context "weight >= 150.9" do
				it 'get value' do
					expect(subject.women_formula(150.9,600).round(2)).to eq 461.46
					expect(subject.women_formula(200.9,600).round(2)).to eq 461.46
				end				
			end
			context "weight <= 40.0 && weight >= 150.9" do
				it 'get value' do
					expect(subject.women_formula(60,600).round(2)).to eq 668.94
				end				
			end
		end
	end
end
