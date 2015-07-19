require 'opal/pixi/core/math/point'

module PIXI
  module DisplayObject
    include Native

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=

    alias_native :position,    :position,   as: Point
    alias_native :position=
    alias_native :scale,     :scale,     as: Point
    alias_native :scale=
    alias_native :pivot,     :pivot,     as: Point
    alias_native :pivot=
    alias_native :rotation
    alias_native :rotation=
    alias_native :alpha
    alias_native :alpha=
    alias_native :visible
    alias_native :visible=
    alias_native :renderable
    alias_native :renderable=

    alias_native :parent
    alias_native :world_alpha, :worldAlpha
    alias_native :world_transform, :worldTransform

    alias_native :filter_area, :filterArea
    alias_native :filter_area=

    alias_native :world_visible, :worldVisible
    alias_native :mask
    alias_native :mask=

    alias_native :filters
    alias_native :filters=

  end
end
