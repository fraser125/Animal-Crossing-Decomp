lbl_8049F2BC:
/* 8049F2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F2C0  7C 08 02 A6 */	mflr r0
/* 8049F2C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F2CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049F2D0  3C 63 00 02 */	addis r3, r3, 2
/* 8049F2D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049F2D8  80 63 60 7C */	lwz r3, 0x607c(r3)
/* 8049F2DC  28 03 00 00 */	cmplwi r3, 0
/* 8049F2E0  41 82 00 30 */	beq lbl_8049F310
/* 8049F2E4  83 E3 00 00 */	lwz r31, 0(r3)
/* 8049F2E8  28 1F 00 00 */	cmplwi r31, 0
/* 8049F2EC  41 82 00 24 */	beq lbl_8049F310
/* 8049F2F0  A8 9F 01 76 */	lha r4, 0x176(r31)
/* 8049F2F4  7F E3 FB 78 */	mr r3, r31
/* 8049F2F8  38 A0 00 02 */	li r5, 2
/* 8049F2FC  4B FF F4 1D */	bl aSI_CopyWallTexture
/* 8049F300  A8 9F 01 74 */	lha r4, 0x174(r31)
/* 8049F304  7F E3 FB 78 */	mr r3, r31
/* 8049F308  38 A0 00 02 */	li r5, 2
/* 8049F30C  4B FF F3 85 */	bl aSI_CopyFloorTexture
lbl_8049F310:
/* 8049F310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049F318  7C 08 03 A6 */	mtlr r0
/* 8049F31C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F320  4E 80 00 20 */	blr 
