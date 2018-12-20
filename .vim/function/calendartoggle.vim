function Calendartoggle()
	if buffer_exists("__Calendar")
		bdelete __Calendar
	else
		Calendar
	endif
endfunction
