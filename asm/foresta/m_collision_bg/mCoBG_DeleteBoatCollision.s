lbl_8038D964:
/* 8038D964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038D968  7C 08 02 A6 */	mflr r0
/* 8038D96C  3C 80 81 13 */	lis r4, l_mCoBG_boat_move_bg_data@ha /* 0x811372EC@ha */
/* 8038D970  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038D974  38 A4 72 EC */	addi r5, r4, l_mCoBG_boat_move_bg_data@l /* 0x811372EC@l */
/* 8038D978  38 00 00 02 */	li r0, 2
/* 8038D97C  38 80 00 00 */	li r4, 0
/* 8038D980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038D984  7C 09 03 A6 */	mtctr r0
lbl_8038D988:
/* 8038D988  7C 05 20 2E */	lwzx r0, r5, r4
/* 8038D98C  7C 03 00 40 */	cmplw r3, r0
/* 8038D990  40 82 00 24 */	bne lbl_8038D9B4
/* 8038D994  3C 60 81 13 */	lis r3, l_mCoBG_boat_move_bg_data@ha /* 0x811372EC@ha */
/* 8038D998  38 03 72 EC */	addi r0, r3, l_mCoBG_boat_move_bg_data@l /* 0x811372EC@l */
/* 8038D99C  7F E0 22 14 */	add r31, r0, r4
/* 8038D9A0  84 7F 00 04 */	lwzu r3, 4(r31)
/* 8038D9A4  4B FF F5 51 */	bl mCoBG_CrossOffMoveBg
/* 8038D9A8  38 00 FF FF */	li r0, -1
/* 8038D9AC  90 1F 00 00 */	stw r0, 0(r31)
/* 8038D9B0  48 00 00 0C */	b lbl_8038D9BC
lbl_8038D9B4:
/* 8038D9B4  38 84 00 30 */	addi r4, r4, 0x30
/* 8038D9B8  42 00 FF D0 */	bdnz lbl_8038D988
lbl_8038D9BC:
/* 8038D9BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038D9C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038D9C4  7C 08 03 A6 */	mtlr r0
/* 8038D9C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8038D9CC  4E 80 00 20 */	blr 
