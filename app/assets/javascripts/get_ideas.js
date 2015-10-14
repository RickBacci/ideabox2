$(document).ready(function() {
  $.ajax({
    url: '/ideas',
    type: 'GET',
    dataType: "json",
    success: function(data) {

      function buildIndex(element) {
        $('#headings').after(renderRow(element));
      }

      data.forEach(buildIndex);
    },
    error: function(xhr) {
      console.log(xhr.responseText)
    }
  });
});
