require 'spec_helper'

describe "events/edit.html.haml" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :new_record? => false,
      :name => "MyString",
      :description => "",
      :user_id => 1
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => event_path(@event), :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "input#event_description", :name => "event[description]"
      assert_select "input#event_user_id", :name => "event[user_id]"
    end
  end
end
