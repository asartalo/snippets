# Useful when using turbolinks

# Load and unload depending if elements exist on the page
#
# e.g.
# turboload 'carousel',
#   (element) ->
#     element.slick()
#   (element) ->
#     element.unslick()
#
@turboload = (selector, loader, unloader) ->
  $(document).on 'ready turbolinks:load', (e) ->
    elements = $(selector)
    if elements.length > 0 && loader
      loader(elements, e)

  if unloader
    $(document).on 'turbolinks:unload', (e) ->
      elements = $(selector)
      if elements.length > 0
        unloader(elements, e)

