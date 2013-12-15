Router.configure

  layoutTemplate: 'layout'

  notFoundTemplate: 'errors404'

  loadingTemplate: 'loading'

Router.map ->

  @route 'loading', path: '/loading'

  @route 'wall',
    path: '/wall'
    waitOn: ->
      [Meteor.subscribe('images'), Meteor.subscribe('messages')]
    data: ->
      Messages.find {}, sort: {createdAt: 1}

  @route 'share',
    path: '/'
    data: ->
      {title: ''}

  @route 'shared',
    path: '/shared'