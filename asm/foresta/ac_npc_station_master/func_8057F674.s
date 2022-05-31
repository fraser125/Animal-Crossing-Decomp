lbl_8057F674:
/* 8057F674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F678  7C 08 02 A6 */	mflr r0
/* 8057F67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F680  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8057F684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F688  7C 9F 23 78 */	mr r31, r4
/* 8057F68C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057F690  7C 7E 1B 78 */	mr r30, r3
/* 8057F694  88 63 09 A5 */	lbz r3, 0x9a5(r3)
/* 8057F698  7C 03 00 40 */	cmplw r3, r0
/* 8057F69C  41 82 00 24 */	beq lbl_8057F6C0
/* 8057F6A0  7F E3 FB 78 */	mr r3, r31
/* 8057F6A4  38 80 01 68 */	li r4, 0x168
/* 8057F6A8  4B DF C6 61 */	bl mBGMPsComp_make_ps_demo
/* 8057F6AC  88 1E 09 A5 */	lbz r0, 0x9a5(r30)
/* 8057F6B0  28 00 00 01 */	cmplwi r0, 1
/* 8057F6B4  40 82 00 08 */	bne lbl_8057F6BC
/* 8057F6B8  4B DF CC 11 */	bl mBGMPsComp_delete_ps_quiet
lbl_8057F6BC:
/* 8057F6BC  9B FE 09 A5 */	stb r31, 0x9a5(r30)
lbl_8057F6C0:
/* 8057F6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057F6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057F6CC  7C 08 03 A6 */	mtlr r0
/* 8057F6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F6D4  4E 80 00 20 */	blr 
