lbl_80487ACC:
/* 80487ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487AD0  7C 08 02 A6 */	mflr r0
/* 80487AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487ADC  93 C1 00 08 */	stw r30, 8(r1)
/* 80487AE0  7C 7E 1B 78 */	mr r30, r3
/* 80487AE4  4B FF FF 61 */	bl aQMgr_actor_check_to
/* 80487AE8  7C 7F 1B 78 */	mr r31, r3
/* 80487AEC  2C 1F FF FF */	cmpwi r31, -1
/* 80487AF0  41 82 00 80 */	beq lbl_80487B70
/* 80487AF4  1C 1F 00 34 */	mulli r0, r31, 0x34
/* 80487AF8  7C 7E 02 14 */	add r3, r30, r0
/* 80487AFC  83 C3 02 1C */	lwz r30, 0x21c(r3)
/* 80487B00  28 1E 00 00 */	cmplwi r30, 0
/* 80487B04  41 82 00 68 */	beq lbl_80487B6C
/* 80487B08  88 1E 00 01 */	lbz r0, 1(r30)
/* 80487B0C  54 00 EF 3F */	rlwinm. r0, r0, 0x1d, 0x1c, 0x1f
/* 80487B10  41 82 00 0C */	beq lbl_80487B1C
/* 80487B14  28 00 00 01 */	cmplwi r0, 1
/* 80487B18  40 82 00 0C */	bne lbl_80487B24
lbl_80487B1C:
/* 80487B1C  3B E0 FF FF */	li r31, -1
/* 80487B20  48 00 00 50 */	b lbl_80487B70
lbl_80487B24:
/* 80487B24  A0 9E 00 28 */	lhz r4, 0x28(r30)
/* 80487B28  28 04 00 00 */	cmplwi r4, 0
/* 80487B2C  41 82 00 44 */	beq lbl_80487B70
/* 80487B30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80487B34  38 A0 00 02 */	li r5, 2
/* 80487B38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80487B3C  3C 63 00 02 */	addis r3, r3, 2
/* 80487B40  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80487B44  4B F5 8C 2D */	bl mPr_GetPossessionItemIdxWithCond
/* 80487B48  2C 03 FF FF */	cmpwi r3, -1
/* 80487B4C  40 82 00 0C */	bne lbl_80487B58
/* 80487B50  3B E0 FF FF */	li r31, -1
/* 80487B54  48 00 00 1C */	b lbl_80487B70
lbl_80487B58:
/* 80487B58  7C 63 07 74 */	extsb r3, r3
/* 80487B5C  88 1E 00 2A */	lbz r0, 0x2a(r30)
/* 80487B60  50 60 1E 38 */	rlwimi r0, r3, 3, 0x18, 0x1c
/* 80487B64  98 1E 00 2A */	stb r0, 0x2a(r30)
/* 80487B68  48 00 00 08 */	b lbl_80487B70
lbl_80487B6C:
/* 80487B6C  3B E0 FF FF */	li r31, -1
lbl_80487B70:
/* 80487B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487B74  7F E3 FB 78 */	mr r3, r31
/* 80487B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487B7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80487B80  7C 08 03 A6 */	mtlr r0
/* 80487B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80487B88  4E 80 00 20 */	blr 
