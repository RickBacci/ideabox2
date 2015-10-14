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

            $(markup).on('click', function() {
              console.log('delete clicked after just created');
            });

            $('#headings').after(markup);
            $('#title').val('');
            $('#body').val('');
            $("#idea").blur();

          },
          error: function(xhr) {
            console.log(xhr.responseText)
          }
      }).then(function() {
        console.log('finished creating file');
      });
  });

});
