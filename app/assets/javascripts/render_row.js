function renderRow(data) {
  return  (
        "<tr class='ideas'>"
      +   "<td class='idea-title'>"
      +     data.title
      +   '</td>'
      +   "<td class='idea-body'>"
      +     truncateBody(data)
      +   '</td>'
      +   '<td>'
      +     data.quality
      +   '</td>'
      +   '<td>'
      +     "<a href='/ideas/"
      +       data.id
      +     "/edit' data-id='"
      +       data.id
      +     "' class='btn btn-default btn-xs edit-idea' >Edit</a>"
      +   '</td>'
      +   '<td>'
      +     "<a href='#'"
      +     " data-id='"
      +       data.id
      +     "' class='btn btn-default btn-xs delete-idea'>Delete</a>"
      +   '</td>'
      +   '<td>'
      +     "<a href='#'><span class='glyphicon glyphicon-thumbs-up'></span></a>"
      +   '</td>'
      +   '<td>'
      +     "<a href='#'><span class='glyphicon glyphicon-thumbs-down'></span></a>"
      +   '</td>'
      + '</tr>'
  );
}
