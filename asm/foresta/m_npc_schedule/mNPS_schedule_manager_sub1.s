lbl_803D763C:
/* 803D763C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7640  7C 08 02 A6 */	mflr r0
/* 803D7644  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D7648  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D764C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D7650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7654  3F E3 00 02 */	addis r31, r3, 2
/* 803D7658  3B FF 66 A8 */	addi r31, r31, 0x66a8
/* 803D765C  93 C1 00 08 */	stw r30, 8(r1)
/* 803D7660  3B C0 00 00 */	li r30, 0
lbl_803D7664:
/* 803D7664  80 1F 00 00 */	lwz r0, 0(r31)
/* 803D7668  28 00 00 00 */	cmplwi r0, 0
/* 803D766C  41 82 00 0C */	beq lbl_803D7678
/* 803D7670  7F E3 FB 78 */	mr r3, r31
/* 803D7674  4B FF FF 1D */	bl mNPS_schedule_manager_sub
lbl_803D7678:
/* 803D7678  3B DE 00 01 */	addi r30, r30, 1
/* 803D767C  3B FF 00 10 */	addi r31, r31, 0x10
/* 803D7680  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803D7684  41 80 FF E0 */	blt lbl_803D7664
/* 803D7688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D768C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7690  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D7694  7C 08 03 A6 */	mtlr r0
/* 803D7698  38 21 00 10 */	addi r1, r1, 0x10
/* 803D769C  4E 80 00 20 */	blr 
