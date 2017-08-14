$(document).ready( function() {
  $('.medium-editor').each(function () {
    var options = {};
    options = $.extend({}, options, $(this).data('options'));
    new MediumEditor( $(this), options );
  });
});
