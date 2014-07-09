truncate = require 'html-truncate'

module.exports = class TruncatePlugin

  constructor: (options={}) ->
    throw 'TruncatePlugin requires hbs' unless options.hbs?

    # This is the _Server-side_ version of Handlebars (hbs)
    options.hbs.registerHelper 'html-truncate', (text='', length=20) ->
      new options.hbs.handlebars.SafeString truncate(text, length)
