module PIXI
  class Texture
    include Native

    def self.from_image(name)
      `PIXI.Texture.fromImage(name)`
    end
  end
end
