lbl_803AF69C:
/* 803AF69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AF6A0  7C 08 02 A6 */	mflr r0
/* 803AF6A4  2C 04 00 00 */	cmpwi r4, 0
/* 803AF6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AF6AC  41 82 00 0C */	beq lbl_803AF6B8
/* 803AF6B0  4B FF FF CD */	bl mFont_Get_FontOffset
/* 803AF6B4  48 00 00 08 */	b lbl_803AF6BC
lbl_803AF6B8:
/* 803AF6B8  38 60 00 00 */	li r3, 0
lbl_803AF6BC:
/* 803AF6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AF6C0  20 63 00 0C */	subfic r3, r3, 0xc
/* 803AF6C4  7C 08 03 A6 */	mtlr r0
/* 803AF6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AF6CC  4E 80 00 20 */	blr 
