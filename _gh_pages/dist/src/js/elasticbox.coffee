$(document).ready ->
  isMobile = !!navigator.userAgent.match /Mobile|webOS/i
  screenSize = $(window).innerWidth()
  animController = null

  s1 = $('#pick-your-boxes')
  s2 = $('#stack-your-boxes')
  s3 = $('#deploy-applications')
  shuttle = $('#shuttle')
  shuttleNose = shuttle.find('.nose')

  initStatic = ->
    # https://github.com/johnpolacek/superscrollorama/issues/10
    if animController
      animController.destroy()

      animController.removeTween s1
      animController.removeTween s2
      animController.removeTween s3
      animController.removeTween shuttleNose

    $('.box').attr('style', '').hide()
    $('.cloud').attr('style', '').hide()
    $('#shuttle').attr('style', '').hide().find('.nose').attr('style', '')
    $('#animation-wrapper').find('section').addClass('no-bg')


  initAnimated = ->
    animController = $.superscrollorama()

    $('.box').show()
    $('.cloud').show()
    $('#shuttle').show()
    $('#animation-wrapper').find('section').removeClass('no-bg')

    # move our first sets of cards into place in the second section
    rubyBox = $('.box.ruby')
    animController.addTween s1, TweenMax.to(rubyBox, 0.1, {
      top: 885
      right: 225
      ease: EaseLookup.find('Quad.easeIn')
    }), 650, 200
    mongoBox = $('.box.mongo')
    animController.addTween s1, TweenMax.to(mongoBox, 0.1, {
      top: 885
      right: 135
      ease: EaseLookup.find('Quad.easeIn')
    }), 450, 250
    mysqlBox = $('.box.mysql')
    animController.addTween s1, TweenMax.to(mysqlBox, 0.1, {
      top: 885
      right: 45
      ease: EaseLookup.find('Quad.easeIn')
    }), 450, 300

    postgresBox = $('.box.postgres')
    animController.addTween s1, TweenMax.to(postgresBox, 0.1, {
      top: 965
      right: 225
      ease: EaseLookup.find('Quad.easeIn')
    }), 550, 250
    angularBox = $('.box.angular')
    animController.addTween s1, TweenMax.to(angularBox, 0.1, {
      top: 965
      right: 135
      ease: EaseLookup.find('Quad.easeIn')
    }), 650, 200
    linuxBox = $('.box.linux')
    animController.addTween s1, TweenMax.to(linuxBox, 0.1, {
      top: 965
      right: 45
      ease: EaseLookup.find('Quad.easeIn')
    }), 600, 300

    chefBox = $('.box.chef')
    animController.addTween s1, TweenMax.to(chefBox, 0.1, {
      top: 1045
      right: 225
      ease: EaseLookup.find('Quad.easeIn')
    }), 550, 200
    nodeBox = $('.box.node')
    animController.addTween s1, TweenMax.to(nodeBox, 0.1, {
      top: 1045
      right: 135
      ease: EaseLookup.find('Quad.easeIn')
    }), 650, 250
    apacheBox = $('.box.apache')
    animController.addTween s1, TweenMax.to(apacheBox, 0.1, {
      top: 1045
      right: 45
      ease: EaseLookup.find('Quad.easeIn')
    }), 550, 250


    # fade the outer columns
    animController.addTween s2, TweenMax.to($('.box.ruby, .box.mysql, .box.postgres, .box.linux, .box.chef, .box.apache'), 0.1, {
      opacity: 0.4
    }), 100, 350


    # load the middle column into the shuttle
    animController.addTween s2, TweenMax.to(mongoBox, 0.1, {
      top: 1800
    }), 940, 400
    animController.addTween s2, TweenMax.to(angularBox, 0.1, {
      top: 1800
    }), 820, 400
    animController.addTween s2, TweenMax.to(nodeBox, 0.1, {
      top: 1800
    }), 700, 400


    # blow the clouds into place
    TweenLite.set($('.cloud'), {opacity: 0, scale: 0.5})

    animController.addTween s3, TweenMax.to($('.cloud.c1'), 0.1, {
      opacity: 1
      scale: 1
    }), 500, -300
    animController.addTween s3, TweenMax.to($('.cloud.c2'), 0.1, {
      opacity: 1
      scale: 1
    }), 500, -350
    animController.addTween s3, TweenMax.to($('.cloud.c3'), 0.1, {
      opacity: 1
      scale: 1
    }), 350, -250
    animController.addTween s3, TweenMax.to($('.cloud.c4'), 0.1, {
      opacity: 1
      scale: 1
    }), 600, -450
    animController.addTween s3, TweenMax.to($('.cloud.c5'), 0.1, {
      opacity: 1
      scale: 1
    }), 500, -300
    animController.addTween s3, TweenMax.to($('.cloud.c6'), 0.1, {
      opacity: 1
      scale: 1
    }), 400, -350
    animController.addTween s3, TweenMax.to($('.cloud.c7'), 0.1, {
      opacity: 1
      scale: 1
    }), 500, -350
    animController.addTween s3, TweenMax.to($('.cloud.c8'), 0.1, {
      opacity: 1
      scale: 1
    }), 450, -300
    animController.addTween s3, TweenMax.to($('.cloud.c9'), 0.1, {
      opacity: 1
      scale: 1
    }), 550, -450


    # shuttle takeoff
    TweenLite.set(shuttleNose, {rotation: 135, transformOrigin: 'right bottom'})

    animController.addTween s3, TweenMax.to($('.box.mongo, .box.angular, .box.node'), 0.1, {
      opacity: 0
    }), 0, 480

    animController.addTween s3, TweenMax.to(shuttleNose, 0.1, {
      rotation: 0
    }), 60, 400

    animController.addTween s3, TweenMax.to(shuttle, 0.1, {
      bottom: 600
      scale: 0.8
      ease: EaseLookup.find('Quad.easeIn')
    }), 300, 400


  handleResize = ->
    screenSize = $(window).innerWidth()

    if screenSize < 960 then initStatic() else initAnimated()

  $(window).on 'resize', handleResize

  handleResize()