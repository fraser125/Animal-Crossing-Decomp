lbl_804F6988:
/* 804F6988  2C 03 00 20 */	cmpwi r3, 0x20
/* 804F698C  38 03 2F A9 */	addi r0, r3, 0x2fa9
/* 804F6990  40 80 00 08 */	bge lbl_804F6998
/* 804F6994  38 03 13 27 */	addi r0, r3, 0x1327
lbl_804F6998:
/* 804F6998  7C 03 03 78 */	mr r3, r0
/* 804F699C  4E 80 00 20 */	blr 
