s/ *int *DLLEXPORT *\(EN[a-zA-Z]*\)()/integer(c_int), value function \1() bind(c,name="\1")\nuse iso_c_binding\nend function\n/g
s/ *int *DLLEXPORT *\(EN[a-zA-Z]*\)(\([a-z0-9]* *\**\)\([a-z0-9]*\),* *\([a-z0-9]* *\**\)\([a-z0-9]*\),* *\([a-z0-9]* *\**\)\([a-z0-9]*\),* *\([a-z0-9]* *\**\)\([a-z0-9]*\),* *)/int function \1(\3,\5,\7,\9) bind(c,name="\1\")\nuse iso_c_binding\n\2 :: \3\n\4 :: \5\n\6 :: \7\n\8 :: \9\n\end function\n/g;
s/int \*/integer(c_int) /g
s/int /integer(c_int), value /g
s/char \*/character(c_char), dimension(*) /g
s/float \*/real(c_float) /g
s/float /real(c_float), value /g
s/long \*/integer(c_long) /g
s/long /integer(c_long), value /g
s/,*)/)/g
s/, value function/ function/g