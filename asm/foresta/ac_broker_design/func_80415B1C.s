lbl_80415B1C:
/* 80415B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415B20  7C 08 02 A6 */	mflr r0
/* 80415B24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80415B28  38 60 00 00 */	li r3, 0
/* 80415B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415B30  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80415B34  38 80 00 00 */	li r4, 0
/* 80415B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415B3C  3F E5 00 02 */	addis r31, r5, 2
/* 80415B40  3B FF 04 DC */	addi r31, r31, 0x4dc
/* 80415B44  4B F9 16 11 */	bl mFI_BkNumtoUtFGTop
/* 80415B48  38 00 00 03 */	li r0, 3
/* 80415B4C  7C 09 03 A6 */	mtctr r0
lbl_80415B50:
/* 80415B50  42 00 00 00 */	bdnz lbl_80415B50
/* 80415B54  3C 80 80 68 */	lis r4, set_data@ha /* 0x8068183C@ha */
/* 80415B58  38 00 00 03 */	li r0, 3
/* 80415B5C  39 04 18 3C */	addi r8, r4, set_data@l /* 0x8068183C@l */
/* 80415B60  38 80 00 00 */	li r4, 0
/* 80415B64  38 A0 00 00 */	li r5, 0
/* 80415B68  7C 09 03 A6 */	mtctr r0
/* 80415B6C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE10@ha */
/* 80415B70  38 C6 FE 10 */	addi r6, r6, 0xFE10 /* 0x0000FE10@l */
lbl_80415B74:
/* 80415B74  7C E8 2A 14 */	add r7, r8, r5
/* 80415B78  7D 3F 22 2E */	lhzx r9, r31, r4
/* 80415B7C  80 07 00 04 */	lwz r0, 4(r7)
/* 80415B80  28 09 00 00 */	cmplwi r9, 0
/* 80415B84  80 E7 00 00 */	lwz r7, 0(r7)
/* 80415B88  54 00 20 36 */	slwi r0, r0, 4
/* 80415B8C  7C E7 02 14 */	add r7, r7, r0
/* 80415B90  40 82 00 10 */	bne lbl_80415BA0
/* 80415B94  54 E0 08 3C */	slwi r0, r7, 1
/* 80415B98  7C C3 03 2E */	sthx r6, r3, r0
/* 80415B9C  48 00 00 20 */	b lbl_80415BBC
lbl_80415BA0:
/* 80415BA0  55 20 A7 3E */	rlwinm r0, r9, 0x14, 0x1c, 0x1f
/* 80415BA4  2C 00 00 01 */	cmpwi r0, 1
/* 80415BA8  41 82 00 0C */	beq lbl_80415BB4
/* 80415BAC  2C 00 00 03 */	cmpwi r0, 3
/* 80415BB0  40 82 00 0C */	bne lbl_80415BBC
lbl_80415BB4:
/* 80415BB4  54 E0 08 3C */	slwi r0, r7, 1
/* 80415BB8  7D 23 03 2E */	sthx r9, r3, r0
lbl_80415BBC:
/* 80415BBC  38 84 00 02 */	addi r4, r4, 2
/* 80415BC0  38 A5 00 08 */	addi r5, r5, 8
/* 80415BC4  42 00 FF B0 */	bdnz lbl_80415B74
/* 80415BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415BD0  7C 08 03 A6 */	mtlr r0
/* 80415BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80415BD8  4E 80 00 20 */	blr 
