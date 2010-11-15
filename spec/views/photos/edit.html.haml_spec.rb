require 'spec_helper'

describe "photos/edit.html.haml" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :new_record? => false,
      :name => "MyString",
      :description => "MyText",
      :friendly_file_name => "MyString",
      :user_id => 1,
      :event_id => 1
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => photo_path(@photo), :method => "post" do
      assert_select "input#photo_name", :name => "photo[name]"
      assert_select "textarea#photo_description", :name => "photo[description]"
      assert_select "input#photo_friendly_file_name", :name => "photo[friendly_file_name]"
      assert_select "input#photo_user_id", :name => "photo[user_id]"
      assert_select "input#photo_event_id", :name => "photo[event_id]"
    end
  end
end
