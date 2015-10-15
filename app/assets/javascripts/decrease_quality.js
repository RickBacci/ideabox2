$(document).ready(function() {

  $("tbody").on("click", "button.glyphicon-thumbs-down", function(event) {
    event.preventDefault();

    var ideaId      = event.target.parentElement.dataset.id;
    var urlString   = '/thumbs-down/' + ideaId
    var ideaQuality = $('.idea-quality' + ideaId).text()

    $.ajax({
      type: 'PUT',
      url: urlString,
      data: { idea: { quality: ideaQuality } },
      dataType: "json",
      success: function(event) {
        var qualityLocation = '.idea-quality' + ideaId;
        $(qualityLocation).text(lowerQuality(ideaQuality))
      },
      error: function(xhr) {
        console.log(xhr.responseText)
      }
    });
  });

});

function lowerQuality(quality) {
  switch (quality) {
    case 'genius':
      return 'plausible';
      break;
    case 'plausible':
      return 'swill';
      break;
    default:
      return 'swill';
  }

}
