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


Upgrading
---------

Users of 0.x upgrading to 1.x should note that there were two breaking
changes in this release.

1. `@include ggs-wrapper` now expects a full css selector, not just a
   class name. Previouse use of `@include ggs-wrapper('wrapper')` should
   be updated to `@include ggs-wrapper('.wrapper')`
1. `@include ggs-margin-height` now provides a single line of margin on
   both the top and bottom of the element, not just on the top.

Usage
-----

### Variables ###

These variables are set by default, you can override them before
importing ggs.

* `$ggs-line`: Your base line-height. Defaults to 24
* `$ggs-font-size`: Your base font size. Defaults to 16
* `$ggs-8-column-breakpoint`: Width to switch from 4 columns to 8 columns.
Defaults to 45em
* `$ggs-16-column-breakpoint`: Width to switch from 8 columns to 16
columns. Defaults to 117em

### Functions ###

`ggs-column($multiplier, $out_of: 18)`: Returns a percentage that
represents the width of `$multiplier` columns on the page. Pass the
`$out_of` parameter in the case where an element is contained in a block
that does not span the entire width of the browser window.

`ggs-lineheight($multiplier)`: Returns an `em` value for `line-height`
times `$multiplier`.

### Mixins ###

#### For setting width and margins ####

`ggs-width($num_columns: 1, $out_of: 18)`: Sets element `width` to
proper percentage.

`ggs-margin-width($num_columns_left: 1, $num_columns_right: 1)`: Sets
`margin-left` and `margin-right` to the appropriate number of columns

`ggs-margin-left($num_columns: 1)` and `ggs-margin-right($num_columns:
1)`. Self explanatory.

`ggs-margin-height($top_multipler: 1, $bottom_multiplier: 1)`: Sets
`margin-top` and `margin-bottom` to the appropriate multplier of
`line-height`

`ggs-margin-top($multiplier: 1)` and `ggs-margin-bottom($multipler: 1)`.
Self explanatory.

#### For easy media queries ####

These mixins take a block that will serve as the body of the media query

`ggs-4-columns-max`: `@media screen and (max-width:
$ggs-8-column-breakpoint)`

`ggs-8-columns`: `@media screen and (min-width:
$ggs-8-column-breakpoint)`

`ggs-8-columns-max`: `@media screen and (max-width:
$ggs-16-column-breakpoint)`

`ggs-16-columns`: `@media screen and (min-width:
$ggs-16-column-breakpoint)`

`ggs-media-width($min-width)`: `@media screen and (min-width:
$min-width)`

`ggs-media-width-max($max-width)`: `@media screen and (max-width:
$max-width)`

`ggs-media-width-range($min-width, $max-width)`: `@media screen and
(min-width: $min-width) and (max-width: $max-width)`
