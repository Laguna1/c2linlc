# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'visits/edit', type: :view do
  before(:each) do
    @visit = assign(:visit, Visit.create!(
                              problem: 'MyString'
                            ))
  end

  it 'renders the edit visit form' do
    render

    assert_select 'form[action=?][method=?]', visit_path(@visit), 'post' do
      assert_select 'input[name=?]', 'visit[problem]'
    end
  end
end
