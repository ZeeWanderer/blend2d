@echo off
setlocal EnableDelayedExpansion
set repl_path=%1
set file=%2
set tag=%3
set new_value=%4
shift
shift
shift
shift
shift
type "!file!"|"!repl_path!" "(<!tag!>).*(</!tag!>)" "$1!new_value!$2" > "!file!.new"
move /y "!file!.new" "!file!" > null
