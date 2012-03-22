html ->
	head ->
		title @title
		for f in ['jquery', 'ember']
			script type: 'text/javascript', src: "/js/lib/" + f + ".js"

		script type: 'text/javascript', '(function(){ this.App = Em.Application.create(); }).call(this);'

		for f in ['shows']
			script type: 'text/x-handlebars', 'data-template-name': f, ->
				partial '_' + f

			script type: 'text/javascript', src:"/js/" + f + ".js"

	body ->
			@body
