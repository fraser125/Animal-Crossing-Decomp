lbl_80414B00:
/* 80414B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80414B04  7C 08 02 A6 */	mflr r0
/* 80414B08  3C C0 80 66 */	lis r6, chk_bx@ha /* 0x8065FC14@ha */
/* 80414B0C  3C A0 80 66 */	lis r5, chk_bz@ha /* 0x8065FC1C@ha */
/* 80414B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80414B14  39 06 FC 14 */	addi r8, r6, chk_bx@l /* 0x8065FC14@l */
/* 80414B18  38 00 00 02 */	li r0, 2
/* 80414B1C  38 C5 FC 1C */	addi r6, r5, chk_bz@l /* 0x8065FC1C@l */
/* 80414B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80414B24  7C 7F 1B 78 */	mr r31, r3
/* 80414B28  38 60 00 00 */	li r3, 0
/* 80414B2C  38 A0 00 00 */	li r5, 0
/* 80414B30  7C 09 03 A6 */	mtctr r0
lbl_80414B34:
/* 80414B34  88 E4 00 E4 */	lbz r7, 0xe4(r4)
/* 80414B38  7C 08 28 2E */	lwzx r0, r8, r5
/* 80414B3C  7C E7 07 74 */	extsb r7, r7
/* 80414B40  7C 07 00 00 */	cmpw r7, r0
/* 80414B44  40 82 00 38 */	bne lbl_80414B7C
/* 80414B48  88 E4 00 E5 */	lbz r7, 0xe5(r4)
/* 80414B4C  7C 06 28 2E */	lwzx r0, r6, r5
/* 80414B50  7C E7 07 74 */	extsb r7, r7
/* 80414B54  7C 07 00 00 */	cmpw r7, r0
/* 80414B58  40 82 00 24 */	bne lbl_80414B7C
/* 80414B5C  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80414B60  2C 00 00 00 */	cmpwi r0, 0
/* 80414B64  40 82 00 10 */	bne lbl_80414B74
/* 80414B68  4B C3 4C 55 */	bl mGcgba_InitVar
/* 80414B6C  38 00 00 01 */	li r0, 1
/* 80414B70  90 1F 01 80 */	stw r0, 0x180(r31)
lbl_80414B74:
/* 80414B74  38 60 00 01 */	li r3, 1
/* 80414B78  48 00 00 0C */	b lbl_80414B84
lbl_80414B7C:
/* 80414B7C  38 A5 00 04 */	addi r5, r5, 4
/* 80414B80  42 00 FF B4 */	bdnz lbl_80414B34
lbl_80414B84:
/* 80414B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80414B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80414B8C  7C 08 03 A6 */	mtlr r0
/* 80414B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80414B94  4E 80 00 20 */	blr 
