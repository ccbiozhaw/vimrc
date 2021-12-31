" INSERT mode floating window scrolling {{{
function! s:coc_float_scroll(amount) abort
  let float = coc#util#get_float()
  if !float | return '' | endif
  let buf = nvim_win_get_buf(float)
  let buf_height = nvim_buf_line_count(buf)
  let win_height = nvim_win_get_height(float)
  if buf_height < win_height | return '' | endif
  let pos = nvim_win_get_cursor(float)
  try
    let last_amount = nvim_win_get_var(float, 'coc_float_scroll_last_amount')
  catch
    let last_amount = 0
  endtry
  if a:amount > 0
    if pos[0] == 1
      let pos[0] += a:amount + win_height - 2
    elseif last_amount > 0
      let pos[0] += a:amount
    else
      let pos[0] += a:amount + win_height - 3
    endif
    let pos[0] = pos[0] < buf_height ? pos[0] : buf_height
  elseif a:amount < 0
    if pos[0] == buf_height
      let pos[0] += a:amount - win_height + 2
    elseif last_amount < 0
      let pos[0] += a:amount
    else
      let pos[0] += a:amount - win_height + 3
    endif
    let pos[0] = pos[0] > 1 ? pos[0] : 1
  endif
  call nvim_win_set_var(float, 'coc_float_scroll_last_amount', a:amount)
  call nvim_win_set_cursor(float, pos)
  return ''
endfunction




inoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
inoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(-1) : "\<up>"
vnoremap <silent><expr> <down> coc#util#has_float() ? <SID>coc_float_scroll(1) : "\<down>"
vnoremap <silent><expr> <up> coc#util#has_float() ? <SID>coc_float_scroll(-1) : "\<up>"
