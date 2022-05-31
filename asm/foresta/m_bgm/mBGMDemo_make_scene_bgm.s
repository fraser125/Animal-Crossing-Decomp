lbl_80378B28:
/* 80378B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80378B2C  7C 08 02 A6 */	mflr r0
/* 80378B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80378B38  93 C1 00 08 */	stw r30, 8(r1)
/* 80378B3C  7C 7E 1B 78 */	mr r30, r3
/* 80378B40  88 03 00 00 */	lbz r0, 0(r3)
/* 80378B44  28 00 00 7F */	cmplwi r0, 0x7f
/* 80378B48  40 82 00 98 */	bne lbl_80378BE0
/* 80378B4C  48 02 C1 45 */	bl mFI_CheckFieldData
/* 80378B50  2C 03 00 00 */	cmpwi r3, 0
/* 80378B54  41 82 00 8C */	beq lbl_80378BE0
/* 80378B58  48 02 C1 75 */	bl mFI_GetFieldId
/* 80378B5C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80378B60  2C 00 50 02 */	cmpwi r0, 0x5002
/* 80378B64  41 82 00 30 */	beq lbl_80378B94
/* 80378B68  40 80 00 10 */	bge lbl_80378B78
/* 80378B6C  2C 00 50 00 */	cmpwi r0, 0x5000
/* 80378B70  40 80 00 14 */	bge lbl_80378B84
/* 80378B74  48 00 00 44 */	b lbl_80378BB8
lbl_80378B78:
/* 80378B78  2C 00 50 04 */	cmpwi r0, 0x5004
/* 80378B7C  40 80 00 3C */	bge lbl_80378BB8
/* 80378B80  48 00 00 0C */	b lbl_80378B8C
lbl_80378B84:
/* 80378B84  3B E0 00 2A */	li r31, 0x2a
/* 80378B88  48 00 00 34 */	b lbl_80378BBC
lbl_80378B8C:
/* 80378B8C  3B E0 00 7B */	li r31, 0x7b
/* 80378B90  48 00 00 2C */	b lbl_80378BBC
lbl_80378B94:
/* 80378B94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80378B98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80378B9C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80378BA0  2C 00 00 22 */	cmpwi r0, 0x22
/* 80378BA4  40 82 00 0C */	bne lbl_80378BB0
/* 80378BA8  3B E0 00 2E */	li r31, 0x2e
/* 80378BAC  48 00 00 10 */	b lbl_80378BBC
lbl_80378BB0:
/* 80378BB0  3B E0 00 2B */	li r31, 0x2b
/* 80378BB4  48 00 00 08 */	b lbl_80378BBC
lbl_80378BB8:
/* 80378BB8  3B E0 00 7F */	li r31, 0x7f
lbl_80378BBC:
/* 80378BBC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80378BC0  28 00 00 7F */	cmplwi r0, 0x7f
/* 80378BC4  41 82 00 1C */	beq lbl_80378BE0
/* 80378BC8  7F C3 F3 78 */	mr r3, r30
/* 80378BCC  4B FF FD C9 */	bl mBGMElem_default_set
/* 80378BD0  9B FE 00 00 */	stb r31, 0(r30)
/* 80378BD4  7F E3 FB 78 */	mr r3, r31
/* 80378BD8  38 80 01 68 */	li r4, 0x168
/* 80378BDC  48 00 31 2D */	bl mBGMPsComp_make_ps_demo
lbl_80378BE0:
/* 80378BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80378BE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80378BEC  7C 08 03 A6 */	mtlr r0
/* 80378BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80378BF4  4E 80 00 20 */	blr 
