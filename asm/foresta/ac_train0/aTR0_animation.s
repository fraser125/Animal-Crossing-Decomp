lbl_805C0174:
/* 805C0174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C0178  7C 08 02 A6 */	mflr r0
/* 805C017C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C0180  39 61 00 20 */	addi r11, r1, 0x20
/* 805C0184  4B AD AD 51 */	bl func_8009AED4
/* 805C0188  7C 7D 1B 78 */	mr r29, r3
/* 805C018C  3B E0 00 00 */	li r31, 0
/* 805C0190  C0 03 01 88 */	lfs f0, 0x188(r3)
/* 805C0194  38 7D 01 78 */	addi r3, r29, 0x178
/* 805C0198  FC 00 00 1E */	fctiwz f0, f0
/* 805C019C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805C01A0  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 805C01A4  4B DB 0E 71 */	bl cKF_SkeletonInfo_R_play
/* 805C01A8  80 1D 01 E8 */	lwz r0, 0x1e8(r29)
/* 805C01AC  7C 1E 00 00 */	cmpw r30, r0
/* 805C01B0  41 82 00 0C */	beq lbl_805C01BC
/* 805C01B4  93 DD 01 E8 */	stw r30, 0x1e8(r29)
/* 805C01B8  3B E0 00 01 */	li r31, 1
lbl_805C01BC:
/* 805C01BC  93 FD 01 74 */	stw r31, 0x174(r29)
/* 805C01C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C01C4  4B AD AD 5D */	bl func_8009AF20
/* 805C01C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C01CC  7C 08 03 A6 */	mtlr r0
/* 805C01D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805C01D4  4E 80 00 20 */	blr 
