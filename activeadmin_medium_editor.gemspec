# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin/medium_editor/version'

Gem::Specification.new do |spec|
  spec.name          = 'activeadmin_medium_editor'
  spec.version       = ActiveAdmin::MediumEditor::VERSION
  spec.summary       = 'medium-editor for ActiveAdmin'
  spec.description   = 'An Active Admin plugin to use Medium Editor'
  spec.license       = 'MIT'
  spec.authors       = ['Mattia Roccoberton']
  spec.email         = 'mat@blocknot.es'
  spec.homepage      = 'https://github.com/blocknotes/activeadmin_medium_editor'

  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['changelog_uri']   = 'https://github.com/blocknotes/activeadmin_medium_editor/blob/master/CHANGELOG.md'
  spec.metadata['source_code_uri'] = spec.homepage

  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files         = Dir['{app,lib}/**/*', 'LICENSE.txt', 'Rakefile', 'README.md']
  spec.require_paths = ['lib']

  spec.add_dependency 'activeadmin', '>= 2.0'
end
