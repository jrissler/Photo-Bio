require 'spec_helper'

describe "pages/new.html.haml" do
  before(:each) do
    assign(:page, stub_model(Page,
      :title => "MyString",
      :content => "MyText",
      :author => 1
    ).as_new_record)
  end

  it "renders new page form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => pages_path, :method => "post" do
      assert_select "input#page_title", :name => "page[title]"
      assert_select "textarea#page_content", :name => "page[content]"
      assert_select "input#page_author", :name => "page[author]"
    end
  end
end
