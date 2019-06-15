# frozen_string_literal: true

module Formtastic
  module Inputs
    class MediumEditorInput < Formtastic::Inputs::TextInput
      def input_html_options
        super.merge(class: 'medium-editor')
      end
    end
  end
end
