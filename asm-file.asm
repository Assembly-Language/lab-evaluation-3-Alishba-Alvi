INCLUDE Irvine32.inc
.code
SumNegative PROC arr:PTR DWORD, count:DWORD
    push ebp
    mov ebp, esp
    ; Initialize pointers and counters
    mov esi, arr  ; ESI points to the start of the array
    mov ecx, count ; ECX holds the count of elements
    xor eax, eax      ; EAX will hold the sum (initialize to 0)
    ; Loop through the array
loop_start:
    cmp ecx, 0 ; Check all elements are processed
    je loop_done       ; Exit loop if no more elements
    mov ebx, [esi] ; Load the current element into EBX
    add esi, 4  ; Move to the next array element
    cmp ebx, 0  ; Check if the number is negative
    jl add_to_sum  ; If negative, add to sum
    jmp next_element ; Otherwise, skip addition
add_to_sum:
    add eax, ebx ; Add the negative number to the sum
next_element:
    dec ecx   ; Decrement the element counter
    jmp loop_start  ; Repeat the loop
loop_done:
    ; Restore the stack and return
    mov esp, ebp
    pop ebp
    ret
SumNegative ENDP
END