lbl_8055C950:
/* 8055C950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C954  7C 08 02 A6 */	mflr r0
/* 8055C958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C95C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C960  7C 9F 23 78 */	mr r31, r4
/* 8055C964  93 C1 00 08 */	stw r30, 8(r1)
/* 8055C968  7C 7E 1B 78 */	mr r30, r3
/* 8055C96C  4B E6 2D 3D */	bl func_803BF6A8
/* 8055C970  4B E6 2D D1 */	bl mMsg_Check_main_wait
/* 8055C974  2C 03 00 01 */	cmpwi r3, 1
/* 8055C978  40 82 00 18 */	bne lbl_8055C990
/* 8055C97C  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 8055C980  7F C3 F3 78 */	mr r3, r30
/* 8055C984  7F E4 FB 78 */	mr r4, r31
/* 8055C988  38 A5 00 01 */	addi r5, r5, 1
/* 8055C98C  48 00 24 45 */	bl aNSC_setupAction
lbl_8055C990:
/* 8055C990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C998  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055C99C  7C 08 03 A6 */	mtlr r0
/* 8055C9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C9A4  4E 80 00 20 */	blr 
