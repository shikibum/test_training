require 'rails_helper'

describe Entry do
  # pending "add some examples to (or delete) #{__FILE__}"
  fixtures :entries, :blogs

  before(:each) do
    @entry = entries(:earliest)
  end

  it "は特定のブログに属すること" do
    expect(@entry.blog).to eq blogs(:one)
  end 
end
