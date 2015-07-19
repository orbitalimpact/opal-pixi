module PIXI
  class RenderTexture
    include Native

    # def initialize(renderer, width=100, height=100, scaleMode=`CONST.SCALE_MODES.DEFAULT`, resolution=1)
    #   super(`new PIXI.RenderTexture(renderer, width, height, scaleMode, resolution)`)
    # end
    def initialize(native_or_renderer)
      if native?(native_or_renderer)
        super
      else
        super(`new PIXI.RenderTexture(#{native_or_renderer.to_n})`)
      end
    end


    alias_native :render

  end
end
