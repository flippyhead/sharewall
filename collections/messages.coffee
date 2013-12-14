@Messages = new Meteor.Collection 'messages'

Meteor.methods
  addMessage: (body) ->
    createdAt = new Date().getTime()
    Messages.insert {body, createdAt}