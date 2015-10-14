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
      +   '<td>'
      +     "<a href='/ideas/"
      +        data.id
      +   "/edit' class='btn btn-default btn-xs edit-idea' >Edit</a>"
      +   '</td>'
      +   '<td>'
      +     "<a href='#'"
      +     " data-id='"
      +       data.id
      +     "' class='btn btn-default btn-xs delete-idea'>Delete</a>"
      +   '</td>'
      + '</tr>'
      );
}
