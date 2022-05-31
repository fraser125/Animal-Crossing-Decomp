lbl_8042D92C:
/* 8042D92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D930  7C 08 02 A6 */	mflr r0
/* 8042D934  3C A0 80 64 */	lis r5, lit_550@ha /* 0x80644120@ha */
/* 8042D938  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D93C  C0 25 41 20 */	lfs f1, lit_550@l(r5)  /* 0x80644120@l */
/* 8042D940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D944  7C 9F 23 78 */	mr r31, r4
/* 8042D948  93 C1 00 08 */	stw r30, 8(r1)
/* 8042D94C  7C 7E 1B 78 */	mr r30, r3
/* 8042D950  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8042D954  4B F4 2B 35 */	bl cKF_FrameControl_passCheck_now
/* 8042D958  2C 03 00 01 */	cmpwi r3, 1
/* 8042D95C  40 82 00 10 */	bne lbl_8042D96C
/* 8042D960  38 9E 00 28 */	addi r4, r30, 0x28
/* 8042D964  38 60 01 46 */	li r3, 0x146
/* 8042D968  48 20 06 41 */	bl sAdo_OngenTrgStart
lbl_8042D96C:
/* 8042D96C  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 8042D970  2C 00 00 01 */	cmpwi r0, 1
/* 8042D974  40 82 00 24 */	bne lbl_8042D998
/* 8042D978  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8042D97C  38 80 00 01 */	li r4, 1
/* 8042D980  38 A0 00 01 */	li r5, 1
/* 8042D984  38 C0 00 00 */	li r6, 0
/* 8042D988  4B FC 1D 55 */	bl mSM_open_submenu
/* 8042D98C  7F C3 F3 78 */	mr r3, r30
/* 8042D990  38 80 00 04 */	li r4, 4
/* 8042D994  48 00 00 91 */	bl aMBX_setupAction
lbl_8042D998:
/* 8042D998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D9A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042D9A4  7C 08 03 A6 */	mtlr r0
/* 8042D9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D9AC  4E 80 00 20 */	blr 
