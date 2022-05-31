lbl_803D0618:
/* 803D0618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D061C  7C 08 02 A6 */	mflr r0
/* 803D0620  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D0628  3B E0 00 00 */	li r31, 0
/* 803D062C  4B FF C1 5D */	bl mNpc_SearchAnimalPersonalID
/* 803D0630  2C 03 FF FF */	cmpwi r3, -1
/* 803D0634  41 82 00 1C */	beq lbl_803D0650
/* 803D0638  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D063C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D0640  1C 03 00 38 */	mulli r0, r3, 0x38
/* 803D0644  3C 64 00 02 */	addis r3, r4, 2
/* 803D0648  7C 63 02 14 */	add r3, r3, r0
/* 803D064C  A3 E3 61 98 */	lhz r31, 0x6198(r3)
lbl_803D0650:
/* 803D0650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0654  7F E3 FB 78 */	mr r3, r31
/* 803D0658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D065C  7C 08 03 A6 */	mtlr r0
/* 803D0660  38 21 00 10 */	addi r1, r1, 0x10
/* 803D0664  4E 80 00 20 */	blr 
