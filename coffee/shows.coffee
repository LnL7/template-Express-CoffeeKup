App.showsController = Em.ArrayProxy.create
	content: []
	add: (name) ->
		@pushObject Em.Object.create
			name: name

	init: ->
		@_super()
		@add 'Fringe'
		@add 'Game of Thrones'
		@add 'NCIS'

App.ShowsView = Em.View.extend
	templateName: 'shows'
