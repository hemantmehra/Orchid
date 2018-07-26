# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  current_page = 0
  $(window).scroll ->
    url = $('#load-links').attr('href')
    if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
      #console.log "Reached at end"
      $('#loading-text').html("Loading...")
      $('#load-links-container').html("")
      console.log current_page
      $.getScript(url + (++current_page))
