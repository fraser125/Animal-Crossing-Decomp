lbl_803B8718:
/* 803B8718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B871C  7C 08 02 A6 */	mflr r0
/* 803B8720  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B8724  38 81 00 09 */	addi r4, r1, 9
/* 803B8728  38 A1 00 08 */	addi r5, r1, 8
/* 803B872C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B8730  7C 7F 1B 78 */	mr r31, r3
/* 803B8734  38 61 00 0A */	addi r3, r1, 0xa
/* 803B8738  7F E6 FB 78 */	mr r6, r31
/* 803B873C  4B FF FE 7D */	bl mEnv_GetRoomPrimColor
/* 803B8740  80 7F 00 00 */	lwz r3, 0(r31)
/* 803B8744  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 803B8748  3D 20 E7 00 */	lis r9, 0xe700
/* 803B874C  39 00 00 00 */	li r8, 0
/* 803B8750  80 A3 02 D0 */	lwz r5, 0x2d0(r3)
/* 803B8754  38 E4 00 80 */	addi r7, r4, 0x0080 /* 0xFA000080@l */
/* 803B8758  38 05 00 08 */	addi r0, r5, 8
/* 803B875C  90 03 02 D0 */	stw r0, 0x2d0(r3)
/* 803B8760  91 25 00 00 */	stw r9, 0(r5)
/* 803B8764  91 05 00 04 */	stw r8, 4(r5)
/* 803B8768  80 C3 02 D0 */	lwz r6, 0x2d0(r3)
/* 803B876C  38 06 00 08 */	addi r0, r6, 8
/* 803B8770  90 03 02 D0 */	stw r0, 0x2d0(r3)
/* 803B8774  90 E6 00 00 */	stw r7, 0(r6)
/* 803B8778  88 01 00 09 */	lbz r0, 9(r1)
/* 803B877C  88 81 00 0A */	lbz r4, 0xa(r1)
/* 803B8780  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 803B8784  88 A1 00 08 */	lbz r5, 8(r1)
/* 803B8788  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 803B878C  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 803B8790  60 00 00 FF */	ori r0, r0, 0xff
/* 803B8794  90 06 00 04 */	stw r0, 4(r6)
/* 803B8798  80 83 02 E0 */	lwz r4, 0x2e0(r3)
/* 803B879C  38 04 00 08 */	addi r0, r4, 8
/* 803B87A0  90 03 02 E0 */	stw r0, 0x2e0(r3)
/* 803B87A4  91 24 00 00 */	stw r9, 0(r4)
/* 803B87A8  91 04 00 04 */	stw r8, 4(r4)
/* 803B87AC  80 C3 02 E0 */	lwz r6, 0x2e0(r3)
/* 803B87B0  38 06 00 08 */	addi r0, r6, 8
/* 803B87B4  90 03 02 E0 */	stw r0, 0x2e0(r3)
/* 803B87B8  90 E6 00 00 */	stw r7, 0(r6)
/* 803B87BC  88 01 00 09 */	lbz r0, 9(r1)
/* 803B87C0  88 81 00 0A */	lbz r4, 0xa(r1)
/* 803B87C4  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 803B87C8  88 A1 00 08 */	lbz r5, 8(r1)
/* 803B87CC  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 803B87D0  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 803B87D4  60 00 00 FF */	ori r0, r0, 0xff
/* 803B87D8  90 06 00 04 */	stw r0, 4(r6)
/* 803B87DC  80 83 03 20 */	lwz r4, 0x320(r3)
/* 803B87E0  38 04 00 08 */	addi r0, r4, 8
/* 803B87E4  90 03 03 20 */	stw r0, 0x320(r3)
/* 803B87E8  91 24 00 00 */	stw r9, 0(r4)
/* 803B87EC  91 04 00 04 */	stw r8, 4(r4)
/* 803B87F0  80 A3 03 20 */	lwz r5, 0x320(r3)
/* 803B87F4  38 05 00 08 */	addi r0, r5, 8
/* 803B87F8  90 03 03 20 */	stw r0, 0x320(r3)
/* 803B87FC  90 E5 00 00 */	stw r7, 0(r5)
/* 803B8800  88 01 00 09 */	lbz r0, 9(r1)
/* 803B8804  88 61 00 0A */	lbz r3, 0xa(r1)
/* 803B8808  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 803B880C  88 81 00 08 */	lbz r4, 8(r1)
/* 803B8810  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 803B8814  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 803B8818  60 00 00 FF */	ori r0, r0, 0xff
/* 803B881C  90 05 00 04 */	stw r0, 4(r5)
/* 803B8820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B8824  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B8828  7C 08 03 A6 */	mtlr r0
/* 803B882C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B8830  4E 80 00 20 */	blr 
