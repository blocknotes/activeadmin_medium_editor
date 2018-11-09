function initMediumEditors() {
  $('.medium-editor').each(function () {
    if (!$(this).hasClass('medium-editor--active')) {
      var options = {};
      options = $.extend({}, options, $(this).data('options'));
      new MediumEditor($(this), options);
      $(this).addClass('medium-editor--active');
    }
  });
}

$(document).on('has_many_add:after', function () {
  initMediumEditors();
});

$(document).ready( function() {
  initMediumEditors();
});
