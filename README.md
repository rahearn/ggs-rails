ggs-rails
=========

A collection of [SASS](http://sass-lang.com/) mixins for easy
implementation of the [Golden Grid System](http://goldengridsystem.com/).

Installation
------------

Add `ggs-rails` to the `:assets` group of your Rails application.

    group :assets do
      gem 'ggs-rails'
    end

Usage
-----

### Variables ###

These variables are set by default, you can override them before
importing ggs.

`$ggs-line`: Your base line-height. Defaults to 24
`$ggs-font-size`: Your base font size. Defaults to 16

### Functions ###

`ggs-column($multiplier, $out_of: 18)`: Returns a percentage that
represents the width of `$multiplier` columns on the page. Pass the
`$out_of` parameter in the case where an element is contained in a block
that does not span the entire width of the browser window.

`ggs-lineheight($multiplier)`: Returns an `em` value for `line-height`
times `$multiplier`.

### Mixins ###

`ggs-width($num_columns: 1, $out_of: 18)`: Sets element `width` to
proper percentage.

`ggs-margin-width($num_columns_left: 1, $num_columns_right: 1)`: Sets
`margin-left` and `margin-right` to the appropriate number of columns

`ggs-margin-left($num_columns: 1)` and `ggs-margin-right($num_columns:
1)`. Self explanatory.

`ggs-margin-height($top_multipler: 1, $bottom_multiplier: 0)`: Sets
`margin-top` and `margin-bottom` to the appropriate multplier of
`line-height`

`ggs-margin-top($multiplier: 1)` and `ggs-margin-bottom($multipler: 1)`.
Self explanatory.
