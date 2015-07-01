module PIXI
  class WebGLRenderer
    include Native
    #def initialize(arg_hash = {}, &block)
    def initialize(width, height, options)

      #width       = arg_hash.fetch(:width) { 800 }
      #height      = arg_hash.fetch(:height) { 600 }

      @native = %x{
        new PIXI.WebGLRenderer(width, height, options)
      }
    end

    alias_native :width
    alias_native :height
    alias_native :children

    def background_color=(color)
      `#@native.backgroundColor = color`
    end

  end
end
