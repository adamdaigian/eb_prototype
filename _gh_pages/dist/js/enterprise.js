(function() {
  $(document).ready(function() {
    var needle, wiggleNeedle;
    needle = $('#enterprise-speed-needle');
    TweenLite.set(needle, {
      rotation: -20
    });
    TweenMax.to(needle, 1.5, {
      delay: 1,
      rotation: 200,
      ease: EaseLookup.find('Quad.easeInOut')
    });
    wiggleNeedle = function() {
      TweenMax.to(needle, 0.3, {
        rotation: 201
      });
      TweenMax.to(needle, 0.3, {
        delay: 0.3,
        rotation: 199
      });
      return setTimeout(wiggleNeedle, 600);
    };
    return setTimeout(wiggleNeedle, 2500);
  });

}).call(this);
