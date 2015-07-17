module PIXI
  class CanvasRenderer
    include Native

    def initialize(w_or_native, height, options)
      if native?(w_or_native)
        super(w_or_native)
      else
        super(`new PIXI.CanvasRenderer(w_or_native, height, #{ options.to_n })`)
      end
    end

    alias_native :width
    alias_native :height
  end
end
