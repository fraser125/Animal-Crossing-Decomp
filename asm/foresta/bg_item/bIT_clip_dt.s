lbl_804B743C:
/* 804B743C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B7440  7C 08 02 A6 */	mflr r0
/* 804B7444  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B7448  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B744C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B7450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B7454  3F E3 00 02 */	addis r31, r3, 2
/* 804B7458  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804B745C  28 03 00 00 */	cmplwi r3, 0
/* 804B7460  41 82 00 10 */	beq lbl_804B7470
/* 804B7464  4B F0 50 51 */	bl zelda_free
/* 804B7468  38 00 00 00 */	li r0, 0
/* 804B746C  90 1F 60 80 */	stw r0, 0x6080(r31)
lbl_804B7470:
/* 804B7470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B7474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B7478  7C 08 03 A6 */	mtlr r0
/* 804B747C  38 21 00 10 */	addi r1, r1, 0x10
/* 804B7480  4E 80 00 20 */	blr 
