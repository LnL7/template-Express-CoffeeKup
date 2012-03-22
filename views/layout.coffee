html ->
	head ->
		title @title
		for f in ['reset', 'grid', 'typography', 'form']
			link rel: 'stylesheet', type: 'text/css', href: '/css/lib/' + f + '.css'

		for f in ['jquery', 'ember']
			script type: 'text/javascript', src: "/js/lib/" + f + ".js"

		coffeescript ->
			@App = Em.Application.create()

		for f in []
			script type: 'text/x-handlebars', 'data-template-name': f, ->
				partial '_' + f

			script type: 'text/javascript', src:"/js/" + f + ".js"

	body ->
		div @body
