lbl_803A3BA0:
/* 803A3BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A3BA4  7C 08 02 A6 */	mflr r0
/* 803A3BA8  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A3BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A3BB0  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A3BB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A3BB8  80 63 00 00 */	lwz r3, 0(r3)
/* 803A3BBC  28 03 00 00 */	cmplwi r3, 0
/* 803A3BC0  80 83 00 74 */	lwz r4, 0x74(r3)
/* 803A3BC4  88 A3 00 92 */	lbz r5, 0x92(r3)
/* 803A3BC8  41 82 00 5C */	beq lbl_803A3C24
/* 803A3BCC  A0 03 00 00 */	lhz r0, 0(r3)
/* 803A3BD0  54 00 04 27 */	rlwinm. r0, r0, 0, 0x10, 0x13
/* 803A3BD4  40 82 00 50 */	bne lbl_803A3C24
/* 803A3BD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3BDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A3BE0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A3BE4  2C 00 00 07 */	cmpwi r0, 7
/* 803A3BE8  40 82 00 3C */	bne lbl_803A3C24
/* 803A3BEC  1C 65 00 03 */	mulli r3, r5, 3
/* 803A3BF0  38 03 00 03 */	addi r0, r3, 3
/* 803A3BF4  1C 60 06 14 */	mulli r3, r0, 0x614
/* 803A3BF8  3B E3 00 20 */	addi r31, r3, 0x20
/* 803A3BFC  7F E4 FA 15 */	add. r31, r4, r31
/* 803A3C00  41 82 00 24 */	beq lbl_803A3C24
/* 803A3C04  38 7F 00 1C */	addi r3, r31, 0x1c
/* 803A3C08  4B FE E3 DD */	bl mCoBG_Change2PoorAttr
/* 803A3C0C  38 7F 00 20 */	addi r3, r31, 0x20
/* 803A3C10  4B FE E3 D5 */	bl mCoBG_Change2PoorAttr
/* 803A3C14  38 7F 00 5C */	addi r3, r31, 0x5c
/* 803A3C18  4B FE E3 CD */	bl mCoBG_Change2PoorAttr
/* 803A3C1C  38 7F 00 60 */	addi r3, r31, 0x60
/* 803A3C20  4B FE E3 C5 */	bl mCoBG_Change2PoorAttr
lbl_803A3C24:
/* 803A3C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A3C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A3C2C  7C 08 03 A6 */	mtlr r0
/* 803A3C30  38 21 00 10 */	addi r1, r1, 0x10
/* 803A3C34  4E 80 00 20 */	blr 
