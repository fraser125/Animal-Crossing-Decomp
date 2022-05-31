lbl_80580BCC:
/* 80580BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580BD0  7C 08 02 A6 */	mflr r0
/* 80580BD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80580BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580BDC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80580BE0  3C 64 00 03 */	addis r3, r4, 3
/* 80580BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80580BE8  3B E0 00 00 */	li r31, 0
/* 80580BEC  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 80580BF0  2C 00 00 01 */	cmpwi r0, 1
/* 80580BF4  40 82 00 2C */	bne lbl_80580C20
/* 80580BF8  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 80580BFC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80580C00  40 82 00 20 */	bne lbl_80580C20
/* 80580C04  3C 64 00 02 */	addis r3, r4, 2
/* 80580C08  38 80 00 00 */	li r4, 0
/* 80580C0C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80580C10  4B E5 FB 19 */	bl mPr_GetPossessionItemIdx
/* 80580C14  2C 03 FF FF */	cmpwi r3, -1
/* 80580C18  41 82 00 08 */	beq lbl_80580C20
/* 80580C1C  3B E0 00 01 */	li r31, 1
lbl_80580C20:
/* 80580C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580C24  7F E3 FB 78 */	mr r3, r31
/* 80580C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580C2C  7C 08 03 A6 */	mtlr r0
/* 80580C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80580C34  4E 80 00 20 */	blr 
