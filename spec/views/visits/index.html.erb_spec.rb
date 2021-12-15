# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'visits/index', type: :view do
  before(:each) do
    assign(:visits, [
             Visit.create!(
               problem: 'Problem'
             ),
             Visit.create!(
               problem: 'Problem'
             )
           ])
  end

  it 'renders a list of visits' do
    render
    assert_select 'tr>td', text: 'Problem'.to_s, count: 2
  end
end
