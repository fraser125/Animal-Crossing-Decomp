lbl_8055B4B0:
/* 8055B4B0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8055B4B4  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8055B4B8  2C 00 00 02 */	cmpwi r0, 2
/* 8055B4BC  38 60 00 00 */	li r3, 0
/* 8055B4C0  41 82 00 24 */	beq lbl_8055B4E4
/* 8055B4C4  40 80 00 10 */	bge lbl_8055B4D4
/* 8055B4C8  2C 00 00 01 */	cmpwi r0, 1
/* 8055B4CC  40 80 00 10 */	bge lbl_8055B4DC
/* 8055B4D0  4E 80 00 20 */	blr 
lbl_8055B4D4:
/* 8055B4D4  2C 00 00 04 */	cmpwi r0, 4
/* 8055B4D8  4C 80 00 20 */	bgelr 
lbl_8055B4DC:
/* 8055B4DC  38 60 00 01 */	li r3, 1
/* 8055B4E0  4E 80 00 20 */	blr 
lbl_8055B4E4:
/* 8055B4E4  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 8055B4E8  2C 00 00 04 */	cmpwi r0, 4
/* 8055B4EC  41 82 00 24 */	beq lbl_8055B510
/* 8055B4F0  40 80 00 10 */	bge lbl_8055B500
/* 8055B4F4  2C 00 00 02 */	cmpwi r0, 2
/* 8055B4F8  41 82 00 20 */	beq lbl_8055B518
/* 8055B4FC  4E 80 00 20 */	blr 
lbl_8055B500:
/* 8055B500  2C 00 00 08 */	cmpwi r0, 8
/* 8055B504  4C 80 00 20 */	bgelr 
/* 8055B508  2C 00 00 06 */	cmpwi r0, 6
/* 8055B50C  4D 80 00 20 */	bltlr 
lbl_8055B510:
/* 8055B510  38 60 00 01 */	li r3, 1
/* 8055B514  4E 80 00 20 */	blr 
lbl_8055B518:
/* 8055B518  28 04 22 04 */	cmplwi r4, 0x2204
/* 8055B51C  4D 80 00 20 */	bltlr 
/* 8055B520  28 04 22 2B */	cmplwi r4, 0x222b
/* 8055B524  4D 81 00 20 */	bgtlr 
/* 8055B528  38 60 00 01 */	li r3, 1
/* 8055B52C  4E 80 00 20 */	blr 
