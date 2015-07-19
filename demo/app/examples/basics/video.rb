module PIXI::Examples

class Video
  def initialize
    height = `window.innerHeight`
    width =  `window.innerWidth`

    renderer = PIXI::WebGLRenderer.new width, height, { "transparent" => true }
    body = Native(`window.document.body`)
    body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    # create a video texture from a path
    texture = PIXI::Texture.from_video('assets/testVideo.mp4')

    # create a new Sprite using the video texture (yes it's that easy)
    video_sprite = PIXI::Sprite.new(texture)

    video_sprite.width = renderer.width
    video_sprite.height = renderer.height

    # add the container to the stage
    stage.add_child(video_sprite)

    # start animating
    animate = Proc.new do
        `requestAnimationFrame(animate)`

        # render the container
        renderer.render stage
    end

    animate.call
  end
end

end
