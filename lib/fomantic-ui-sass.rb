module Fomantic
  module Ui
    module Sass
      class FrameworkNotFound < StandardError; end
      class << self
        def load!
          if defined?(::Rails)
            require 'fomantic/ui/sass/engine'
          elsif defined?(::Sprockets)
            Sprockets.append_path(stylesheets_path)
            Sprockets.append_path(fonts_path)
            Sprockets.append_path(images_path)
            Sprockets.append_path(javascripts_path)
          end

          configure_sass
          unless defined?(::Rails) || defined?(::Sprockets)
            raise Fomantic::Ui::Sass::FrameworkNotFound, 'fomantic-ui-sass requires either Rails > 3.1 or Sprockets, neither of which are loaded'
          end
        end

        # Paths
        def gem_path
          @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
        end

        def templates_path
          File.join(gem_path, 'templates')
        end

        def assets_path
          @assets_path ||= File.join(gem_path, 'app', 'assets')
        end

        def fonts_path
          File.join(assets_path, 'fonts')
        end

        def images_path
          File.join(assets_path, 'images')
        end

        def javascripts_path
          File.join(assets_path, 'javascripts')
        end

        def stylesheets_path
          File.join(assets_path, 'stylesheets')
        end

        def configure_sass
          require 'sass'
          ::Sass.load_paths << stylesheets_path
        end
      end
    end
  end
end
Fomantic::Ui::Sass.load!
