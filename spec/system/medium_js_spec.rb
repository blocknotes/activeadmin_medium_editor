# frozen_string_literal: true

RSpec.describe 'Medium JS', type: :system do
  it 'defines a Javascript object for the editor', :aggregate_failures do
    visit '/admin/posts'

    expect(page.evaluate_script('typeof MediumEditor')).to eq 'function'
    expect(page.evaluate_script('MediumEditor.version.toString()')).to eq ActiveAdmin::MediumEditor::MEDIUM_VERSION
  end
end
