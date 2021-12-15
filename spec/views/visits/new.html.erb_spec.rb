require 'rails_helper'

RSpec.describe "visits/new", type: :view do
  before(:each) do
    assign(:visit, Visit.new(
      problem: "MyString"
    ))
  end

  it "renders new visit form" do
    render

    assert_select "form[action=?][method=?]", visits_path, "post" do

      assert_select "input[name=?]", "visit[problem]"
    end
  end
end
