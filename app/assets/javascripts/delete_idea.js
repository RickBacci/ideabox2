$(document).ready(function() {

  $("tbody").on("click", "a.delete-idea", function(event) {
    event.preventDefault();

    var urlString = '/ideas/' + event.target.dataset.id;

    var removeRow = {
      event: event,
      _this: this
    };

    $.ajax({
      type: 'delete',
      url: urlString,
      dataType: "json",
      success: function(event) {
        console.log('in ajax delete success')
        removeRow.event.target.parentElement.parentElement.remove();
      },
      error: function(xhr) {
        console.log(xhr.responseText)
      }

    });
    return false;
  });

});

