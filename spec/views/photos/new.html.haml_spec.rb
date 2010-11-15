require 'spec_helper'

describe "photos/new.html.haml" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :name => "MyString",
      :description => "MyText",
      :friendly_file_name => "MyString",
      :user_id => 1,
      :event_id => 1
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => photos_path, :method => "post" do
      assert_select "input#photo_name", :name => "photo[name]"
      assert_select "textarea#photo_description", :name => "photo[description]"
      assert_select "input#photo_friendly_file_name", :name => "photo[friendly_file_name]"
      assert_select "input#photo_user_id", :name => "photo[user_id]"
      assert_select "input#photo_event_id", :name => "photo[event_id]"
    end
  end
end
