module PIXI
  class Circle
    include Native

    def self.new(x_or_native, y, radius)
      if native?(x_or_native)
        super(x_or_native)
      else
        super(`new PIXI.Circle(x_or_native, y, radius)`)
      end
    end

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=
    alias_native :radius
    alias_native :radius=
    alias_native :type

    alias_native :clone
    alias_native :contains
    alias_native :get_bounds, :getBounds

  end
end
