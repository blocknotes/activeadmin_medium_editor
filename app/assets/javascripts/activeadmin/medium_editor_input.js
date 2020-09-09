(function () {
  'use strict'

  // --- functions -------------------------------------------------------------
  function initMediumEditors() {
    $('[data-aa-medium-editor]').each(function () {
      if (!$(this).hasClass('medium-editor--active')) {
        let options = {}
        options = $.extend({}, options, $(this).data('options'))
        new MediumEditor($(this), options)
        $(this).addClass('medium-editor--active')
      }
    })
  }

  // --- events ----------------------------------------------------------------
  $(document).ready(() => {
    initMediumEditors()
  })

  $(document).on('has_many_add:after', '.has_many_container', () => {
    initMediumEditors()
  })
})()
