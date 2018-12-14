require File.dirname(__FILE__) + '/breadcrumbs.rb'
module Fomantic
  module Ui
    module Sass
      module Rails
        class Engine < ::Rails::Engine
          initializer 'fomantic-ui-sass.assets.precompile' do |app|
            if ::Rails.version >= '5' || ::Sprockets::VERSION.start_with?('4')
              ::Rails.application.config.assets.precompile += %w[semantic-ui/*icons.*]
            else
              app.config.assets.precompile << %r{semantic-ui\/(basic\.)*icons\.(?:eot|svg|ttf|woff)$}
            end
          end
          initializer 'fomantic-ui-sass.setup_helpers' do |app|
            app.config.to_prepare do
              ActionController::Base.send :include, Fomantic::Ui::Sass::BreadCrumbs
            end
          end
        end
      end
    end
  end
end
