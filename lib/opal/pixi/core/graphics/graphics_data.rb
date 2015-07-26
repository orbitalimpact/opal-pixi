module PIXI
  class GraphicsData
    include Native

    def initialize(lineWidth, lineColor, lineAlpha, fillColor, fillAlpha, fill, shape)
      super(`new PIXI.GraphicsData(lineWidth, lineColor, lineAlpha, fillColor, fillAlpha, fill, shape)`)
    end

    alias_native :line_width, :lineWidth
    alias_native :line_color, :lineColor
    alias_native :line_alpha, :lineAlpha
    alias_native :fill_color, :fillColor
    alias_native :fill_alpha, :fillAlpha
    alias_native :fill
    alias_native :shape
    alias_native :type

  end
end
