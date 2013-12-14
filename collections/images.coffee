@Images = new Meteor.Collection 'images'

Meteor.methods
  addImage: (url, context) ->
    {title} = context
    Images.insert({url, title})