$(document).ready(function() {

  $("tbody").on("click", "button.glyphicon-thumbs-up", function(event) {
    event.preventDefault();

    var ideaId      = event.target.parentElement.dataset.id;
    var urlString   = '/thumbs-up/' + ideaId
    var ideaQuality = $('.idea-quality' + ideaId).text()

    $.ajax({
      type: 'PUT',
      url: urlString,
      data: { idea: { quality: ideaQuality } },
      dataType: "json",
      success: function(event) {
        var qualityLocation = '.idea-quality' + ideaId;
        $(qualityLocation).text(increaseQuality(ideaQuality))
      },
      error: function(xhr) {
        console.log(xhr.responseText)
      }
    });
  });

});

function increaseQuality(quality) {
  switch (quality) {
    case 'swill':
      return 'plausible';
      break;
    case 'plausible':
      return 'genius';
      break;
    default:
      return 'genius';
  }

}
