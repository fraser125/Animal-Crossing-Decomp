lbl_8041FCB0:
/* 8041FCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041FCB4  7C 08 02 A6 */	mflr r0
/* 8041FCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041FCBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041FCC0  3B E0 00 02 */	li r31, 2
/* 8041FCC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8041FCC8  7C 9E 23 78 */	mr r30, r4
/* 8041FCCC  80 64 00 00 */	lwz r3, 0(r4)
/* 8041FCD0  4B F7 DF 1D */	bl mEv_check_keep
/* 8041FCD4  2C 03 00 00 */	cmpwi r3, 0
/* 8041FCD8  41 82 00 10 */	beq lbl_8041FCE8
/* 8041FCDC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FCE0  4B F7 DE D9 */	bl mEv_clear_keep
/* 8041FCE4  3B E0 00 01 */	li r31, 1
lbl_8041FCE8:
/* 8041FCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041FCEC  7F E3 FB 78 */	mr r3, r31
/* 8041FCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041FCF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041FCF8  7C 08 03 A6 */	mtlr r0
/* 8041FCFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8041FD00  4E 80 00 20 */	blr 
