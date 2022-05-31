lbl_8056A840:
/* 8056A840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A844  7C 08 02 A6 */	mflr r0
/* 8056A848  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056A84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A850  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056A854  3C 63 00 02 */	addis r3, r3, 2
/* 8056A858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056A85C  3B E0 00 00 */	li r31, 0
/* 8056A860  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8056A864  4B E4 92 8D */	bl mLd_PlayerManKindCheckNo
/* 8056A868  2C 03 00 01 */	cmpwi r3, 1
/* 8056A86C  40 82 00 20 */	bne lbl_8056A88C
/* 8056A870  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056A874  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056A878  3C 63 00 02 */	addis r3, r3, 2
/* 8056A87C  88 03 61 44 */	lbz r0, 0x6144(r3)
/* 8056A880  28 00 00 00 */	cmplwi r0, 0
/* 8056A884  40 82 00 08 */	bne lbl_8056A88C
/* 8056A888  3B E0 00 01 */	li r31, 1
lbl_8056A88C:
/* 8056A88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A890  7F E3 FB 78 */	mr r3, r31
/* 8056A894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056A898  7C 08 03 A6 */	mtlr r0
/* 8056A89C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A8A0  4E 80 00 20 */	blr 
