colors = require 'colors'

initCommands = (program)->

	program
		.command('nlp')
		.description('Natural Language Processing Utilities')
		.option('-d, --detect-lang <text>', 'Detect language')
		.action (options) ->

			NLP = require('./nlp')

			if options.detectLang

				NLP.detectLanguage({ text: options.detectLang })
				.then(console.log)

module.exports = initCommands