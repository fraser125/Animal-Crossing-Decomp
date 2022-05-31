lbl_80370A94:
/* 80370A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370A98  7C 08 02 A6 */	mflr r0
/* 80370A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80370AA4  4B D2 A4 29 */	bl func_8009AECC
/* 80370AA8  7C 7B 1B 78 */	mr r27, r3
/* 80370AAC  7C 9C 23 78 */	mr r28, r4
/* 80370AB0  7C BD 2B 78 */	mr r29, r5
/* 80370AB4  7C DE 33 78 */	mr r30, r6
/* 80370AB8  7C FF 3B 78 */	mr r31, r7
/* 80370ABC  4B FF FF B5 */	bl cKF_SkeletonInfo_R_zeroClear
/* 80370AC0  7F 63 DB 78 */	mr r3, r27
/* 80370AC4  4B FF F8 C1 */	bl cKF_FrameControl_ct
/* 80370AC8  93 9B 00 18 */	stw r28, 0x18(r27)
/* 80370ACC  93 BB 00 1C */	stw r29, 0x1c(r27)
/* 80370AD0  93 DB 00 24 */	stw r30, 0x24(r27)
/* 80370AD4  93 FB 00 28 */	stw r31, 0x28(r27)
/* 80370AD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80370ADC  4B D2 A4 3D */	bl func_8009AF18
/* 80370AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370AE4  7C 08 03 A6 */	mtlr r0
/* 80370AE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80370AEC  4E 80 00 20 */	blr 
