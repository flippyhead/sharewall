Meteor.publish 'images', ->
  Images.find {},
    limit: 20
    sort: {createdAt: -1}
Meteor.publish 'messages', ->
  Messages.find {},
    limit: 5
    sort: {createdAt: -1}