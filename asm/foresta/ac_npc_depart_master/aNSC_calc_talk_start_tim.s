lbl_8054D4AC:
/* 8054D4AC  80 83 09 C0 */	lwz r4, 0x9c0(r3)
/* 8054D4B0  2C 04 FF FF */	cmpwi r4, -1
/* 8054D4B4  41 81 00 0C */	bgt lbl_8054D4C0
/* 8054D4B8  38 80 00 B4 */	li r4, 0xb4
/* 8054D4BC  48 00 00 10 */	b lbl_8054D4CC
lbl_8054D4C0:
/* 8054D4C0  2C 04 00 00 */	cmpwi r4, 0
/* 8054D4C4  41 82 00 08 */	beq lbl_8054D4CC
/* 8054D4C8  38 84 FF FF */	addi r4, r4, -1
lbl_8054D4CC:
/* 8054D4CC  90 83 09 C0 */	stw r4, 0x9c0(r3)
/* 8054D4D0  4E 80 00 20 */	blr 
