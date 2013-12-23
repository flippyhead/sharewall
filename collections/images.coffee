@Images = new Meteor.Collection 'images'

Meteor.methods
  addImage: (url, context) ->
    {title} = context
    createdAt = new Date().getTime()
    Images.insert({url, title, createdAt})

  destroyImage: (id) ->
    Images.remove(id)

  promoteImage: (id) ->
    Images.update id, $set: {createdAt: new Date().getTime()}