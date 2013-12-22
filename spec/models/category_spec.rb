require 'spec_helper'

describe Category do
  let(:invalids) {["12blah34", "bl12ah", 1234, -100, nil, '']}
  it {should have_valid(:name).when("blah")}
  it {should_not have_valid(:name).when(*invalids)}
  it {should have_many :entries}

  it 'should be unique' do
    category1 = FactoryGirl.build(:category)
    category2 = FactoryGirl.build(:category)
    expect(category1.save).to be_true
    expect(category2.save).to be_false
  end
end
