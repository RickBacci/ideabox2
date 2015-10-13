// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {

  $("#idea").on('click', function(event) {
    event.preventDefault();

    var ideaTitle   = $('#title').val()
    var ideaBody    = $('#body').val()
    var ideaQuality = $('#_quality').val()


    $.ajax({
      url: '/ideas',
      type: 'POST',
      data: {idea: {title:   ideaTitle,
                    body:    ideaBody,
                    quality: ideaQuality}},

        dataType: "json",
        success: function(data) {
          console.log(data);
          var markup = renderRow(data);

          $('#headings').after(markup);
          $('#title').val('');
          $('#body').val('');
        },
        error: function(xhr) {
          console.log(xhr.responseText)
        }
    });

  });

  function renderRow(data) {
    return  (
          '<tr>'
        +   '<td>'
        +      data.title
        +   '</td>'
        +   '<td>'
        +      data.body
        +   '</td>'
        +   '<td>'
        +      data.quality
        +   '</td>'
        + '</tr>'
    );
  }

});



