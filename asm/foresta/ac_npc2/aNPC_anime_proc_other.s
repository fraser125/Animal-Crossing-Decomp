lbl_8053BB14:
/* 8053BB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053BB18  7C 08 02 A6 */	mflr r0
/* 8053BB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053BB20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053BB24  7C 9F 23 78 */	mr r31, r4
/* 8053BB28  93 C1 00 08 */	stw r30, 8(r1)
/* 8053BB2C  7C 7E 1B 78 */	mr r30, r3
/* 8053BB30  4B FF FD E9 */	bl aNPC_check_anime_timing
/* 8053BB34  2C 03 00 01 */	cmpwi r3, 1
/* 8053BB38  40 82 00 10 */	bne lbl_8053BB48
/* 8053BB3C  A0 9F 00 08 */	lhz r4, 8(r31)
/* 8053BB40  7F C3 F3 78 */	mr r3, r30
/* 8053BB44  48 00 08 79 */	bl func_8053C3BC
lbl_8053BB48:
/* 8053BB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053BB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053BB50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053BB54  7C 08 03 A6 */	mtlr r0
/* 8053BB58  38 21 00 10 */	addi r1, r1, 0x10
/* 8053BB5C  4E 80 00 20 */	blr 
