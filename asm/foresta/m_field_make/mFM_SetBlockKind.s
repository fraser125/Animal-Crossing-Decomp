lbl_803A40C0:
/* 803A40C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A40C4  7C 08 02 A6 */	mflr r0
/* 803A40C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A40CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A40D0  4B CF 6D FD */	bl func_8009AECC
/* 803A40D4  7C 7B 1B 78 */	mr r27, r3
/* 803A40D8  7C 9C 23 78 */	mr r28, r4
/* 803A40DC  7C BD 2B 78 */	mr r29, r5
/* 803A40E0  7C DE 33 78 */	mr r30, r6
/* 803A40E4  7C FF 3B 78 */	mr r31, r7
/* 803A40E8  48 00 00 38 */	b lbl_803A4120
lbl_803A40EC:
/* 803A40EC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803A40F0  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803A40F4  1C 60 00 06 */	mulli r3, r0, 6
/* 803A40F8  38 63 00 04 */	addi r3, r3, 4
/* 803A40FC  7C 1E 18 AE */	lbzx r0, r30, r3
/* 803A4100  98 1B 00 00 */	stb r0, 0(r27)
/* 803A4104  7C 7E 18 AE */	lbzx r3, r30, r3
/* 803A4108  48 04 09 51 */	bl mRF_Type2BlockInfo
/* 803A410C  90 7C 00 00 */	stw r3, 0(r28)
/* 803A4110  3B 7B 00 01 */	addi r27, r27, 1
/* 803A4114  3B 9C 00 04 */	addi r28, r28, 4
/* 803A4118  3B BD 00 02 */	addi r29, r29, 2
/* 803A411C  3B FF FF FF */	addi r31, r31, -1
lbl_803A4120:
/* 803A4120  2C 1F 00 00 */	cmpwi r31, 0
/* 803A4124  40 82 FF C8 */	bne lbl_803A40EC
/* 803A4128  39 61 00 20 */	addi r11, r1, 0x20
/* 803A412C  4B CF 6D ED */	bl func_8009AF18
/* 803A4130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A4134  7C 08 03 A6 */	mtlr r0
/* 803A4138  38 21 00 20 */	addi r1, r1, 0x20
/* 803A413C  4E 80 00 20 */	blr 
