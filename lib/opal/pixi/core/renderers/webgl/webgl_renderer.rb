module PIXI
  class WebGLRenderer
    include Native

    #def initialize(arg_hash = {}, &block)
    def initialize(width, height, options)

      %{
        var options = {
          backgroundColor: #{options[:background_color]}
        }
      }

      @native = %x{
        new PIXI.WebGLRenderer(width, height, { backgroundColor : 0x1099bb })
      }
    end

    alias_native :view
    alias_native :width
    alias_native :height
    alias_native :children
    alias_native :render

  end
end
