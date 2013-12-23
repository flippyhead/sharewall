Template.images.events

  'click [data-ref=destroy]': (e) ->
    e.preventDefault()
    return unless confirm("Are you sure?")

    Meteor.call 'destroyImage', @_id, (error, id) ->
      return alert(error.reason) if error
      Router.go 'images'

  'click [data-ref=promote]': (e) ->
    e.preventDefault()

    Meteor.call 'promoteImage', @_id, (error, id) ->
      return alert(error.reason) if error
      Router.go 'images'