lbl_803C80BC:
/* 803C80BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C80C0  7C 08 02 A6 */	mflr r0
/* 803C80C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C80C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C80CC  7C 7F 1B 78 */	mr r31, r3
/* 803C80D0  48 03 F1 65 */	bl lbRTC_TimeCopy
/* 803C80D4  3C 60 80 66 */	lis r3, min_15_table@ha /* 0x8065A300@ha */
/* 803C80D8  38 00 00 04 */	li r0, 4
/* 803C80DC  38 63 A3 00 */	addi r3, r3, min_15_table@l /* 0x8065A300@l */
/* 803C80E0  7C 09 03 A6 */	mtctr r0
lbl_803C80E4:
/* 803C80E4  88 1F 00 01 */	lbz r0, 1(r31)
/* 803C80E8  88 83 00 00 */	lbz r4, 0(r3)
/* 803C80EC  7C 00 20 40 */	cmplw r0, r4
/* 803C80F0  41 80 00 0C */	blt lbl_803C80FC
/* 803C80F4  98 9F 00 01 */	stb r4, 1(r31)
/* 803C80F8  48 00 00 0C */	b lbl_803C8104
lbl_803C80FC:
/* 803C80FC  38 63 00 01 */	addi r3, r3, 1
/* 803C8100  42 00 FF E4 */	bdnz lbl_803C80E4
lbl_803C8104:
/* 803C8104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C8108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C810C  7C 08 03 A6 */	mtlr r0
/* 803C8110  38 21 00 10 */	addi r1, r1, 0x10
/* 803C8114  4E 80 00 20 */	blr 
