require 'opal/pixi/core/math/point'

module PIXI
  module DisplayObject
    include Native

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=

    alias_native :world_visible, :worldVisible
    alias_native :mask
    alias_native :filters

    alias_native :anchor,      :anchor,     as: Point
    alias_native :anchor=

    alias_native :position,    :position,   as: Point
    alias_native :position=

    alias_native :scale,     :scale,     as: Point
    alias_native :scale=

    alias_native :rotation
    alias_native :rotation=

    alias_native :alpha
    alias_native :alpha=

    alias_native :interactive=
    alias_native :on

    alias_native :visible
    alias_native :renderable



  end
end
