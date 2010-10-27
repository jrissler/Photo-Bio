require 'spec_helper'

describe "pages/index.html.haml" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :title => "Title",
        :content => "MyText",
        :author => 1
      ),
      stub_model(Page,
        :title => "Title",
        :content => "MyText",
        :author => 1
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
