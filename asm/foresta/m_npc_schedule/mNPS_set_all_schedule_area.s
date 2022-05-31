lbl_803D773C:
/* 803D773C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7740  7C 08 02 A6 */	mflr r0
/* 803D7744  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D7748  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D774C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D7750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D7754  3F E3 00 01 */	addis r31, r3, 1
/* 803D7758  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803D775C  93 C1 00 08 */	stw r30, 8(r1)
/* 803D7760  3B C0 00 00 */	li r30, 0
lbl_803D7764:
/* 803D7764  7F E3 FB 78 */	mr r3, r31
/* 803D7768  4B FF 4E 55 */	bl mNpc_CheckFreeAnimalInfo
/* 803D776C  2C 03 00 00 */	cmpwi r3, 0
/* 803D7770  40 82 00 0C */	bne lbl_803D777C
/* 803D7774  7F E3 FB 78 */	mr r3, r31
/* 803D7778  4B FF FD 4D */	bl mNPS_set_schedule_area
lbl_803D777C:
/* 803D777C  3B DE 00 01 */	addi r30, r30, 1
/* 803D7780  3B FF 09 88 */	addi r31, r31, 0x988
/* 803D7784  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803D7788  41 80 FF DC */	blt lbl_803D7764
/* 803D778C  4B FF FF 4D */	bl mNPS_schedule_manager
/* 803D7790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7798  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D779C  7C 08 03 A6 */	mtlr r0
/* 803D77A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D77A4  4E 80 00 20 */	blr 
