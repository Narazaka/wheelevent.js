### (C) 2015 Narazaka : Licensed under The MIT License - http://narazaka.net/license/MIT?2015 ###
wheel_event_name =
  if 'onwheel' of document
    'wheel'
  else if 'onmousewheel' of document
    'mousewheel'
  else
    'DOMMouseScroll'

@wheelevent = (dom, onWheel) ->

  _onWheel = (event) ->
    event ?= window.event

    delta =
      if event.deltaY?
        event.deltaY
      else if event.wheelDelta
        - event.wheelDelta
      else
        event.detail

    if delta != 0
      onWheel(event, delta)

  try
    dom.addEventListener(wheel_event_name, _onWheel, false)
  catch
    dom.attachEvent('onmousewheel', _onWheel)
