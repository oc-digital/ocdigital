jQuery ->
  # Header Shrink
  s = skrollr
  sActive = false
  if $(window).width() > 977
    s.init()
    sActive = true
  $(window).on "resize", ->
    if $(window).width() < 977 and sActive
      s.init().destroy()
      sActive = false
    else if $(window).width() > 977
      s.init()
      sActive = true

  # Sticky Navigation
  $('.navbar .navbar-collapse').waypoint('sticky')

  # Dropdown on hover
  $('.js-activated').dropdownHover ->
    instantlyCloseOthers: false
    delay: 0
  .dropdown()

  # Owl Carousel
  fadeInReset = ->
    unless dragging
      $(owlElementID + " .caption .fadeIn-1, " + owlElementID + " .caption .fadeIn-2, " + owlElementID + " .caption .fadeIn-3").stop().delay(800).animate
        opacity: 0
      ,
        duration: 400
        easing: "easeInCubic"

    else
      $(owlElementID + " .caption .fadeIn-1, " + owlElementID + " .caption .fadeIn-2, " + owlElementID + " .caption .fadeIn-3").css opacity: 0
  fadeInDownReset = ->
    unless dragging
      $(owlElementID + " .caption .fadeInDown-1, " + owlElementID + " .caption .fadeInDown-2, " + owlElementID + " .caption .fadeInDown-3").stop().delay(800).animate
        opacity: 0
        top: "-15px"
      ,
        duration: 400
        easing: "easeInCubic"

    else
      $(owlElementID + " .caption .fadeInDown-1, " + owlElementID + " .caption .fadeInDown-2, " + owlElementID + " .caption .fadeInDown-3").css
        opacity: 0
        top: "-15px"

  fadeInUpReset = ->
    unless dragging
      $(owlElementID + " .caption .fadeInUp-1, " + owlElementID + " .caption .fadeInUp-2, " + owlElementID + " .caption .fadeInUp-3").stop().delay(800).animate
        opacity: 0
        top: "15px"
      ,
        duration: 400
        easing: "easeInCubic"

    else
      $(owlElementID + " .caption .fadeInUp-1, " + owlElementID + " .caption .fadeInUp-2, " + owlElementID + " .caption .fadeInUp-3").css
        opacity: 0
        top: "15px"

  fadeInLeftReset = ->
    unless dragging
      $(owlElementID + " .caption .fadeInLeft-1, " + owlElementID + " .caption .fadeInLeft-2, " + owlElementID + " .caption .fadeInLeft-3").stop().delay(800).animate
        opacity: 0
        left: "15px"
      ,
        duration: 400
        easing: "easeInCubic"

    else
      $(owlElementID + " .caption .fadeInLeft-1, " + owlElementID + " .caption .fadeInLeft-2, " + owlElementID + " .caption .fadeInLeft-3").css
        opacity: 0
        left: "15px"

  fadeInRightReset = ->
    unless dragging
      $(owlElementID + " .caption .fadeInRight-1, " + owlElementID + " .caption .fadeInRight-2, " + owlElementID + " .caption .fadeInRight-3").stop().delay(800).animate
        opacity: 0
        left: "-15px"
      ,
        duration: 400
        easing: "easeInCubic"

    else
      $(owlElementID + " .caption .fadeInRight-1, " + owlElementID + " .caption .fadeInRight-2, " + owlElementID + " .caption .fadeInRight-3").css
        opacity: 0
        left: "-15px"

  fadeIn = ->
    $(owlElementID + " .active .caption .fadeIn-1").stop().delay(500).animate
      opacity: 1
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeIn-2").stop().delay(700).animate
      opacity: 1
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeIn-3").stop().delay(1000).animate
      opacity: 1
    ,
      duration: 800
      easing: "easeOutCubic"

  fadeInDown = ->
    $(owlElementID + " .active .caption .fadeInDown-1").stop().delay(500).animate
      opacity: 1
      top: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInDown-2").stop().delay(700).animate
      opacity: 1
      top: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInDown-3").stop().delay(1000).animate
      opacity: 1
      top: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

  fadeInUp = ->
    $(owlElementID + " .active .caption .fadeInUp-1").stop().delay(500).animate
      opacity: 1
      top: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInUp-2").stop().delay(700).animate
      opacity: 1
      top: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInUp-3").stop().delay(1000).animate
      opacity: 1
      top: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

  fadeInLeft = ->
    $(owlElementID + " .active .caption .fadeInLeft-1").stop().delay(500).animate
      opacity: 1
      left: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInLeft-2").stop().delay(700).animate
      opacity: 1
      left: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInLeft-3").stop().delay(1000).animate
      opacity: 1
      left: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

  fadeInRight = ->
    $(owlElementID + " .active .caption .fadeInRight-1").stop().delay(500).animate
      opacity: 1
      left: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInRight-2").stop().delay(700).animate
      opacity: 1
      left: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

    $(owlElementID + " .active .caption .fadeInRight-3").stop().delay(1000).animate
      opacity: 1
      left: "0"
    ,
      duration: 800
      easing: "easeOutCubic"

  dragging = true
  owlElementID = "#owl-main"
  $(owlElementID).owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    singleItem: true
    addClassActive: true
    transitionStyle: "fade"
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]
    afterInit: ->
      fadeIn()
      fadeInDown()
      fadeInUp()
      fadeInLeft()
      fadeInRight()

    afterMove: ->
      fadeIn()
      fadeInDown()
      fadeInUp()
      fadeInLeft()
      fadeInRight()

    afterUpdate: ->
      fadeIn()
      fadeInDown()
      fadeInUp()
      fadeInLeft()
      fadeInRight()

    startDragging: ->
      dragging = true

    afterAction: ->
      fadeInReset()
      fadeInDownReset()
      fadeInUpReset()
      fadeInLeftReset()
      fadeInRightReset()
      dragging = false

  $(owlElementID + ".owl-one-item").data("owlCarousel").destroy()  if $(owlElementID).hasClass("owl-one-item")
  $(owlElementID + ".owl-one-item").owlCarousel
    singleItem: true
    navigation: false
    pagination: false

  $("#transitionType li a").click ->
    $("#transitionType li a").removeClass "active"
    $(this).addClass "active"
    newValue = $(this).attr("data-transition-type")
    $(owlElementID).data("owlCarousel").transitionTypes newValue
    $(owlElementID).trigger "owl.next"
    false

  $("#owl-testimonials").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    singleItem: true
    addClassActive: true
    autoHeight: true
    transitionStyle: "fadeInAfterOut"
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-projects").owlCarousel
    navigation: false
    autoHeight: true
    slideSpeed: 300
    paginationSpeed: 400
    rewindNav: false
    singleItem: true
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-latest-works").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    items: 4
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-videos").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    items: 5
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-audio").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    items: 5
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-popular-posts").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    items: 5
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-related-posts").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    items: 2
    itemsDesktopSmall: [ 1199, 2 ]
    itemsTablet: [ 977, 2 ]
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-featured-works").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    singleItem: true
    transitionStyle: "goDown"
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-work-samples").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    items: 3
    itemsDesktopSmall: [ 1199, 3 ]
    itemsTablet: [ 977, 2 ]
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-work-samples-big").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    singleItem: true
    transitionStyle: "fadeUp"
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-work").owlCarousel
    autoPlay: 5000
    slideSpeed: 200
    paginationSpeed: 600
    rewindSpeed: 800
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    singleItem: true
    autoHeight: true
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-office").owlCarousel
    autoPlay: 5000
    slideSpeed: 200
    paginationSpeed: 600
    rewindSpeed: 800
    stopOnHover: true
    navigation: true
    pagination: true
    rewindNav: true
    singleItem: true
    autoHeight: true
    transitionStyle: "fade"
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $("#owl-clients").owlCarousel
    autoPlay: 5000
    stopOnHover: true
    rewindNav: true
    items: 4
    itemsDesktopSmall: [ 1199, 4 ]
    itemsTablet: [ 977, 3 ]
    navigation: true
    pagination: true
    navigationText: [ "<i class='icon-left-open-mini'></i>", "<i class='icon-right-open-mini'></i>" ]

  $(".slider-next").click ->
    owl.trigger "owl.next"

  $(".slider-prev").click ->
    owl.trigger "owl.prev"

  # Animations on scroll
  waypointClass = "main [class*=\"col-\"]"
  animationClass = "fadeInUp"
  delayTime = undefined
  $(waypointClass).css opacity: "0"
  $(waypointClass).waypoint (->
    delayTime += 100
    $(this).delay(delayTime).queue (next) ->
      $(this).toggleClass "animated"
      $(this).toggleClass animationClass
      delayTime = 0
      next()

  ),
    offset: "90%"
    triggerOnce: true

  # Scroll to top
  $.scrollUp
    scrollName: "scrollUp" # Element ID
    scrollDistance: 300 # Distance from top/bottom before showing element (px)
    scrollFrom: "top" # "top" or "bottom"
    scrollSpeed: 1000 # Speed back to top (ms)
    easingType: "easeInOutCubic" # Scroll to top easing (see http://easings.net/)
    animation: "fade" # Fade, slide, none
    animationInSpeed: 200 # Animation in speed (ms)
    animationOutSpeed: 200 # Animation out speed (ms)
    scrollText: "<i class='icon-up-open-mini'></i>" # Text for element, can contain HTML
    scrollTitle: " " # Set a custom <a> title if required. Defaults to scrollText
    scrollImg: 0 # Set true to use image
    activeOverlay: 0 # Set CSS color to display scrollUp active point, e.g "#00FFFF"
    zIndex: 1001 # Z-Index for the overlay

  # Image hover
  $('.icon-overlay a').prepend('<span class="icn-more"></span>')

  # Data REL
  $("a[data-rel]").each ->
    $(this).attr "rel", $(this).data("rel")

  # Tooltip
  $("[rel=tooltip]").tooltip()  if $("[rel=tooltip]").length

  # Convert iOS Safari viewport units into pixels
  window.viewportUnitsBuggyfill.init(true)
