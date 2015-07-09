module PIXI
  class Graphics #< `PIXI.Graphics`
    include Native

    def initialize
      super(`new PIXI.Graphics()`)
    end

    alias_native :height
    alias_native :isMask
    alias_native :lineColor
    alias_native :lineWidth

    alias_native :worldVisible
    alias_native :clear
    alias_native :beginFill
    alias_native :lineStyle

    alias_native :moveTo
    alias_native :quadraticCurveTo
    alias_native :drawRect
    alias_native :bezierCurveTo
    alias_native :lineTo

    alias_native :add_child, :addChild

  end
end
