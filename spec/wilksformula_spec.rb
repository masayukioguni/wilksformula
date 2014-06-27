require 'spec_helper'

describe Wilksformula do
  it 'have a version number' do
    Wilksformula::VERSION.should_not be_nil
  end

  it 'get men formula ' do
  	expect(Wilksformula.men_formula(60,600).round(2)).to eq 511.74
  end
  
  it 'get women formula ' do
  	expect(Wilksformula.women_formula(60,600).round(2)).to eq 668.94
  end
end
