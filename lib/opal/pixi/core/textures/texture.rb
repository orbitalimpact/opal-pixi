module PIXI
  class Texture
    include Native

    def self.from_image(name)
      new(`PIXI.Texture.fromImage(name)`)
    end

    def self.from_frame(name)
      new(`PIXI.Texture.fromFrame(name)`)
    end

    def self.from_video(name)
      new(`PIXI.Texture.fromVideo(name)`)
    end

  end
end
