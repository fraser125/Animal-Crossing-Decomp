lbl_80545B28:
/* 80545B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545B2C  7C 08 02 A6 */	mflr r0
/* 80545B30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545B38  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80545B3C  3C 64 00 03 */	addis r3, r4, 3
/* 80545B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80545B44  3B E0 00 00 */	li r31, 0
/* 80545B48  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 80545B4C  2C 00 00 01 */	cmpwi r0, 1
/* 80545B50  40 82 00 2C */	bne lbl_80545B7C
/* 80545B54  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 80545B58  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80545B5C  40 82 00 20 */	bne lbl_80545B7C
/* 80545B60  3C 64 00 02 */	addis r3, r4, 2
/* 80545B64  38 80 00 00 */	li r4, 0
/* 80545B68  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80545B6C  4B E9 AB BD */	bl mPr_GetPossessionItemIdx
/* 80545B70  2C 03 FF FF */	cmpwi r3, -1
/* 80545B74  41 82 00 08 */	beq lbl_80545B7C
/* 80545B78  3B E0 00 01 */	li r31, 1
lbl_80545B7C:
/* 80545B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545B80  7F E3 FB 78 */	mr r3, r31
/* 80545B84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80545B88  7C 08 03 A6 */	mtlr r0
/* 80545B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80545B90  4E 80 00 20 */	blr 
