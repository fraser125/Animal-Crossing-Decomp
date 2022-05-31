lbl_805A6D88:
/* 805A6D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6D8C  7C 08 02 A6 */	mflr r0
/* 805A6D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A6D98  7C 7F 1B 78 */	mr r31, r3
/* 805A6D9C  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A6DA0  4B DC 9D 51 */	bl cKF_SkeletonInfo_R_dt
/* 805A6DA4  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 805A6DA8  38 81 00 08 */	addi r4, r1, 8
/* 805A6DAC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 805A6DB0  38 60 58 4F */	li r3, 0x584f
/* 805A6DB4  38 A0 00 00 */	li r5, 0
/* 805A6DB8  90 C1 00 08 */	stw r6, 8(r1)
/* 805A6DBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A6DC0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805A6DC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A6DC8  4B E0 0A 69 */	bl mFI_SetFG_common
/* 805A6DCC  80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 805A6DD0  28 03 00 00 */	cmplwi r3, 0
/* 805A6DD4  41 82 00 18 */	beq lbl_805A6DEC
/* 805A6DD8  80 03 01 84 */	lwz r0, 0x184(r3)
/* 805A6DDC  7C 00 F8 40 */	cmplw r0, r31
/* 805A6DE0  40 82 00 0C */	bne lbl_805A6DEC
/* 805A6DE4  38 00 00 00 */	li r0, 0
/* 805A6DE8  90 03 01 84 */	stw r0, 0x184(r3)
lbl_805A6DEC:
/* 805A6DEC  7F E3 FB 78 */	mr r3, r31
/* 805A6DF0  4B DE 6B 75 */	bl mCoBG_DeleteBoatCollision
/* 805A6DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A6DF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A6DFC  7C 08 03 A6 */	mtlr r0
/* 805A6E00  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6E04  4E 80 00 20 */	blr 
