require 'spec_helper'

describe "lecturers/new" do
  before(:each) do
    assign(:lecturer, stub_model(Lecturer,
      :name => "MyString",
      :details => "MyText",
      :rate => "9.99",
      :user_id => 1,
      :college_id => 1,
      :data => "MyString"
    ).as_new_record)
  end

  it "renders new lecturer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lecturers_path, "post" do
      assert_select "input#lecturer_name[name=?]", "lecturer[name]"
      assert_select "textarea#lecturer_details[name=?]", "lecturer[details]"
      assert_select "input#lecturer_rate[name=?]", "lecturer[rate]"
      assert_select "input#lecturer_user_id[name=?]", "lecturer[user_id]"
      assert_select "input#lecturer_college_id[name=?]", "lecturer[college_id]"
      assert_select "input#lecturer_data[name=?]", "lecturer[data]"
    end
  end
end
