# Fomantic UI for Sass

`fomantic-ui-sass` is an Sass-powered version of [Fomantic UI](https://github.com/fomantic/Fomantic-UI) and ready to drop into Rails, Compass, or Sprockets.
It was forked from [`semantic-ui-sass`](https://github.com/doabit/semantic-ui-sass) to track Fomantic UI, a community fork of Semantic UI,
and is intended to be a drop-in replacement. The project keeps references to Semantic UI for that reason and because Fomantic UI intends to 
merge back into Semantic UI once active development of Semantic begins again.

[![Gem Version](https://badge.fury.io/rb/fomantic-ui-sass.svg)](https://badge.fury.io/rb/fomantic-ui-sass)
[![Build Status](https://travis-ci.org/shanecav84/fomantic-ui-sass.svg?branch=master)](https://travis-ci.org/shanecav84/fomantic-ui-sass)

## NOTE

The gem only has default theme.

## Installation and Usage

```ruby
gem 'fomantic-ui-sass'
```

`bundle install` and restart your server to make the files available through the pipeline.

# fomantic-ui-sass with Rails or Sprockets

## CSS

Import Semantic in an SCSS file (for example, `application.css.scss`) to get all of Semantic's styles

```css
@import "semantic-ui";
```

You can also include modules

```css
@import "semantic-ui/collections/menu";
```

## Custom font

```scss
$font-url: 'http://fonts.useso.com/css?family=Lato:400,700,400italic,700italic&subset=latin';
@import 'semantic-ui';
```

## Skip font loading
```scss
$import-google-fonts: false;
@import 'semantic-ui';
```

## Custom font family
```scss
$font-family: 'custom-font-family';
@import 'semantic-ui';
```

## All variables, you can custom any of that
```scss
$import-google-fonts: true !default;
$font-url: 'https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&subset=latin,latin-ext' !default;
$font-name: 'Lato' !default;
$font-family: $font-name, 'Helvetica Neue', Arial, Helvetica, sans-serif !default;
```

## Javascripts

We have a helper that includes all Semantic javascripts. Put this in your Javascript manifest (usually in `application.js`) to

```js
// Loads all Semantic javascripts
//= require semantic-ui
```

You can also load individual modules, provided you also require any dependencies.

```js
//= require semantic-ui/modal
//= require semantic-ui/dropdown
```

# fomantic-ui-sass with Compass

## New project

Install the gem and create a new project using the gem.

```console
gem install fomantic-ui-sass
compass create compass-project -r fomantic-ui-sass --using semantic-ui
```

This will sort a few things out:

* You'll get a starting `styles.scss`
* You'll get a compiled stylesheet compiled & ready to drop into your application
* We'll also copy the Semantic javascripts & images & fonts into their respective folders for you

## Existing project

Install the gem, add the require statement to the top of your configuration file, and install the extension.

```console
gem install fomantic-ui-sass
```

```ruby
# In config.rb
require 'fomantic-ui-sass'
```

```console
compass install semantic-ui
```

### NOTE

When using compass, you should visit file in local server, eg `http://localhost:3000/index.html`, rather than `file:///Users/doabit/demo/index.html`

# Rails Helpers

## Breadcrumbs helper

Add breadcrumbs helper `<%= semantic_breadcrumbs %>` to your layout.

```ruby
class ApplicationController
  semantic_breadcrumb :index, :root_path
end
```

```ruby
class ExamplesController < ApplicationController
  semantic_breadcrumb :index, :examples_path

  def index
  end

  def show
    @example = Example.find params[:id]
    semantic_breadcrumb @example.name, example_path(@example)
    # semantic_breadcrumb :show, example_path(@example)
  end
end
```

## Flash helper

Add flash helper `<%= semantic_flash %>` to your layout

## Icon helper

```ruby
semantic_icon('add')
# => <i class="add icon"></i>
semantic_icon(:add)
# => <i class="add icon"></i>
semantic_icon('add sign')
# => <i class="add sign icon"></i>
semantic_icon('add', 'sign')
# => <i class="add sign icon"></i>
semantic_icon(:add, :sign)
# => <i class="add sign icon"></i>
semantic_icon('add', id: 'id')
# => <i class="add icon" id="id"></i>
```

## TODO

* Add global variables
* Add rails helpers like `render_flash`?

## Versioning

The version for Fomantic-UI-SASS tracks the version for Fomantic-UI. The first
three digits indicate the major, minor, and patch version of Fomantic-UI. The fourth
digit indicates a patch release for Fomantic-UI-SASS.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
