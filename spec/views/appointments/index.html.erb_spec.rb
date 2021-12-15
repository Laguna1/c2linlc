require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        visit: nil,
        receipt: "MyText"
      ),
      Appointment.create!(
        visit: nil,
        receipt: "MyText"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
