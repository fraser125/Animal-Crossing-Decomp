lbl_803F7D3C:
/* 803F7D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F7D40  7C 08 02 A6 */	mflr r0
/* 803F7D44  3C E0 81 17 */	lis r7, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F7D48  7C 8A 23 78 */	mr r10, r4
/* 803F7D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F7D50  39 07 15 BC */	addi r8, r7, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F7D54  7C A9 2B 78 */	mr r9, r5
/* 803F7D58  38 00 00 00 */	li r0, 0
/* 803F7D5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F7D60  7C C7 33 78 */	mr r7, r6
/* 803F7D64  7D 1F 43 78 */	mr r31, r8
/* 803F7D68  93 C1 00 08 */	stw r30, 8(r1)
/* 803F7D6C  3B C0 00 00 */	li r30, 0
/* 803F7D70  80 88 00 18 */	lwz r4, 0x18(r8)
/* 803F7D74  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 803F7D78  90 03 00 00 */	stw r0, 0(r3)
/* 803F7D7C  28 05 00 02 */	cmplwi r5, 2
/* 803F7D80  40 80 00 6C */	bge lbl_803F7DEC
/* 803F7D84  3C 80 80 66 */	lis r4, get_proc@ha /* 0x8065E3CC@ha */
/* 803F7D88  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 803F7D8C  38 A4 E3 CC */	addi r5, r4, get_proc@l /* 0x8065E3CC@l */
/* 803F7D90  7D 26 4B 78 */	mr r6, r9
/* 803F7D94  7D 85 00 2E */	lwzx r12, r5, r0
/* 803F7D98  7D 04 43 78 */	mr r4, r8
/* 803F7D9C  7D 45 53 78 */	mr r5, r10
/* 803F7DA0  7D 89 03 A6 */	mtctr r12
/* 803F7DA4  4E 80 04 21 */	bctrl 
/* 803F7DA8  2C 03 00 01 */	cmpwi r3, 1
/* 803F7DAC  40 82 00 28 */	bne lbl_803F7DD4
/* 803F7DB0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 803F7DB4  38 03 00 01 */	addi r0, r3, 1
/* 803F7DB8  2C 00 00 02 */	cmpwi r0, 2
/* 803F7DBC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 803F7DC0  41 80 00 38 */	blt lbl_803F7DF8
/* 803F7DC4  7F E3 FB 78 */	mr r3, r31
/* 803F7DC8  3B C0 00 01 */	li r30, 1
/* 803F7DCC  4B FF FD 4D */	bl mCD_ClearCardBgInfo
/* 803F7DD0  48 00 00 28 */	b lbl_803F7DF8
lbl_803F7DD4:
/* 803F7DD4  2C 03 00 00 */	cmpwi r3, 0
/* 803F7DD8  41 82 00 20 */	beq lbl_803F7DF8
/* 803F7DDC  7F E3 FB 78 */	mr r3, r31
/* 803F7DE0  3B C0 FF FF */	li r30, -1
/* 803F7DE4  4B FF FD 35 */	bl mCD_ClearCardBgInfo
/* 803F7DE8  48 00 00 10 */	b lbl_803F7DF8
lbl_803F7DEC:
/* 803F7DEC  7D 03 43 78 */	mr r3, r8
/* 803F7DF0  3B C0 FF FF */	li r30, -1
/* 803F7DF4  4B FF FD 25 */	bl mCD_ClearCardBgInfo
lbl_803F7DF8:
/* 803F7DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F7DFC  7F C3 F3 78 */	mr r3, r30
/* 803F7E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F7E04  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F7E08  7C 08 03 A6 */	mtlr r0
/* 803F7E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F7E10  4E 80 00 20 */	blr 
