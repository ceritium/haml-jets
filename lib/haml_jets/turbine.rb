require 'action_view'
require 'haml'
require 'haml/plugin'
require 'haml/template'

module HamlJets
  class Turbine < ::Jets::Turbine
    initializer 'haml.register' do
      ActionView::Template.register_template_handler(:haml, Haml::Plugin)
    end
  end
end
