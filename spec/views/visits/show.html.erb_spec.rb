require 'rails_helper'

RSpec.describe "visits/show", type: :view do
  before(:each) do
    @visit = assign(:visit, Visit.create!(
      problem: "Problem"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Problem/)
  end
end
