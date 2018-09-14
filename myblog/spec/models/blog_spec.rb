require 'rails_helper'

describe Blog, "#name が設定されていない場合:"  do
  # pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do
    @blog = Blog.new
  end

  it "バリデーションに失敗すること" do
    expect(@blog).to_not be_valid
  end

  it ":name にエラーが設定されていること" do
    @blog.valid?
    expect(@blog.errors[:name].size).to eq(1)
  end
end

describe Blog, "に記事を投稿できた場合:" do
  fixtures :blogs, :entries
  before do
    @blog = blogs(:one)
  end

  it "記事の件数が1件増えること" do
     expect {
        @blog.entries.create(
        :title => 'new_post', :body => 'hello',
        :posted_on => Date.today
        )}.to change(Entry, :count).by(1)
  end
end

describe Blog do
  fixtures :blogs, :entries
  before do
    @blog = blogs(:one)
end

  it "は複数の記事を所有できること" do
    #  @blog.should have_at_least(2).entries
    expect(@blog.entries.size).to be >= (2)
  end
end