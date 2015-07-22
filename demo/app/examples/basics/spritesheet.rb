module PIXI::Examples

class SpriteSheet < PIXI::Examples::Base
  def initialize(menu, renderer)
    height = `window.innerHeight`
    width =  `window.innerWidth`

    # renderer = PIXI::WebGLRenderer.new width, height
    # body = Native(`window.document.body`)
    # body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    # define any variables that are used in more than one function
    movie = nil

    # start animating
    animate = Proc.new do
      movie.rotation += 0.01
      # render the container
      renderer.render stage
      `requestAnimationFrame(animate)`
    end

    on_assets_loaded = Proc.new do
      # create an array of textures from an image path
      frames = []

      (0...30).each do |i|
        val = sprintf '%02d', i
        # magically works since the spritesheet was loaded with the pixi loader
        frames << PIXI::Texture.from_frame('rollSequence00' + val + '.png')
      end

      # create a MovieClip (brings back memories from the days of Flash, right ?)
      movie = PIXI::Extras::MovieClip.new(frames)

      # A MovieClip inherits all the properties of a PIXI sprite
      # so you can change its position, its anchor, mask it, etc
      movie.position = PIXI::Point.new(width/2,height/2)
      movie.anchor = PIXI::Point.new(0.5,0.5)
      movie.animation_speed = 0.5
      movie.play

      stage.add_child(movie)

      # add the menu
      stage.add_child(menu)

      animate.call
    end

    `PIXI.loader.add('assets/fighter.json').load(on_assets_loaded)`

    @destroy = Proc.new {

    }

  end
end

end
