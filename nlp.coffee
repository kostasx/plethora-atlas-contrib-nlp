franc  = require 'franc'
colors = require 'colors'

NLP =

	detectLanguage: (options)->

		new Promise((resolve, reject)->

			resolve( lang: franc(options.text) )

		) 

module.exports = NLP

