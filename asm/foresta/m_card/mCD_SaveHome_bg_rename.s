lbl_803FD4CC:
/* 803FD4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FD4D0  7C 08 02 A6 */	mflr r0
/* 803FD4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FD4DC  3B E0 FF FF */	li r31, -1
/* 803FD4E0  93 C1 00 08 */	stw r30, 8(r1)
/* 803FD4E4  7C 9E 23 78 */	mr r30, r4
/* 803FD4E8  80 03 01 9C */	lwz r0, 0x19c(r3)
/* 803FD4EC  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FD4F0  2C 00 00 01 */	cmpwi r0, 1
/* 803FD4F4  40 82 00 58 */	bne lbl_803FD54C
/* 803FD4F8  2C 05 FF FF */	cmpwi r5, -1
/* 803FD4FC  41 82 00 60 */	beq lbl_803FD55C
/* 803FD500  1C 85 00 94 */	mulli r4, r5, 0x94
/* 803FD504  38 C4 00 54 */	addi r6, r4, 0x54
/* 803FD508  7C C3 32 14 */	add r6, r3, r6
/* 803FD50C  80 E6 00 7C */	lwz r7, 0x7c(r6)
/* 803FD510  28 07 00 00 */	cmplwi r7, 0
/* 803FD514  41 82 00 48 */	beq lbl_803FD55C
/* 803FD518  3C 60 80 66 */	lis r3, l_mCD_land_file_name@ha /* 0x8065E688@ha */
/* 803FD51C  3C 80 80 66 */	lis r4, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FD520  38 63 E6 88 */	addi r3, r3, l_mCD_land_file_name@l /* 0x8065E688@l */
/* 803FD524  38 C6 00 74 */	addi r6, r6, 0x74
/* 803FD528  38 84 E6 A8 */	addi r4, r4, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FD52C  4B FF C8 D9 */	bl mCD_rename_file_fg
/* 803FD530  2C 03 00 01 */	cmpwi r3, 1
/* 803FD534  40 82 00 28 */	bne lbl_803FD55C
/* 803FD538  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FD53C  3B E0 00 01 */	li r31, 1
/* 803FD540  38 03 00 01 */	addi r0, r3, 1
/* 803FD544  90 1E 00 00 */	stw r0, 0(r30)
/* 803FD548  48 00 00 14 */	b lbl_803FD55C
lbl_803FD54C:
/* 803FD54C  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FD550  3B E0 00 01 */	li r31, 1
/* 803FD554  38 03 00 01 */	addi r0, r3, 1
/* 803FD558  90 1E 00 00 */	stw r0, 0(r30)
lbl_803FD55C:
/* 803FD55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD560  7F E3 FB 78 */	mr r3, r31
/* 803FD564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FD568  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FD56C  7C 08 03 A6 */	mtlr r0
/* 803FD570  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD574  4E 80 00 20 */	blr 
