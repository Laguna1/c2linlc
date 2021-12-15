require 'rails_helper'

RSpec.describe "apointments/index", type: :view do
  before(:each) do
    assign(:apointments, [
      Apointment.create!(
        visit: nil,
        receipt: "MyText"
      ),
      Apointment.create!(
        visit: nil,
        receipt: "MyText"
      )
    ])
  end

  it "renders a list of apointments" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
