require 'spec_helper'

describe "photos/index.html.haml" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :name => "Name",
        :description => "MyText",
        :friendly_file_name => "Friendly File Name",
        :user_id => 1,
        :event_id => 1
      ),
      stub_model(Photo,
        :name => "Name",
        :description => "MyText",
        :friendly_file_name => "Friendly File Name",
        :user_id => 1,
        :event_id => 1
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Friendly File Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
