lbl_803E2DA0:
/* 803E2DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2DA4  7C 08 02 A6 */	mflr r0
/* 803E2DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E2DB0  3B E0 FF FF */	li r31, -1
/* 803E2DB4  93 C1 00 08 */	stw r30, 8(r1)
/* 803E2DB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E2DBC  41 80 00 38 */	blt lbl_803E2DF4
/* 803E2DC0  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803E2DC4  40 80 00 30 */	bge lbl_803E2DF4
/* 803E2DC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E2DCC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E2DD0  1C 7E 00 28 */	mulli r3, r30, 0x28
/* 803E2DD4  3C 84 00 02 */	addis r4, r4, 2
/* 803E2DD8  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 803E2DDC  38 63 00 94 */	addi r3, r3, 0x94
/* 803E2DE0  7C 60 1A 14 */	add r3, r0, r3
/* 803E2DE4  4B FF FD ED */	bl mQst_CheckFreeQuest
/* 803E2DE8  2C 03 00 00 */	cmpwi r3, 0
/* 803E2DEC  40 82 00 08 */	bne lbl_803E2DF4
/* 803E2DF0  7F DF F3 78 */	mr r31, r30
lbl_803E2DF4:
/* 803E2DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2DF8  7F E3 FB 78 */	mr r3, r31
/* 803E2DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E2E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E2E04  7C 08 03 A6 */	mtlr r0
/* 803E2E08  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2E0C  4E 80 00 20 */	blr 
