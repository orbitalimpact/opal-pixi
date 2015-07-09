module PIXI
  class Text
    include Native

    # options according to http://pixijs.github.io/docs/PIXI.Text.html
    def initialize(x_or_native, y)
      if native?(x_or_native)
        super(x_or_native)
      else
        super(`new PIXI.Text(x_or_native,y)`)
      end
    end

    alias_native :width
    alias_native :position, :position, as: Point

    def position=(p)
      `#@native.position = #{p.to_n}`
    end

    def text=(t)
      `#@native.text = t`
    end


  end
end
