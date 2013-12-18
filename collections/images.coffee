@Images = new Meteor.Collection 'images'

Meteor.methods
  addImage: (url, context) ->
    {title} = context
    createdAt = new Date().getTime()
    Images.insert({url, title, createdAt})