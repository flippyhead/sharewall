Meteor.publish 'images', -> Images.find()
Meteor.publish 'messages', ->
  Messages.find {},
    limit: 5
    sort: {createdAt: -1}