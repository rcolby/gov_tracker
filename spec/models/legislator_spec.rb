require 'spec_helper'

describe Legislator do

  it "has a first name." do
    l = Legislator.first
    expect(l.firstname).to eq "Neil"
  end

  it "has a last name." do
    l = Legislator.first
    expect(l.lastname).to eq "Abercrombie"
  end
  
end