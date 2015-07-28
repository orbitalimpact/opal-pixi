module PIXI
  class Matrix
    include Native

    def self.new(x_or_native, y)
      if native?(x_or_native)
        super(x_or_native)
      else
        super(`new PIXI.Matrix(x_or_native, y)`)
      end
    end

    alias_native :a
    alias_native :a=
    alias_native :b
    alias_native :b=
    alias_native :c
    alias_native :c=
    alias_native :d
    alias_native :d=
    alias_native :tx
    alias_native :tx=
    alias_native :ty
    alias_native :ty=

    alias_native :from_array, :fromArray
    alias_native :to_array, :toArray
    alias_native :apply
    alias_native :apply_inverse, :applyInverse
    alias_native :translate
    alias_native :scale
    alias_native :rotate
    alias_native :append
    alias_native :prepend
    alias_native :invert
    alias_native :identity


  end
end
