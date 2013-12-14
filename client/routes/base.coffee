Router.configure

  layoutTemplate: 'layout'

  notFoundTemplate: 'errors404'

  loadingTemplate: 'loading'

Router.map ->

  @route 'loading', path: '/loading'

  @route 'home',
    path: '/'
    waitOn: ->
      [Meteor.subscribe('images'), Meteor.subscribe('messages')]
    data: ->
      Messages.find {}, sort: {createdAt: 1}

  @route 'upload',
    path: '/upload'
    data: ->
      {title: ''}

  @route 'uploaded',
    path: '/uploaded'