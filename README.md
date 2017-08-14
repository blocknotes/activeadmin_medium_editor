# ActiveAdmin Medium Editor [![Gem Version](https://badge.fury.io/rb/activeadmin_medium_editor.svg)](https://badge.fury.io/rb/activeadmin_medium_editor)

An Active Admin plugin to use [medium-editor](https://github.com/yabwe/medium-editor).

## Install

- Add to your Gemfile:
`gem 'activeadmin_medium_editor'`
- Execute bundle
- Add at the end of your ActiveAdmin styles (_app/assets/stylesheets/active_admin.scss_):
```css
@import 'activeadmin/medium_editor_input';
@import 'activeadmin/medium_editor/themes/default'; // or another theme
```
- Add at the end of your ActiveAdmin javascripts (_app/assets/javascripts/active_admin.js_):
```js
//= require activeadmin/medium_editor/medium_editor
//= require activeadmin/medium_editor_input
```
- Use the input with `as: :medium_editor` in Active Admin model conf

Why 2 separated scripts? In this way you can include a different version of *medium-editor* if you like.

## Notes

**data-options** optional attribute permits to set *medium-editor* options directly - [options list](https://github.com/yabwe/medium-editor#mediumeditor-options)

## Example

```ruby
# ActiveAdmin article form conf:
  form do |f|
    f.inputs 'Article' do
      f.input :title
      f.input :description, as: :medium_editor, input_html: { 'data-options': '{"toolbar":{"buttons":["bold","italic","underline","anchor"]}}' }
      f.input :published
    end
    f.actions
  end
```

## Contributors

- [Mattia Roccoberton](http://blocknot.es) - creator, maintainer

## License

[MIT](LICENSE.txt)
