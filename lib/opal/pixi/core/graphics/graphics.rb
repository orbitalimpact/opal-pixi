require 'opal/pixi/core/display/display_object'

module PIXI
  class Graphics < Container
    include Native

    def initialize
      super(`new PIXI.Graphics()`)
    end

    alias_native :fill_alpha, :fillAlpha
    alias_native :line_width, :lineWidth
    alias_native :line_color, :lineColor
    alias_native :tint
    alias_native :is_mask, :isMask
    alias_native :bounds_padding, :boundsPadding
    alias_native :clone
    alias_native :line_style, :lineStyle
    alias_native :move_to, :moveTo
    alias_native :line_to, :lineTo
    alias_native :quadratic_curve_to, :quadraticCurveTo
    alias_native :bezier_curve_to, :bezierCurveTo
    alias_native :arc_to, :arcTo
    alias_native :arc
    alias_native :begin_fill, :beginFill
    alias_native :end_fill, :endFill
    alias_native :draw_rect, :drawRect
    alias_native :draw_rounded_rect, :drawRoundedRect
    alias_native :draw_circle, :drawCircle
    alias_native :draw_ellipse, :drawEllipse
    alias_native :draw_polygon, :drawPolygon
    alias_native :clear
    alias_native :generate_texture, :generateTexture
    alias_native :get_bounds, :getBounds
    alias_native :contains_point, :containsPoint
    alias_native :update_local_bounds, :updateLocalBounds
    alias_native :draw_shape, :drawShape
    alias_native :destroy

  end
end
