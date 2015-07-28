module PIXI
  class RenderTexture
    include Native

    def initialize(native_or_renderer, width=100, height=100, scaleMode=`CONST.SCALE_MODES.DEFAULT`, resolution=1)
      if native?(native_or_renderer)
        super
      else
        super(`new PIXI.RenderTexture(#{native_or_renderer.to_n}, width, height, scaleMode, resolution)`)
      end
    end


    alias_native :render

  end
end
