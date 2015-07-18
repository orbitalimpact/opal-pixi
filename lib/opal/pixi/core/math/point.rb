module PIXI
  class Point
    include Native

    def self.new(x_or_native , y)
      if native?(x_or_native)
        super(x_or_native)
      else
        super(`new PIXI.Point(x_or_native, y)`)
      end
    end

    alias_native :x
    alias_native :x=
    alias_native :y
    alias_native :y=

  end
end
