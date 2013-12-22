require 'spec_helper'

describe Categorization do
  let(:invalids) {['', nil, "ab1234cd", "12abcd34", "abc"]}
  it {should have_valid(:category_id).when(1)}
  it {should_not have_valid(:category_id).when(*invalids)}
  it {should have_valid(:entry_id).when(1)}
  it {should_not have_valid(:entry_id).when(*invalids)}
  it {should belong_to :entry}
  it {should belong_to :category}
end
