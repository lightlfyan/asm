;; ...


;ascii     35h 33h
;bcd       05h 03h
;bcd           53h

;bin    bcd 53h -> bin -> 35h

;; byte
aaa : ascii + ascii -> bcd
      '5'   + '3' ->  08h
                      38h -> '8'
                      
mov al, '5'
add al, '3'
aaa
; al -> 08h

; convert al to ascii
or al, 30h

                      
aas : ascii - ascii -> bcd
aam : ascii * ascii -> bcd
aad : (ascii -> bin) / bin -> bin

;; ascii -> bcd
mov al, '5' ; 0x35
and al, 0fh ; 0x05

;; bcd -> bin
mov al, 0305h
result = 5*1+3*10 ...

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
