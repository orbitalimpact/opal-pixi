require 'opal/pixi/core/math/point'

module PIXI::Mesh
  class Rope < PIXI::Mesh::Mesh
    include Native

    def initialize(texture, points)
      super(`new PIXI.mesh.Rope(#{texture.to_n}, #{points.to_n})`)
    end

    alias_native :position

  end
end
