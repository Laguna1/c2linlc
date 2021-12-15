require 'rails_helper'

RSpec.describe "apointments/new", type: :view do
  before(:each) do
    assign(:apointment, Apointment.new(
      visit: nil,
      receipt: "MyText"
    ))
  end

  it "renders new apointment form" do
    render

    assert_select "form[action=?][method=?]", apointments_path, "post" do

      assert_select "input[name=?]", "apointment[visit_id]"

      assert_select "textarea[name=?]", "apointment[receipt]"
    end
  end
end
