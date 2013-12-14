Template.message.helpers
  time: ->
    new Date(@createdAt).toISOString()

Template.message.rendered = ->
  $("time").timeago()