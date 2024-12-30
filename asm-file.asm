

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assebly procedure end now",0


.code
asmfunc PROC p1:DWORD, p2:DWORD
    
    push ebp
    mov ebp,esp
    mov eax, [ebp+12] ; Move the first parameter into EAX
    call writedec
    call crlf
    ;add eax, p2 ; Add the second parameter to EAX
    call writedec
    call crlf
    mov edx, offset msg
    call writestring
    call crlf
    
    ret
asmfunc ENDP
end