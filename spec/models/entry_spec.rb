require 'spec_helper'

describe Entry do
  it {should have_valid(:title).when("blah", "12blah34", "bl12ah", 1234, -100)}
  it {should_not have_valid(:title).when(nil, '')}
  it {should_not have_valid(:description).when(nil, '')}
  it {should have_many :categories}
end
