lbl_804B5538:
/* 804B5538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B553C  7C 08 02 A6 */	mflr r0
/* 804B5540  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B5544  39 61 00 20 */	addi r11, r1, 0x20
/* 804B5548  4B BE 59 8D */	bl func_8009AED4
/* 804B554C  C0 27 00 00 */	lfs f1, 0(r7)
/* 804B5550  7C 9D 23 78 */	mr r29, r4
/* 804B5554  C0 47 00 04 */	lfs f2, 4(r7)
/* 804B5558  7C BE 2B 78 */	mr r30, r5
/* 804B555C  C0 67 00 08 */	lfs f3, 8(r7)
/* 804B5560  7C DF 33 78 */	mr r31, r6
/* 804B5564  38 60 00 00 */	li r3, 0
/* 804B5568  4B F5 6D 99 */	bl Matrix_translate
/* 804B556C  3C 80 80 64 */	lis r4, lit_1546@ha /* 0x80646044@ha */
/* 804B5570  38 60 00 01 */	li r3, 1
/* 804B5574  C0 24 60 44 */	lfs f1, lit_1546@l(r4)  /* 0x80646044@l */
/* 804B5578  FC 40 08 90 */	fmr f2, f1
/* 804B557C  FC 60 08 90 */	fmr f3, f1
/* 804B5580  4B F5 6E 6D */	bl Matrix_scale
/* 804B5584  7F A3 EB 78 */	mr r3, r29
/* 804B5588  4B F5 6C A5 */	bl Matrix_get
/* 804B558C  B3 DD 00 44 */	sth r30, 0x44(r29)
/* 804B5590  39 61 00 20 */	addi r11, r1, 0x20
/* 804B5594  9B FD 00 47 */	stb r31, 0x47(r29)
/* 804B5598  4B BE 59 89 */	bl func_8009AF20
/* 804B559C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B55A0  7C 08 03 A6 */	mtlr r0
/* 804B55A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804B55A8  4E 80 00 20 */	blr 
