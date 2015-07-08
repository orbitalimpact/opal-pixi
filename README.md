## Ruby wrapper for the Pixi.js graphical library

### Pixi.js - A 2D JavaScript Renderer

- WebGl renderer with canvas fallback
- "it's fast. Really fast"

Pixie has a nice set of features to bake graphics and even move them around.
It's low-ish level, but very useful and **fast** .

See the [Pixi's docs](http://pixijs.github.io/docs/) or a post about
[Version 3](http://www.goodboydigital.com/pixi-js-v3/)


### Ruby wrapper

The wrapper is off course done with Opal, but there are no further dependencies.

The project is quite jung, so better to help than expect.

### Usage

Check out the [demo code](https://github.com/orbitalimpact/opal-pixi/blob/master/demo/app/main.rb)
and read the [pixi resources](https://github.com/GoodBoyDigital/pixi.js/wiki/Resources)

Two main components are needed, a Stage and a Renderer. You can add things to display to a stage,
like Sprites (with texture) and all sorts of objects and collections thereof.

And then you can get the view element from the renderer and add it to your dom.

### Demo

There is a small demo in the demo directory. To run it clone the repository,

```
cd demo
bundle
bundle exec rackup
```

and go to localhost:9292
