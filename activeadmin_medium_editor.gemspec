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

  spec.files         = Dir['{app,lib}/**/*', 'LICENSE.txt', 'Rakefile', 'README.md']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activeadmin', '~> 2.0'

  spec.add_development_dependency 'activestorage', '~> 6.0.3.2'
  spec.add_development_dependency 'capybara', '~> 3.33.0'
  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'puma', '~> 4.3.5'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4.1'
  spec.add_development_dependency 'rspec-rails', '~> 4.0.1'
  spec.add_development_dependency 'rubocop', '~> 0.90.0'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.142.7'
  spec.add_development_dependency 'sqlite3', '~> 1.4.2'
end
