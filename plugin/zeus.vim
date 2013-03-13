if exists("g:loaded_vimux_zeus") || &cp
  finish
endif
let g:loaded_vimux_zeus = 1

function! ZeusCommand(cmd, args)
  let l:_zeuscmd = substitute(a:cmd, '`', '\\`', 'g')
  let l:_zeusargs = a:args . join(a:000, ' ')
  let l:_zeusruncommand = "clear && zeus" . " " . l:_zeuscmd . " " . escape(l:_zeusargs, '|')

  echo l:_zeusruncommand
  call VimuxRunCommand(l:_zeusruncommand)
endfunction

command! -nargs=* -complete=file ZeusStart call ZeusCommand('start', <q-args>)
command! -nargs=* -complete=file ZeusInit call ZeusCommand('init', <q-args>)
command! -nargs=* -complete=file ZeusConsole call ZeusCommand('console', <q-args>)
command! -nargs=* -complete=file ZeusCucumber call ZeusCommand('cucumber', <q-args>)
command! -nargs=* -complete=file ZeusTest call ZeusCommand('test', <q-args>)
command! -nargs=* -complete=file ZeusRspec call ZeusCommand('rspec', <q-args>)
command! -nargs=* -complete=file ZeusTestrb call ZeusCommand('testrb', <q-args>)
command! -nargs=* -complete=file ZeusDestroy call ZeusCommand('destroy', <q-args>)
command! -nargs=* -complete=file ZeusServer call ZeusCommand('server', <q-args>)
command! -nargs=* -complete=file ZeusRunner call ZeusCommand('runner', <q-args>)
command! -nargs=* -complete=file ZeusDbconsole call ZeusCommand('dbconsole', <q-args>)
command! -nargs=* -complete=file ZeusRake call ZeusCommand('rake', <q-args>)
command! -nargs=* -complete=file ZeusGenerate call ZeusCommand('generate', <q-args>)
