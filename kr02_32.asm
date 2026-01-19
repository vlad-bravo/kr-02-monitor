.setting "OmitUnusedFunctions", true
.target "8080"
.format "bin"
.org 0xF800

   jmp lf836       ; $8800 c3 36 f8
   jmp $fe63       ; $8803 c3 63 fe
   jmp $fb98       ; $8806 c3 98 fb
   jmp $fcba       ; $8809 c3 ba fc
   jmp $fc46       ; $880c c3 46 fc
   jmp $fcba       ; $880f c3 ba fc
   jmp $fe01       ; $8812 c3 01 fe
   jmp $fca5       ; $8815 c3 a5 fc
   jmp $f922       ; $8818 c3 22 f9
   jmp $fe72       ; $881b c3 72 fe
   jmp $fa7b       ; $881e c3 7b fa
   jmp $fa7f       ; $8821 c3 7f fa
   jmp $fab6       ; $8824 c3 b6 fa
   jmp $fb49       ; $8827 c3 49 fb
   jmp $fb16       ; $882a c3 16 fb
   jmp $face       ; $882d c3 ce fa
   jmp $ff52       ; $8830 c3 52 ff
   jmp $ff56       ; $8833 c3 56 ff
lf836:
   mvi a,$8a       ; $8836 3e 8a   
   sta $8003       ; $8838 32 03 80
   lxi sp,$76cf    ; $883b 31 cf 76
   call $face      ; $883e cd ce fa
   lxi h,$7600     ; $8841 21 00 76
   lxi d,$765f     ; $8844 11 5f 76
   mvi c,$00       ; $8847 0e 00   
   call $f9ed      ; $8849 cd ed f9
   lxi h,$76cf     ; $884c 21 cf 76
   shld $761c      ; $884f 22 1c 76
   lxi h,$ff5a     ; $8852 21 5a ff
   call $f922      ; $8855 cd 22 f9
   call $face      ; $8858 cd ce fa
   lxi h,$75ff     ; $885b 21 ff 75
   shld $7631      ; $885e 22 31 76
   lxi h,$1d2a     ; $8861 21 2a 1d
   shld $762f      ; $8864 22 2f 76
   mvi a,$c3       ; $8867 3e c3   
   sta $7626       ; $8869 32 26 76
   lxi sp,$76cf    ; $886c 31 cf 76
   lxi h,$ff66     ; $886f 21 66 ff
   call $f922      ; $8872 cd 22 f9
   sta $8002       ; $8875 32 02 80
   dcr a           ; $8878 3d      
   sta $a002       ; $8879 32 02 a0
   call $f8ee      ; $887c cd ee f8
   lxi h,$f86c     ; $887f 21 6c f8
   push h          ; $8882 e5      
   lxi h,$7633     ; $8883 21 33 76
   mov a,m         ; $8886 7e      
   cpi $58         ; $8887 fe 58   
   jz $ffd3        ; $8889 ca d3 ff
   cpi $55         ; $888c fe 55   
   jz $f000        ; $888e ca 00 f0
   push psw        ; $8891 f5      
   call $f92c      ; $8892 cd 2c f9
   lhld $762b      ; $8895 2a 2b 76
   mov c,l         ; $8898 4d      
   mov b,h         ; $8899 44      
   lhld $7629      ; $889a 2a 29 76
   xchg            ; $889d eb      
   lhld $7627      ; $889e 2a 27 76
   pop psw         ; $88a1 f1      
   cpi $44         ; $88a2 fe 44   
   jz $f9c5        ; $88a4 ca c5 f9
   cpi $43         ; $88a7 fe 43   
   jz $f9d7        ; $88a9 ca d7 f9
   cpi $46         ; $88ac fe 46   
   jz $f9ed        ; $88ae ca ed f9
   cpi $53         ; $88b1 fe 53   
   jz $f9f4        ; $88b3 ca f4 f9
   cpi $54         ; $88b6 fe 54   
   jz $f9ff        ; $88b8 ca ff f9
   cpi $4d         ; $88bb fe 4d   
   jz $fa26        ; $88bd ca 26 fa
   cpi $47         ; $88c0 fe 47   
   jz $fa3f        ; $88c2 ca 3f fa
   cpi $49         ; $88c5 fe 49   
   jz $fa86        ; $88c7 ca 86 fa
   cpi $4f         ; $88ca fe 4f   
   jz $fb2d        ; $88cc ca 2d fb
   cpi $4c         ; $88cf fe 4c   
   jz $fa08        ; $88d1 ca 08 fa
   cpi $52         ; $88d4 fe 52   
   jz $fa68        ; $88d6 ca 68 fa
   jmp $f000       ; $88d9 c3 00 f0

   mvi a,$33       ; $88dc 3e 33   
   cmp l           ; $88de bd      
   jz $f8f1        ; $88df ca f1 f8
   push h          ; $88e2 e5      
   lxi h,$ff9e     ; $88e3 21 9e ff
   call $f922      ; $88e6 cd 22 f9
   pop h           ; $88e9 e1      
   dcx h           ; $88ea 2b      
   jmp $f8f3       ; $88eb c3 f3 f8

   lxi h,$7633     ; $88ee 21 33 76
   mvi b,$00       ; $88f1 06 00   
   call $fe63      ; $88f3 cd 63 fe
   cpi $08         ; $88f6 fe 08   
   jz $f8dc        ; $88f8 ca dc f8
   cpi $7f         ; $88fb fe 7f   
   jz $f8dc        ; $88fd ca dc f8
   cnz $fcb9       ; $8900 c4 b9 fc
   mov m,a         ; $8903 77      
   cpi $0d         ; $8904 fe 0d   
   jz $f91a        ; $8906 ca 1a f9
   cpi $2e         ; $8909 fe 2e   
   jz $f86c        ; $890b ca 6c f8
   mvi b,$ff       ; $890e 06 ff   
   mvi a,$52       ; $8910 3e 52   
   cmp l           ; $8912 bd      
   jz $faae        ; $8913 ca ae fa
   inx h           ; $8916 23      
   jmp $f8f3       ; $8917 c3 f3 f8

   mov a,b         ; $891a 78      
   ral             ; $891b 17      
   lxi d,$7633     ; $891c 11 33 76
   mvi b,$00       ; $891f 06 00   
   ret             ; $8921 c9      

   mov a,m         ; $8922 7e      
   ana a           ; $8923 a7      
   rz              ; $8924 c8      
   call $fcb9      ; $8925 cd b9 fc
   inx h           ; $8928 23      
   jmp $f922       ; $8929 c3 22 f9

   lxi h,$7627     ; $892c 21 27 76
   lxi d,$762d     ; $892f 11 2d 76
   mvi c,$00       ; $8932 0e 00   
   call $f9ed      ; $8934 cd ed f9
   lxi d,$7634     ; $8937 11 34 76
   call $f95a      ; $893a cd 5a f9
   shld $7627      ; $893d 22 27 76
   shld $7629      ; $8940 22 29 76
   rc              ; $8943 d8      
   mvi a,$ff       ; $8944 3e ff   
   sta $762d       ; $8946 32 2d 76
   call $f95a      ; $8949 cd 5a f9
   shld $7629      ; $894c 22 29 76
   rc              ; $894f d8      
   call $f95a      ; $8950 cd 5a f9
   shld $762b      ; $8953 22 2b 76
   rc              ; $8956 d8      
   jmp $faae       ; $8957 c3 ae fa

   lxi h,$0000     ; $895a 21 00 00
   ldax d          ; $895d 1a      
   inx d           ; $895e 13      
   cpi $0d         ; $895f fe 0d   
   jz $f98e        ; $8961 ca 8e f9
   cpi $2c         ; $8964 fe 2c   
   rz              ; $8966 c8      
   cpi $20         ; $8967 fe 20   
   jz $f95d        ; $8969 ca 5d f9
   sui $30         ; $896c d6 30   
   jm $faae        ; $896e fa ae fa
   cpi $0a         ; $8971 fe 0a   
   jm $f982        ; $8973 fa 82 f9
   cpi $11         ; $8976 fe 11   
   jm $faae        ; $8978 fa ae fa
   cpi $17         ; $897b fe 17   
   jp $faae        ; $897d f2 ae fa
   sui $07         ; $8980 d6 07   
   mov c,a         ; $8982 4f      
   dad h           ; $8983 29      
   dad h           ; $8984 29      
   dad h           ; $8985 29      
   dad h           ; $8986 29      
   jc $faae        ; $8987 da ae fa
   dad b           ; $898a 09      
   jmp $f95d       ; $898b c3 5d f9

   stc             ; $898e 37      
   ret             ; $898f c9      

   mov a,h         ; $8990 7c      
   cmp d           ; $8991 ba      
   rnz             ; $8992 c0      
   mov a,l         ; $8993 7d      
   cmp e           ; $8994 bb      
   ret             ; $8995 c9      

   call $f9a4      ; $8996 cd a4 f9
   call $f990      ; $8999 cd 90 f9
   jnz $f9a2       ; $899c c2 a2 f9
   inx sp          ; $899f 33      
   inx sp          ; $89a0 33      
   ret             ; $89a1 c9      

   inx h           ; $89a2 23      
   ret             ; $89a3 c9      

   call $fe72      ; $89a4 cd 72 fe
   cpi $03         ; $89a7 fe 03   
   rnz             ; $89a9 c0      
   call $face      ; $89aa cd ce fa
   jmp $faae       ; $89ad c3 ae fa

   push h          ; $89b0 e5      
   lxi h,$ff6c     ; $89b1 21 6c ff
   call $f922      ; $89b4 cd 22 f9
   pop h           ; $89b7 e1      
   ret             ; $89b8 c9      

   mov a,m         ; $89b9 7e      
   push b          ; $89ba c5      
   call $fca5      ; $89bb cd a5 fc
   mvi a,$20       ; $89be 3e 20   
   call $fcb9      ; $89c0 cd b9 fc
   pop b           ; $89c3 c1      
   ret             ; $89c4 c9      

   call $fb78      ; $89c5 cd 78 fb
   call $f9b9      ; $89c8 cd b9 f9
   call $f996      ; $89cb cd 96 f9
   mov a,l         ; $89ce 7d      
   ani $0f         ; $89cf e6 0f   
   jz $f9c5        ; $89d1 ca c5 f9
   jmp $f9c8       ; $89d4 c3 c8 f9

   ldax b          ; $89d7 0a      
   cmp m           ; $89d8 be      
   jz $f9e6        ; $89d9 ca e6 f9
   call $fb78      ; $89dc cd 78 fb
   call $f9b9      ; $89df cd b9 f9
   ldax b          ; $89e2 0a      
   call $f9ba      ; $89e3 cd ba f9
   inx b           ; $89e6 03      
   call $f996      ; $89e7 cd 96 f9
   jmp $f9d7       ; $89ea c3 d7 f9

   mov m,c         ; $89ed 71      
   call $f999      ; $89ee cd 99 f9
   jmp $f9ed       ; $89f1 c3 ed f9

   mov a,c         ; $89f4 79      
   cmp m           ; $89f5 be      
   cz $fb78        ; $89f6 cc 78 fb
   call $f996      ; $89f9 cd 96 f9
   jmp $f9f4       ; $89fc c3 f4 f9

   mov a,m         ; $89ff 7e      
   stax b          ; $8a00 02      
   inx b           ; $8a01 03      
   call $f999      ; $8a02 cd 99 f9
   jmp $f9ff       ; $8a05 c3 ff f9
   call $fb78      ; $8a08 cd 78 fb
   mov a,m         ; $8a0b 7e      
   ora a           ; $8a0c b7      
   jm $fa15        ; $8a0d fa 15 fa
   cpi $20         ; $8a10 fe 20   
   jnc $fa17       ; $8a12 d2 17 fa
   mvi a,$2e       ; $8a15 3e 2e   
   call $fcb9      ; $8a17 cd b9 fc
   call $f996      ; $8a1a cd 96 f9
   mov a,l         ; $8a1d 7d      
   ani $0f         ; $8a1e e6 0f   
   jz $fa08        ; $8a20 ca 08 fa
   jmp $fa0b       ; $8a23 c3 0b fa

   call $fb78      ; $8a26 cd 78 fb
   call $f9b9      ; $8a29 cd b9 f9
   push h          ; $8a2c e5      
   call $f8ee      ; $8a2d cd ee f8
   pop h           ; $8a30 e1      
   jnc $fa3b       ; $8a31 d2 3b fa
   push h          ; $8a34 e5      
   call $f95a      ; $8a35 cd 5a f9
   mov a,l         ; $8a38 7d      
   pop h           ; $8a39 e1      
   mov m,a         ; $8a3a 77      
   inx h           ; $8a3b 23      
   jmp $fa26       ; $8a3c c3 26 fa
   call $f990      ; $8a3f cd 90 f9
   jz $fa5a        ; $8a42 ca 5a fa
   xchg            ; $8a45 eb      
   shld $7623      ; $8a46 22 23 76
   mov a,m         ; $8a49 7e      
   sta $7625       ; $8a4a 32 25 76
   mvi m,$f7       ; $8a4d 36 f7   
   mvi a,$c3       ; $8a4f 3e c3   
   sta $0030       ; $8a51 32 30 00
   lxi h,$ffa2     ; $8a54 21 a2 ff
   shld $0031      ; $8a57 22 31 00
   lxi sp,$7618    ; $8a5a 31 18 76
   pop b           ; $8a5d c1      
   pop d           ; $8a5e d1      
   pop h           ; $8a5f e1      
   pop psw         ; $8a60 f1      
   sphl            ; $8a61 f9      
   lhld $7616      ; $8a62 2a 16 76
   jmp $7626       ; $8a65 c3 26 76

   mvi a,$90       ; $8a68 3e 90   
   sta $a003       ; $8a6a 32 03 a0
   shld $a001      ; $8a6d 22 01 a0
   lda $a000       ; $8a70 3a 00 a0
   stax b          ; $8a73 02      
   inx b           ; $8a74 03      
   call $f999      ; $8a75 cd 99 f9
   jmp $fa6d       ; $8a78 c3 6d fa

   lhld $7602      ; $8a7b 2a 02 76
   ret             ; $8a7e c9      

   push h          ; $8a7f e5      
   lhld $7600      ; $8a80 2a 00 76
   mov a,m         ; $8a83 7e      
   pop h           ; $8a84 e1      
   ret             ; $8a85 c9      

   lda $762d       ; $8a86 3a 2d 76
   ora a           ; $8a89 b7      
   jz $fa91        ; $8a8a ca 91 fa
   mov a,e         ; $8a8d 7b      
   sta $762f       ; $8a8e 32 2f 76
   call $fab6      ; $8a91 cd b6 fa
   call $fb78      ; $8a94 cd 78 fb
   xchg            ; $8a97 eb      
   call $fb78      ; $8a98 cd 78 fb
   xchg            ; $8a9b eb      
   push b          ; $8a9c c5      
   call $fb16      ; $8a9d cd 16 fb
   mov h,b         ; $8aa0 60      
   mov l,c         ; $8aa1 69      
   call $fb78      ; $8aa2 cd 78 fb
   pop d           ; $8aa5 d1      
   call $f990      ; $8aa6 cd 90 f9
   rz              ; $8aa9 c8      
   xchg            ; $8aaa eb      
   call $fb78      ; $8aab cd 78 fb
   mvi a,$3f       ; $8aae 3e 3f   
   call $fcb9      ; $8ab0 cd b9 fc
   jmp $f86c       ; $8ab3 c3 6c f8

   mvi a,$ff       ; $8ab6 3e ff   
   call $faff      ; $8ab8 cd ff fa
   push h          ; $8abb e5      
   dad b           ; $8abc 09      
   xchg            ; $8abd eb      
   call $fafd      ; $8abe cd fd fa
   pop h           ; $8ac1 e1      
   dad b           ; $8ac2 09      
   xchg            ; $8ac3 eb      
   push h          ; $8ac4 e5      
   call $fb0a      ; $8ac5 cd 0a fb
   mvi a,$ff       ; $8ac8 3e ff   
   call $faff      ; $8aca cd ff fa
   pop h           ; $8acd e1      
   push h          ; $8ace e5      
   lxi h,$c001     ; $8acf 21 01 c0
   mvi m,$00       ; $8ad2 36 00   
   dcx h           ; $8ad4 2b      
   mvi m,$4d       ; $8ad5 36 4d   
   mvi m,$1d       ; $8ad7 36 1d   
   mvi m,$99       ; $8ad9 36 99   
   mvi m,$93       ; $8adb 36 93   
   inx h           ; $8add 23      
   mvi m,$27       ; $8ade 36 27   
   mov a,m         ; $8ae0 7e      
   mov a,m         ; $8ae1 7e      
   ani $20         ; $8ae2 e6 20   
   jz $fae1        ; $8ae4 ca e1 fa
   lxi h,$e008     ; $8ae7 21 08 e0
   mvi m,$80       ; $8aea 36 80   
   mvi l,$04       ; $8aec 2e 04   
   mvi m,$d0       ; $8aee 36 d0   
   mvi m,$76       ; $8af0 36 76   
   inr l           ; $8af2 2c      
   mvi m,$23       ; $8af3 36 23   
   mvi m,$49       ; $8af5 36 49   
   mvi l,$08       ; $8af7 2e 08   
   mvi m,$a4       ; $8af9 36 a4   
   pop h           ; $8afb e1      
   ret             ; $8afc c9      

   mvi a,$08       ; $8afd 3e 08   
   call $fb98      ; $8aff cd 98 fb
   mov b,a         ; $8b02 47      
   mvi a,$08       ; $8b03 3e 08   
   call $fb98      ; $8b05 cd 98 fb
   mov c,a         ; $8b08 4f      
   ret             ; $8b09 c9      

   mvi a,$08       ; $8b0a 3e 08   
   call $fb98      ; $8b0c cd 98 fb
   mov m,a         ; $8b0f 77      
   call $f999      ; $8b10 cd 99 f9
   jmp $fb0a       ; $8b13 c3 0a fb

   lxi b,$0000     ; $8b16 01 00 00
   mov a,m         ; $8b19 7e      
   add c           ; $8b1a 81      
   mov c,a         ; $8b1b 4f      
   push psw        ; $8b1c f5      
   call $f990      ; $8b1d cd 90 f9
   jz $f99f        ; $8b20 ca 9f f9
   pop psw         ; $8b23 f1      
   mov a,b         ; $8b24 78      
   adc m           ; $8b25 8e      
   mov b,a         ; $8b26 47      
   call $f999      ; $8b27 cd 99 f9
   jmp $fb19       ; $8b2a c3 19 fb

   mov a,c         ; $8b2d 79      
   ora a           ; $8b2e b7      
   jz $fb35        ; $8b2f ca 35 fb
   sta $7630       ; $8b32 32 30 76
   push h          ; $8b35 e5      
   call $fb16      ; $8b36 cd 16 fb
   pop h           ; $8b39 e1      
   call $fb78      ; $8b3a cd 78 fb
   xchg            ; $8b3d eb      
   call $fb78      ; $8b3e cd 78 fb
   xchg            ; $8b41 eb      
   push h          ; $8b42 e5      
   mov h,b         ; $8b43 60      
   mov l,c         ; $8b44 69      
   call $fb78      ; $8b45 cd 78 fb
   pop h           ; $8b48 e1      
   push b          ; $8b49 c5      
   lxi b,$0000     ; $8b4a 01 00 00
   call $fc46      ; $8b4d cd 46 fc
   dcr b           ; $8b50 05      
   xthl            ; $8b51 e3      
   xthl            ; $8b52 e3      
   jnz $fb4d       ; $8b53 c2 4d fb
   mvi c,$e6       ; $8b56 0e e6   
   call $fc46      ; $8b58 cd 46 fc
   call $fb90      ; $8b5b cd 90 fb
   xchg            ; $8b5e eb      
   call $fb90      ; $8b5f cd 90 fb
   xchg            ; $8b62 eb      
   call $fb86      ; $8b63 cd 86 fb
   lxi h,$0000     ; $8b66 21 00 00
   call $fb90      ; $8b69 cd 90 fb
   mvi c,$e6       ; $8b6c 0e e6   
   call $fc46      ; $8b6e cd 46 fc
   pop h           ; $8b71 e1      
   call $fb90      ; $8b72 cd 90 fb
   jmp $face       ; $8b75 c3 ce fa

   push b          ; $8b78 c5      
   call $f9b0      ; $8b79 cd b0 f9
   mov a,h         ; $8b7c 7c      
   call $fca5      ; $8b7d cd a5 fc
   mov a,l         ; $8b80 7d      
   call $f9ba      ; $8b81 cd ba f9
   pop b           ; $8b84 c1      
   ret             ; $8b85 c9      

   mov c,m         ; $8b86 4e      
   call $fc46      ; $8b87 cd 46 fc
   call $f999      ; $8b8a cd 99 f9
   jmp $fb86       ; $8b8d c3 86 fb

   mov c,h         ; $8b90 4c      
   call $fc46      ; $8b91 cd 46 fc
   mov c,l         ; $8b94 4d      
   jmp $fc46       ; $8b95 c3 46 fc

   push h          ; $8b98 e5      
   push b          ; $8b99 c5      
   push d          ; $8b9a d5      
   mov d,a         ; $8b9b 57      
   mvi a,$80       ; $8b9c 3e 80   
   sta $e008       ; $8b9e 32 08 e0
   lxi h,$0000     ; $8ba1 21 00 00
   dad sp          ; $8ba4 39      
   lxi sp,$0000    ; $8ba5 31 00 00
   shld $760d      ; $8ba8 22 0d 76
   mvi c,$00       ; $8bab 0e 00   
   lda $8002       ; $8bad 3a 02 80
   rrc             ; $8bb0 0f      
   rrc             ; $8bb1 0f      
   rrc             ; $8bb2 0f      
   rrc             ; $8bb3 0f      
   ani $01         ; $8bb4 e6 01   
   mov e,a         ; $8bb6 5f      
   pop psw         ; $8bb7 f1      
   mov a,c         ; $8bb8 79      
   ani $7f         ; $8bb9 e6 7f   
   rlc             ; $8bbb 07      
   mov c,a         ; $8bbc 4f      
   mvi h,$00       ; $8bbd 26 00   
   dcr h           ; $8bbf 25      
   jz $fc34        ; $8bc0 ca 34 fc
   pop psw         ; $8bc3 f1      
   lda $8002       ; $8bc4 3a 02 80
   rrc             ; $8bc7 0f      
   rrc             ; $8bc8 0f      
   rrc             ; $8bc9 0f      
   rrc             ; $8bca 0f      
   ani $01         ; $8bcb e6 01   
   cmp e           ; $8bcd bb      
   jz $fbbf        ; $8bce ca bf fb
   ora c           ; $8bd1 b1      
   mov c,a         ; $8bd2 4f      
   dcr d           ; $8bd3 15      
   lda $762f       ; $8bd4 3a 2f 76
   jnz $fbdc       ; $8bd7 c2 dc fb
   sui $12         ; $8bda d6 12   
   mov b,a         ; $8bdc 47      
   pop psw         ; $8bdd f1      
   dcr b           ; $8bde 05      
   jnz $fbdd       ; $8bdf c2 dd fb
   inr d           ; $8be2 14      
   lda $8002       ; $8be3 3a 02 80
   rrc             ; $8be6 0f      
   rrc             ; $8be7 0f      
   rrc             ; $8be8 0f      
   rrc             ; $8be9 0f      
   ani $01         ; $8bea e6 01   
   mov e,a         ; $8bec 5f      
   mov a,d         ; $8bed 7a      
   ora a           ; $8bee b7      
   jp $fc0b        ; $8bef f2 0b fc
   mov a,c         ; $8bf2 79      
   cpi $e6         ; $8bf3 fe e6   
   jnz $fbff       ; $8bf5 c2 ff fb
   xra a           ; $8bf8 af      
   sta $762e       ; $8bf9 32 2e 76
   jmp $fc09       ; $8bfc c3 09 fc

   cpi $19         ; $8bff fe 19   
   jnz $fbb7       ; $8c01 c2 b7 fb
   mvi a,$ff       ; $8c04 3e ff   
   sta $762e       ; $8c06 32 2e 76
   mvi d,$09       ; $8c09 16 09   
   dcr d           ; $8c0b 15      
   jnz $fbb7       ; $8c0c c2 b7 fb
   lxi h,$e004     ; $8c0f 21 04 e0
   mvi m,$d0       ; $8c12 36 d0   
   mvi m,$76       ; $8c14 36 76   
   inx h           ; $8c16 23      
   mvi m,$23       ; $8c17 36 23   
   mvi m,$49       ; $8c19 36 49   
   mvi a,$27       ; $8c1b 3e 27   
   sta $c001       ; $8c1d 32 01 c0
   mvi a,$e0       ; $8c20 3e e0   
   sta $c001       ; $8c22 32 01 c0
   mvi l,$08       ; $8c25 2e 08   
   mvi m,$a4       ; $8c27 36 a4   
   lhld $760d      ; $8c29 2a 0d 76
   sphl            ; $8c2c f9      
   lda $762e       ; $8c2d 3a 2e 76
   xra c           ; $8c30 a9      
   jmp $fca1       ; $8c31 c3 a1 fc

   lhld $760d      ; $8c34 2a 0d 76
   sphl            ; $8c37 f9      
   call $face      ; $8c38 cd ce fa
   mov a,d         ; $8c3b 7a      
   ora a           ; $8c3c b7      
   jp $faae        ; $8c3d f2 ae fa
   call $f9a4      ; $8c40 cd a4 f9
   jmp $fb9c       ; $8c43 c3 9c fb

   push h          ; $8c46 e5      
   push b          ; $8c47 c5      
   push d          ; $8c48 d5      
   push psw        ; $8c49 f5      
   mvi a,$80       ; $8c4a 3e 80   
   sta $e008       ; $8c4c 32 08 e0
   lxi h,$0000     ; $8c4f 21 00 00
   dad sp          ; $8c52 39      
   lxi sp,$0000    ; $8c53 31 00 00
   mvi d,$08       ; $8c56 16 08   
   pop psw         ; $8c58 f1      
   mov a,c         ; $8c59 79      
   rlc             ; $8c5a 07      
   mov c,a         ; $8c5b 4f      
   mvi a,$01       ; $8c5c 3e 01   
   xra c           ; $8c5e a9      
   sta $8002       ; $8c5f 32 02 80
   lda $7630       ; $8c62 3a 30 76
   mov b,a         ; $8c65 47      
   pop psw         ; $8c66 f1      
   dcr b           ; $8c67 05      
   jnz $fc66       ; $8c68 c2 66 fc
   mvi a,$00       ; $8c6b 3e 00   
   xra c           ; $8c6d a9      
   sta $8002       ; $8c6e 32 02 80
   dcr d           ; $8c71 15      
   lda $7630       ; $8c72 3a 30 76
   jnz $fc7a       ; $8c75 c2 7a fc
   sui $0e         ; $8c78 d6 0e   
   mov b,a         ; $8c7a 47      
   pop psw         ; $8c7b f1      
   dcr b           ; $8c7c 05      
   jnz $fc7b       ; $8c7d c2 7b fc
   inr d           ; $8c80 14      
   dcr d           ; $8c81 15      
   jnz $fc58       ; $8c82 c2 58 fc
   sphl            ; $8c85 f9      
   lxi h,$e004     ; $8c86 21 04 e0
   mvi m,$d0       ; $8c89 36 d0   
   mvi m,$76       ; $8c8b 36 76   
   inx h           ; $8c8d 23      
   mvi m,$23       ; $8c8e 36 23   
   mvi m,$49       ; $8c90 36 49   
   mvi a,$27       ; $8c92 3e 27   
   sta $c001       ; $8c94 32 01 c0
   mvi a,$e0       ; $8c97 3e e0   
   sta $c001       ; $8c99 32 01 c0
   mvi l,$08       ; $8c9c 2e 08   
   mvi m,$a4       ; $8c9e 36 a4   
   pop psw         ; $8ca0 f1      
   pop d           ; $8ca1 d1      
   pop b           ; $8ca2 c1      
   pop h           ; $8ca3 e1      
   ret             ; $8ca4 c9      

   push psw        ; $8ca5 f5      
   rrc             ; $8ca6 0f      
   rrc             ; $8ca7 0f      
   rrc             ; $8ca8 0f      
   rrc             ; $8ca9 0f      
   call $fcae      ; $8caa cd ae fc
   pop psw         ; $8cad f1      
   ani $0f         ; $8cae e6 0f   
   cpi $0a         ; $8cb0 fe 0a   
   jm $fcb7        ; $8cb2 fa b7 fc
   adi $07         ; $8cb5 c6 07   
   adi $30         ; $8cb7 c6 30   
   mov c,a         ; $8cb9 4f      
   push psw        ; $8cba f5      
   push b          ; $8cbb c5      
   push d          ; $8cbc d5      
   push h          ; $8cbd e5      
   call $fe01      ; $8cbe cd 01 fe
   lxi h,$fd85     ; $8cc1 21 85 fd
   push h          ; $8cc4 e5      
   lhld $7602      ; $8cc5 2a 02 76
   xchg            ; $8cc8 eb      
   lhld $7600      ; $8cc9 2a 00 76
   lda $7604       ; $8ccc 3a 04 76
   dcr a           ; $8ccf 3d      
   jm $fcee        ; $8cd0 fa ee fc
   jz $fd65        ; $8cd3 ca 65 fd
   jpo $fd73       ; $8cd6 e2 73 fd
   mov a,c         ; $8cd9 79      
   sui $20         ; $8cda d6 20   
   mov c,a         ; $8cdc 4f      
   dcr c           ; $8cdd 0d      
   jm $fce9        ; $8cde fa e9 fc
   push b          ; $8ce1 c5      
   call $fdb9      ; $8ce2 cd b9 fd
   pop b           ; $8ce5 c1      
   jmp $fcdd       ; $8ce6 c3 dd fc

   xra a           ; $8ce9 af      
   sta $7604       ; $8cea 32 04 76
   ret             ; $8ced c9      

   mov a,c         ; $8cee 79      
   ani $7f         ; $8cef e6 7f   
   mov c,a         ; $8cf1 4f      
   cpi $1f         ; $8cf2 fe 1f   
   jz $fda3        ; $8cf4 ca a3 fd
   cpi $0c         ; $8cf7 fe 0c   
   jz $fdb2        ; $8cf9 ca b2 fd
   cpi $0d         ; $8cfc fe 0d   
   jz $fdf3        ; $8cfe ca f3 fd
   cpi $0a         ; $8d01 fe 0a   
   jz $fd47        ; $8d03 ca 47 fd
   cpi $08         ; $8d06 fe 08   
   jz $fdd6        ; $8d08 ca d6 fd
   cpi $18         ; $8d0b fe 18   
   jz $fdb9        ; $8d0d ca b9 fd
   cpi $19         ; $8d10 fe 19   
   jz $fde2        ; $8d12 ca e2 fd
   cpi $1a         ; $8d15 fe 1a   
   jz $fdc5        ; $8d17 ca c5 fd
   cpi $1b         ; $8d1a fe 1b   
   jz $fd9e        ; $8d1c ca 9e fd
   cpi $07         ; $8d1f fe 07   
   jnz $fd38       ; $8d21 c2 38 fd
   lxi b,$05f0     ; $8d24 01 f0 05
   mov a,b         ; $8d27 78      
   ei              ; $8d28 fb      
   dcr a           ; $8d29 3d      
   jnz $fd28       ; $8d2a c2 28 fd
   mov a,b         ; $8d2d 78      
   di              ; $8d2e f3      
   dcr a           ; $8d2f 3d      
   jnz $fd2e       ; $8d30 c2 2e fd
   dcr c           ; $8d33 0d      
   jnz $fd27       ; $8d34 c2 27 fd
   ret             ; $8d37 c9      

   mov m,c         ; $8d38 71      
   call $fdb9      ; $8d39 cd b9 fd
   mov a,d         ; $8d3c 7a      
   cpi $03         ; $8d3d fe 03   
   rnz             ; $8d3f c0      
   mov a,e         ; $8d40 7b      
   cpi $08         ; $8d41 fe 08   
   rnz             ; $8d43 c0      
   call $fde2      ; $8d44 cd e2 fd
   mov a,d         ; $8d47 7a      
   cpi $1b         ; $8d48 fe 1b   
   jnz $fdc5       ; $8d4a c2 c5 fd
   push h          ; $8d4d e5      
   push d          ; $8d4e d5      
   lxi h,$77c2     ; $8d4f 21 c2 77
   lxi d,$7810     ; $8d52 11 10 78
   lxi b,$079e     ; $8d55 01 9e 07
   ldax d          ; $8d58 1a      
   mov m,a         ; $8d59 77      
   inx h           ; $8d5a 23      
   inx d           ; $8d5b 13      
   dcx b           ; $8d5c 0b      
   mov a,c         ; $8d5d 79      
   ora b           ; $8d5e b0      
   jnz $fd58       ; $8d5f c2 58 fd
   pop d           ; $8d62 d1      
   pop h           ; $8d63 e1      
   ret             ; $8d64 c9      

   mov a,c         ; $8d65 79      
   cpi $59         ; $8d66 fe 59   
   jnz $fce9       ; $8d68 c2 e9 fc
   call $fdb2      ; $8d6b cd b2 fd
   mvi a,$02       ; $8d6e 3e 02   
   jmp $fcea       ; $8d70 c3 ea fc

   mov a,c         ; $8d73 79      
   sui $20         ; $8d74 d6 20   
   mov c,a         ; $8d76 4f      
   dcr c           ; $8d77 0d      
   mvi a,$04       ; $8d78 3e 04   
   jm $fcea        ; $8d7a fa ea fc
   push b          ; $8d7d c5      
   call $fdc5      ; $8d7e cd c5 fd
   pop b           ; $8d81 c1      
   jmp $fd77       ; $8d82 c3 77 fd
   shld $7600      ; $8d85 22 00 76
   xchg            ; $8d88 eb      
   shld $7602      ; $8d89 22 02 76
   mvi a,$80       ; $8d8c 3e 80   
   sta $c001       ; $8d8e 32 01 c0
   mov a,l         ; $8d91 7d      
   sta $c000       ; $8d92 32 00 c0
   mov a,h         ; $8d95 7c      
   sta $c000       ; $8d96 32 00 c0
   pop h           ; $8d99 e1      
   pop d           ; $8d9a d1      
   pop b           ; $8d9b c1      
   pop psw         ; $8d9c f1      
   ret             ; $8d9d c9      

   mvi a,$01       ; $8d9e 3e 01   
   jmp $fcea       ; $8da0 c3 ea fc

   lxi h,$7ff4     ; $8da3 21 f4 7f
   lxi d,$0925     ; $8da6 11 25 09
   xra a           ; $8da9 af      
   mov m,a         ; $8daa 77      
   dcx h           ; $8dab 2b      
   dcx d           ; $8dac 1b      
   mov a,e         ; $8dad 7b      
   ora d           ; $8dae b2      
   jnz $fda9       ; $8daf c2 a9 fd
   lxi d,$0308     ; $8db2 11 08 03
   lxi h,$77c2     ; $8db5 21 c2 77
   ret             ; $8db8 c9      

   mov a,e         ; $8db9 7b      
   inx h           ; $8dba 23      
   inr e           ; $8dbb 1c      
   cpi $47         ; $8dbc fe 47   
   rnz             ; $8dbe c0      
   mvi e,$08       ; $8dbf 1e 08   
   lxi b,$ffc0     ; $8dc1 01 c0 ff
   dad b           ; $8dc4 09      
   mov a,d         ; $8dc5 7a      
   cpi $1b         ; $8dc6 fe 1b   
   lxi b,$004e     ; $8dc8 01 4e 00
   jnz $fdd3       ; $8dcb c2 d3 fd
   mvi d,$02       ; $8dce 16 02   
   lxi b,$f8b0     ; $8dd0 01 b0 f8
   inr d           ; $8dd3 14      
   dad b           ; $8dd4 09      
   ret             ; $8dd5 c9      
   mov a,e         ; $8dd6 7b      
   dcx h           ; $8dd7 2b      
   dcr e           ; $8dd8 1d      
   cpi $08         ; $8dd9 fe 08   
   rnz             ; $8ddb c0      
   mvi e,$47       ; $8ddc 1e 47   
   lxi b,$0040     ; $8dde 01 40 00
   dad b           ; $8de1 09      
   mov a,d         ; $8de2 7a      
   cpi $03         ; $8de3 fe 03   
   lxi b,$ffb2     ; $8de5 01 b2 ff
   jnz $fdf0       ; $8de8 c2 f0 fd
   mvi d,$1c       ; $8deb 16 1c   
   lxi b,$0750     ; $8ded 01 50 07
   dcr d           ; $8df0 15      
   dad b           ; $8df1 09      
   ret             ; $8df2 c9      

   mov a,l         ; $8df3 7d      
   sub e           ; $8df4 93      
   jnc $fdf9       ; $8df5 d2 f9 fd
   dcr h           ; $8df8 25      
   mov l,a         ; $8df9 6f      
   mvi e,$08       ; $8dfa 1e 08   
   lxi b,$0008     ; $8dfc 01 08 00
   dad b           ; $8dff 09      
   ret             ; $8e00 c9      

   lda $7605       ; $8e01 3a 05 76
   ora a           ; $8e04 b7      
   rnz             ; $8e05 c0      
   push h          ; $8e06 e5      
   lhld $7609      ; $8e07 2a 09 76
   call $fe72      ; $8e0a cd 72 fe
   cmp l           ; $8e0d bd      
   mov l,a         ; $8e0e 6f      
   jz $fe22        ; $8e0f ca 22 fe
   mvi a,$01       ; $8e12 3e 01   
   sta $760b       ; $8e14 32 0b 76
   mvi h,$25       ; $8e17 26 25   
   xra a           ; $8e19 af      
   shld $7609      ; $8e1a 22 09 76
   pop h           ; $8e1d e1      
   sta $7605       ; $8e1e 32 05 76
   ret             ; $8e21 c9      

   dcr h           ; $8e22 25      
   jnz $fe19       ; $8e23 c2 19 fe
   inr a           ; $8e26 3c      
   jz $fe1a        ; $8e27 ca 1a fe
   push b          ; $8e2a c5      
   lxi b,$5003     ; $8e2b 01 03 50
   call $fd27      ; $8e2e cd 27 fd
   pop b           ; $8e31 c1      
   lda $760b       ; $8e32 3a 0b 76
   inr a           ; $8e35 3c      
   mvi h,$00       ; $8e36 26 00   
   jnz $fe3d       ; $8e38 c2 3d fe
   mvi h,$60       ; $8e3b 26 60   
   mvi a,$ff       ; $8e3d 3e ff   
   sta $760b       ; $8e3f 32 0b 76
   jmp $fe1a       ; $8e42 c3 1a fe

   jp $ff35        ; $8e45 f2 35 ff
   lxi h,$7610     ; $8e48 21 10 76
   mov e,m         ; $8e4b 5e      
   inr l           ; $8e4c 2c      
   mov d,m         ; $8e4d 56      
   cpi $40         ; $8e4e fe 40   
   jc $fe57        ; $8e50 da 57 fe
   xra e           ; $8e53 ab      
   jmp $fe5d       ; $8e54 c3 5d fe

   cpi $21         ; $8e57 fe 21   
   jc $fe5d        ; $8e59 da 5d fe
   xra d           ; $8e5c aa      
   pop d           ; $8e5d d1      
   pop b           ; $8e5e c1      
   pop h           ; $8e5f e1      
   ret             ; $8e60 c9      

   rst 7           ; $8e61 ff      
   rst 7           ; $8e62 ff      
   call $fe01      ; $8e63 cd 01 fe
   ora a           ; $8e66 b7      
   jz $fe63        ; $8e67 ca 63 fe
   xra a           ; $8e6a af      
   sta $7605       ; $8e6b 32 05 76
   lda $7609       ; $8e6e 3a 09 76
   ret             ; $8e71 c9      

   lda $7610       ; $8e72 3a 10 76
   ora a           ; $8e75 b7      
   jz $fe7b        ; $8e76 ca 7b fe
   mvi a,$08       ; $8e79 3e 08   
   sta $8002       ; $8e7b 32 02 80
   push h          ; $8e7e e5      
   lxi h,$0701     ; $8e7f 21 01 07
   mov a,l         ; $8e82 7d      
   rrc             ; $8e83 0f      
   mov l,a         ; $8e84 6f      
   cma             ; $8e85 2f      
   sta $8000       ; $8e86 32 00 80
   lda $8001       ; $8e89 3a 01 80
   cma             ; $8e8c 2f      
   ora a           ; $8e8d b7      
   jnz $fef8       ; $8e8e c2 f8 fe
   dcr h           ; $8e91 25      
   jp $fe82        ; $8e92 f2 82 fe
   mvi a,$ff       ; $8e95 3e ff   
   pop h           ; $8e97 e1      
   ret             ; $8e98 c9      

   nop             ; $8e99 00      
   .byte 0x20      ; $8e9a 20      
   nop             ; $8e9b 00      
   mov b,b         ; $8e9c 40      
   nop             ; $8e9d 00      
   .byte 0x10      ; $8e9e 10      
   rst 7           ; $8e9f ff      
   nop             ; $8ea0 00      
   sbb l           ; $8ea1 9d      
   nop             ; $8ea2 00      
   nop             ; $8ea3 00      
   add l           ; $8ea4 85      
   ana a           ; $8ea5 a7      
   xra b           ; $8ea6 a8      
   xra c           ; $8ea7 a9      
   dcx d           ; $8ea8 1b      
   dad b           ; $8ea9 09      
   add e           ; $8eaa 83      
   add c           ; $8eab 81      
   add b           ; $8eac 80      
   ana b           ; $8ead a0      
   sbb m           ; $8eae 9e      
   sbb h           ; $8eaf 9c      
   dcx sp          ; $8eb0 3b      
   mov c,d         ; $8eb1 4a      
   mov b,m         ; $8eb2 46      
   mov d,c         ; $8eb3 51      
   add h           ; $8eb4 84      
   ana c           ; $8eb5 a1      
   ana d           ; $8eb6 a2      
   ana e           ; $8eb7 a3      
   nop             ; $8eb8 00      
   lxi sp,$5943    ; $8eb9 31 43 59
   mov e,m         ; $8ebc 5e      
   ana h           ; $8ebd a4      
   ana l           ; $8ebe a5      
   ana m           ; $8ebf a6      
   lxi b,$5532     ; $8ec0 01 32 55
   mov d,a         ; $8ec3 57      
   mov d,e         ; $8ec4 53      
   sbb e           ; $8ec5 9b      
   inr c           ; $8ec6 0c      
   rar             ; $8ec7 1f      
   stax b          ; $8ec8 02      
   inx sp          ; $8ec9 33      
   mov c,e         ; $8eca 4b      
   mov b,c         ; $8ecb 41      
   mov c,l         ; $8ecc 4d      
   mov a,a         ; $8ecd 7f      
   nop             ; $8ece 00      
   ldax b          ; $8ecf 0a      
   inr m           ; $8ed0 34      
   mov b,l         ; $8ed1 45      
   mov d,b         ; $8ed2 50      
   mov c,c         ; $8ed3 49      
   .byte 0x20      ; $8ed4 20      
   .byte 0x18      ; $8ed5 18      
   dcr c           ; $8ed6 0d      
   lda $3503       ; $8ed7 3a 03 35
   mov c,m         ; $8eda 4e      
   mov d,d         ; $8edb 52      
   mov d,h         ; $8edc 54      
   ldax d          ; $8edd 1a      
   dad d           ; $8ede 19      
   cma             ; $8edf 2f      
   inr b           ; $8ee0 04      
   mvi m,$47       ; $8ee1 36 47   
   mov c,a         ; $8ee3 4f      
   mov e,b         ; $8ee4 58      
   mvi l,$20       ; $8ee5 2e 20   
   dcr l           ; $8ee7 2d      
   stc             ; $8ee8 37      
   mov e,e         ; $8ee9 5b      
   mov c,h         ; $8eea 4c      
   mov b,d         ; $8eeb 42      
   .byte 0x08      ; $8eec 08      
   mov e,h         ; $8eed 5c      
   mov c,b         ; $8eee 48      
   .byte 0x30      ; $8eef 30      
   .byte 0x38      ; $8ef0 38      
   mov e,l         ; $8ef1 5d      
   mov b,h         ; $8ef2 44      
   mov b,b         ; $8ef3 40      
   inr l           ; $8ef4 2c      
   mov d,m         ; $8ef5 56      
   mov e,d         ; $8ef6 5a      
   dad sp          ; $8ef7 39      
   push b          ; $8ef8 c5      
   push d          ; $8ef9 d5      
   lxi d,$0302     ; $8efa 11 02 03
   mvi l,$08       ; $8efd 2e 08   
   cmp d           ; $8eff ba      
   jz $ff11        ; $8f00 ca 11 ff
   inr d           ; $8f03 14      
   inr d           ; $8f04 14      
   inr l           ; $8f05 2c      
   dcr e           ; $8f06 1d      
   jp $feff        ; $8f07 f2 ff fe
   mvi l,$08       ; $8f0a 2e 08   
   dcr l           ; $8f0c 2d      
   rlc             ; $8f0d 07      
   jnc $ff0c       ; $8f0e d2 0c ff
   lxi b,$fe98     ; $8f11 01 98 fe
   mov a,c         ; $8f14 79      
   adi $08         ; $8f15 c6 08   
   dcr l           ; $8f17 2d      
   jp $ff15        ; $8f18 f2 15 ff
   mov c,a         ; $8f1b 4f      
   mov a,h         ; $8f1c 7c      
   add c           ; $8f1d 81      
   mov c,a         ; $8f1e 4f      
   ldax b          ; $8f1f 0a      
   cpi $7f         ; $8f20 fe 7f   
   jz $fe5d        ; $8f22 ca 5d fe
   cpi $90         ; $8f25 fe 90   
   jc $ff2f        ; $8f27 da 2f ff
   sui $70         ; $8f2a d6 70   
   jmp $fe5d       ; $8f2c c3 5d fe

   lxi d,$0580     ; $8f2f 11 80 05
   lxi h,$fe99     ; $8f32 21 99 fe
   cmp e           ; $8f35 bb      
   jnz $ff4c       ; $8f36 c2 4c ff
   mov a,m         ; $8f39 7e      
   lxi h,$7610     ; $8f3a 21 10 76
   mov c,a         ; $8f3d 4f      
   mov a,d         ; $8f3e 7a      
   cpi $02         ; $8f3f fe 02   
   jnc $ff45       ; $8f41 d2 45 ff
   inr l           ; $8f44 2c      
   mov m,c         ; $8f45 71      
   pop d           ; $8f46 d1      
   pop b           ; $8f47 c1      
   pop h           ; $8f48 e1      
   jmp $fe72       ; $8f49 c3 72 fe

   inr e           ; $8f4c 1c      
   inr l           ; $8f4d 2c      
   dcr d           ; $8f4e 15      
   jmp $fe45       ; $8f4f c3 45 fe

   lhld $7631      ; $8f52 2a 31 76
   ret             ; $8f55 c9      

   shld $7631      ; $8f56 22 31 76
   ret             ; $8f59 c9      

   rar             ; $8f5a 1f      
   mov m,d         ; $8f5b 72      
   mov h,c         ; $8f5c 61      
   mov h,h         ; $8f5d 64      
   mov l,c         ; $8f5e 69      
   mov l,a         ; $8f5f 6f      
   dcr l           ; $8f60 2d      
   .byte 0x38      ; $8f61 38      
   mvi m,$72       ; $8f62 36 72   
   mov l,e         ; $8f64 6b      
   nop             ; $8f65 00      
   dcr c           ; $8f66 0d      
   ldax b          ; $8f67 0a      
   dcr l           ; $8f68 2d      
   dcr l           ; $8f69 2d      
   mvi a,$00       ; $8f6a 3e 00   
   dcr c           ; $8f6c 0d      
   ldax b          ; $8f6d 0a      
   .byte 0x18      ; $8f6e 18      
   .byte 0x18      ; $8f6f 18      
   .byte 0x18      ; $8f70 18      
   .byte 0x18      ; $8f71 18      
   nop             ; $8f72 00      
   dcr c           ; $8f73 0d      
   ldax b          ; $8f74 0a      
   .byte 0x20      ; $8f75 20      
   mov d,b         ; $8f76 50      
   mov b,e         ; $8f77 43      
   dcr l           ; $8f78 2d      
   dcr c           ; $8f79 0d      
   ldax b          ; $8f7a 0a      
   .byte 0x20      ; $8f7b 20      
   mov c,b         ; $8f7c 48      
   mov c,h         ; $8f7d 4c      
   dcr l           ; $8f7e 2d      
   dcr c           ; $8f7f 0d      
   ldax b          ; $8f80 0a      
   .byte 0x20      ; $8f81 20      
   mov b,d         ; $8f82 42      
   mov b,e         ; $8f83 43      
   dcr l           ; $8f84 2d      
   dcr c           ; $8f85 0d      
   ldax b          ; $8f86 0a      
   .byte 0x20      ; $8f87 20      
   mov b,h         ; $8f88 44      
   mov b,l         ; $8f89 45      
   dcr l           ; $8f8a 2d      
   dcr c           ; $8f8b 0d      
   ldax b          ; $8f8c 0a      
   .byte 0x20      ; $8f8d 20      
   mov d,e         ; $8f8e 53      
   mov d,b         ; $8f8f 50      
   dcr l           ; $8f90 2d      
   dcr c           ; $8f91 0d      
   ldax b          ; $8f92 0a      
   .byte 0x20      ; $8f93 20      
   mov b,c         ; $8f94 41      
   mov b,m         ; $8f95 46      
   dcr l           ; $8f96 2d      
   dad d           ; $8f97 19      
   dad d           ; $8f98 19      
   dad d           ; $8f99 19      
   dad d           ; $8f9a 19      
   dad d           ; $8f9b 19      
   dad d           ; $8f9c 19      
   nop             ; $8f9d 00      
   .byte 0x08      ; $8f9e 08      
   .byte 0x20      ; $8f9f 20      
   .byte 0x08      ; $8fa0 08      
   nop             ; $8fa1 00      
   shld $7616      ; $8fa2 22 16 76
   push psw        ; $8fa5 f5      
   pop h           ; $8fa6 e1      
   shld $761e      ; $8fa7 22 1e 76
   pop h           ; $8faa e1      
   dcx h           ; $8fab 2b      
   shld $7614      ; $8fac 22 14 76
   lxi h,$0000     ; $8faf 21 00 00
   dad sp          ; $8fb2 39      
   lxi sp,$761e    ; $8fb3 31 1e 76
   push h          ; $8fb6 e5      
   push d          ; $8fb7 d5      
   push b          ; $8fb8 c5      
   lhld $7614      ; $8fb9 2a 14 76
   lxi sp,$76cf    ; $8fbc 31 cf 76
   call $fb78      ; $8fbf cd 78 fb
   xchg            ; $8fc2 eb      
   lhld $7623      ; $8fc3 2a 23 76
   call $f990      ; $8fc6 cd 90 f9
   jnz $f86c       ; $8fc9 c2 6c f8
   lda $7625       ; $8fcc 3a 25 76
   mov m,a         ; $8fcf 77      
   jmp $f86c       ; $8fd0 c3 6c f8

   lxi h,$ff73     ; $8fd3 21 73 ff
   call $f922      ; $8fd6 cd 22 f9
   lxi h,$7614     ; $8fd9 21 14 76
   mvi b,$06       ; $8fdc 06 06   
   mov e,m         ; $8fde 5e      
   inx h           ; $8fdf 23      
   mov d,m         ; $8fe0 56      
   push b          ; $8fe1 c5      
   push h          ; $8fe2 e5      
   xchg            ; $8fe3 eb      
   call $fb78      ; $8fe4 cd 78 fb
   call $f8ee      ; $8fe7 cd ee f8
   jnc $fff6       ; $8fea d2 f6 ff
   call $f95a      ; $8fed cd 5a f9
   pop d           ; $8ff0 d1      
   push d          ; $8ff1 d5      
   xchg            ; $8ff2 eb      
   mov m,d         ; $8ff3 72      
   dcx h           ; $8ff4 2b      
   mov m,e         ; $8ff5 73      
   pop h           ; $8ff6 e1      
   pop b           ; $8ff7 c1      
   dcr b           ; $8ff8 05      
   inx h           ; $8ff9 23      
   jnz $ffde       ; $8ffa c2 de ff
   ret             ; $8ffd c9      

.align 0x0800,0xFF

.end
