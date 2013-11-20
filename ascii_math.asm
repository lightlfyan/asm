;; ...


ascii db   35h, 33h  ;'5','3'
bcd   db   05h, 03h
bcd2  db   53h

; aaa : ascii + ascii -> bcd
;       '5'   + '3'   -> 08h
                      
mov al, ascii      ;'5'
add al, [ascii+1]  ;'3'
aaa                ; al = 08h
or al, 30h         ; al = 38h = '8'

                      
;aas : ascii - ascii -> bcd
;aam : ascii * ascii -> bcd
;aad : (ascii -> bin) / bin -> bin

;; ascii -> bcd
mov al, '5' ; 0x35
and al, 0fh ; 0x05



;; bcd -> bin

mov al, 0305h
result = 5*1+3*10 ...


bcd db  03h,05h

mov cl, 1
mov cx, 2
l1:
lea si, db+1
mul [si], cl
add ax, [si]
mul cl, 10
dec si
loop
; ax = 23h ; 35



;; bin -> bcd
bin / 10 > a, b
a / 10 -> a', b'
a' / 10 -> a''
result = a'' a' a

;; word
daa : ascii (+) bdc -> bcd
      '5' + 03h -> 08h
                   38h -> '8'
das : ascii (-) bdc -> bcd
