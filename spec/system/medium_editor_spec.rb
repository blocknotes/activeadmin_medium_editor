# frozen_string_literal: true

RSpec.describe 'MediumEditor', type: :system do
  let(:author) { Author.create!(email: 'some_email@example.com', name: 'John Doe', age: 30) }
  let(:post) { Post.create!(title: 'Test', author: author, description: 'Some content...') }

  before do
    post
  end

  after do
    post.destroy
    author.destroy
  end

  context 'with a medium editor' do
    it 'updates some HTML content' do
      visit "/admin/posts/#{post.id}/edit"

      expect(page).to have_css('#post_description_input .medium-editor-element', text: 'Some content...')
      find('#post_description_input .medium-editor-element').base.send_keys(" more text")

      find('[type="submit"]').click
      expect(page).to have_content('was successfully updated')
      expect(post.reload.description).to match /Some content.*more text/
    end
  end
end
