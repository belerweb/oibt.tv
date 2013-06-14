search = ->
  keyword = $('#search-keyword').val()
  if not keyword?.length
    alert '请输入关键词'
    return
  window.open "/search/#{keyword}"

$('#search').click -> search()
$('#search-keyword').keyup (e) ->
  if e.keyCode == 13
    search()
