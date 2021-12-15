require 'rails_helper'

RSpec.describe "apointments/edit", type: :view do
  before(:each) do
    @apointment = assign(:apointment, Apointment.create!(
      visit: nil,
      receipt: "MyText"
    ))
  end

  it "renders the edit apointment form" do
    render

    assert_select "form[action=?][method=?]", apointment_path(@apointment), "post" do

      assert_select "input[name=?]", "apointment[visit_id]"

      assert_select "textarea[name=?]", "apointment[receipt]"
    end
  end
end
