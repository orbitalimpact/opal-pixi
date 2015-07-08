require 'native'
module PIXI
  class WebGLRenderer  #< `PIXI.WebGLRenderer`
    include Native

    def initialize(w_or_native, height, options)
      if native?(w_or_native)
        super(w_or_native)
      else
        super(`new PIXI.WebGLRenderer(w_or_native, height , #{ options.to_n })`)
      end
    end

    alias_native :render
    alias_native :view
    alias_native :width

  end
end
