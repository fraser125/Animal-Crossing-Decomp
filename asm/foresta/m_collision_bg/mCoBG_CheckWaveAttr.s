lbl_80394400:
/* 80394400  28 03 00 0B */	cmplwi r3, 0xb
/* 80394404  41 82 00 1C */	beq lbl_80394420
/* 80394408  28 03 00 24 */	cmplwi r3, 0x24
/* 8039440C  41 82 00 14 */	beq lbl_80394420
/* 80394410  28 03 00 19 */	cmplwi r3, 0x19
/* 80394414  41 82 00 0C */	beq lbl_80394420
/* 80394418  28 03 00 1A */	cmplwi r3, 0x1a
/* 8039441C  40 82 00 0C */	bne lbl_80394428
lbl_80394420:
/* 80394420  38 60 00 01 */	li r3, 1
/* 80394424  4E 80 00 20 */	blr 
lbl_80394428:
/* 80394428  38 60 00 00 */	li r3, 0
/* 8039442C  4E 80 00 20 */	blr 
