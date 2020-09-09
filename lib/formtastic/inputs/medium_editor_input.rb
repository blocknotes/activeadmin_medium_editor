# frozen_string_literal: true

module Formtastic
  module Inputs
    class MediumEditorInput < Formtastic::Inputs::TextInput
      def input_html_options
        super.merge('data-aa-medium-editor': '1')
      end
    end
  end
end
