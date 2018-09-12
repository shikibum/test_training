describe Array, "が空の場合:" do
  before do
    @empty_array = []
  end

  it "#empty? は true であること" do
    expect(@empty_array).to be_empty  
  end

  it "#size は 0 であること" do
    expect(@empty_array.size).to eq 0 
  end

  after do
    @empty_array = nil
  end
end