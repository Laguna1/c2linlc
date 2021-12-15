require 'rails_helper'

RSpec.describe "apointments/show", type: :view do
  before(:each) do
    @apointment = assign(:apointment, Apointment.create!(
      visit: nil,
      receipt: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
