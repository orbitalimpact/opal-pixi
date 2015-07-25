module PIXI
  class RoundedRectangle < Rectange
    include Native

    def self.new(x_or_native, y, width, height, radius)
      if native?(x_or_native)
        super(x_or_native)
      else
        super(`new PIXI.Rectangle(x_or_native, y, width, height, radius)`)
      end
    end

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
    alias_native :width
    alias_native :width=
    alias_native :height
    alias_native :height=
    alias_native :radius
    alias_native :radius=
    alias_native :type

    alias_native :clone
    alias_native :contains

  end
end
