function renderRow(data) {
  return  (
        "<tr class='ideas'>"
      +   "<td class='idea-title'>"
      +     data.title
      +   '</td>'
      +   "<td class='idea-body'>"
      +     truncateBody(data)
      +   '</td>'
      +   "<td class='idea-quality" + data.id + "'>"
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
      +   "<td class='thumbs-up' data-id='" + data.id + "'>"
      +     "<button type='button' class='btn btn-default btn-xs glyphicon-thumbs-up'"
      +     " data-id='" + data.id + "'>"
      +       "<span class='glyphicon glyphicon-thumbs-up'></span> quality"
      +     "</button>"
      +   '</td>'
      +   "<td class='thumbs-down' data-id='" + data.id + "'>"
      +     "<button type='button' class='btn btn-default btn-xs glyphicon-thumbs-down'"
      +     " data-id='" + data.id + "'>"
      +       "<span class='glyphicon glyphicon-thumbs-down'></span> quality"
      +     "</button>"
      +   '</td>'
      + '</tr>'
  );
}
