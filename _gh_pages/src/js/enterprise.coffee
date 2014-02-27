$(document).ready ->
  needle = $('#enterprise-speed-needle')

  TweenLite.set(needle, {rotation: -20})
  TweenMax.to(needle, 1.5, {delay: 1, rotation: 200, ease: EaseLookup.find('Quad.easeInOut')})

  wiggleNeedle = ->
    TweenMax.to(needle, 0.3, {rotation: 201})
    TweenMax.to(needle, 0.3, {delay: 0.3, rotation: 199})

    setTimeout(wiggleNeedle, 600)

  setTimeout wiggleNeedle, 2500