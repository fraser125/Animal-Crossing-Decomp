lbl_8042AFCC:
/* 8042AFCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042AFD0  7C 08 02 A6 */	mflr r0
/* 8042AFD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AFD8  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8042AFDC  2C 00 00 01 */	cmpwi r0, 1
/* 8042AFE0  40 82 00 0C */	bne lbl_8042AFEC
/* 8042AFE4  38 A0 00 0B */	li r5, 0xb
/* 8042AFE8  48 00 05 2D */	bl aID_setupAction
lbl_8042AFEC:
/* 8042AFEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AFF0  7C 08 03 A6 */	mtlr r0
/* 8042AFF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AFF8  4E 80 00 20 */	blr 
