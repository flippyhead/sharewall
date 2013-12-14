Template.upload.events
  'keydown [name=title]': (e) ->
    @title = e.target.value

  'change input[type=file]': ->
    Router.go 'uploaded'

  'submit form#message': (e) ->
    e.preventDefault()

    body = $(e.target).find('[name=message]').val()

    Meteor.call 'addMessage', body, (error, id) ->
      return alert(error.reason) if error
      Router.go 'uploaded'