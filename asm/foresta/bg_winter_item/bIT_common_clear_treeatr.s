lbl_804C3960:
/* 804C3960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C3964  7C 08 02 A6 */	mflr r0
/* 804C3968  54 63 20 36 */	slwi r3, r3, 4
/* 804C396C  54 84 20 36 */	slwi r4, r4, 4
/* 804C3970  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C3974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C3978  7C BF 2B 78 */	mr r31, r5
/* 804C397C  4B EE 39 05 */	bl mFI_UtNum2UtFG
/* 804C3980  3C 80 80 6A */	lis r4, tree_cut_tbl@ha /* 0x80698A80@ha */
/* 804C3984  7F EA FB 78 */	mr r10, r31
/* 804C3988  38 A4 8A 80 */	addi r5, r4, tree_cut_tbl@l /* 0x80698A80@l */
/* 804C398C  38 C0 00 00 */	li r6, 0
lbl_804C3990:
/* 804C3990  38 E0 00 00 */	li r7, 0
lbl_804C3994:
/* 804C3994  38 00 00 53 */	li r0, 0x53
/* 804C3998  7C A9 2B 78 */	mr r9, r5
/* 804C399C  39 00 00 00 */	li r8, 0
/* 804C39A0  7C 09 03 A6 */	mtctr r0
lbl_804C39A4:
/* 804C39A4  A0 83 00 00 */	lhz r4, 0(r3)
/* 804C39A8  A0 09 00 00 */	lhz r0, 0(r9)
/* 804C39AC  7C 04 00 40 */	cmplw r4, r0
/* 804C39B0  40 82 00 10 */	bne lbl_804C39C0
/* 804C39B4  A8 09 00 02 */	lha r0, 2(r9)
/* 804C39B8  98 0A 00 00 */	stb r0, 0(r10)
/* 804C39BC  48 00 00 10 */	b lbl_804C39CC
lbl_804C39C0:
/* 804C39C0  39 08 00 01 */	addi r8, r8, 1
/* 804C39C4  39 29 00 04 */	addi r9, r9, 4
/* 804C39C8  42 00 FF DC */	bdnz lbl_804C39A4
lbl_804C39CC:
/* 804C39CC  2C 08 00 53 */	cmpwi r8, 0x53
/* 804C39D0  40 82 00 0C */	bne lbl_804C39DC
/* 804C39D4  38 00 00 FF */	li r0, 0xff
/* 804C39D8  98 0A 00 00 */	stb r0, 0(r10)
lbl_804C39DC:
/* 804C39DC  38 E7 00 01 */	addi r7, r7, 1
/* 804C39E0  39 4A 00 01 */	addi r10, r10, 1
/* 804C39E4  2C 07 00 10 */	cmpwi r7, 0x10
/* 804C39E8  38 63 00 02 */	addi r3, r3, 2
/* 804C39EC  41 80 FF A8 */	blt lbl_804C3994
/* 804C39F0  38 C6 00 01 */	addi r6, r6, 1
/* 804C39F4  2C 06 00 10 */	cmpwi r6, 0x10
/* 804C39F8  41 80 FF 98 */	blt lbl_804C3990
/* 804C39FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C3A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C3A04  7C 08 03 A6 */	mtlr r0
/* 804C3A08  38 21 00 10 */	addi r1, r1, 0x10
/* 804C3A0C  4E 80 00 20 */	blr 
