Template.wall.rendered = ->
    length = 0

    Galleria.ready ->
      galleria = @

      Images.find().observe
        added: (image) ->
          html = """
            <div class="galleria-info" style="opacity: 1; display: block; -webkit-transition: none; transition: none;">
              <div class="galleria-info-text" style="width: 375px;">
                <div class="galleria-info-title" style="display: inline-block;">
                  #{image.title}
                </div>
              </div>
            </div>
          """ if image.title
          galleria.push(image: image.url, layer: html)

      galleria.bind 'thumbnail', (e) ->
        if length < galleria.getDataLength()
          length = galleria.getDataLength()
          galleria.show length

    theme = '/packages/galleria/galleria/themes/fullscreen/galleria.fullscreen.min'
    Galleria.loadTheme theme

    Galleria.run '#galleria',
      showInfo: on
      _toggleInfo: off
      transition: 'fade'
      autoplay: 10000
      fullscreenCrop: off
      imageCrop: off