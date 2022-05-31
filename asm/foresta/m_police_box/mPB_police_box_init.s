lbl_803DECB0:
/* 803DECB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DECB4  7C 08 02 A6 */	mflr r0
/* 803DECB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DECBC  38 A0 00 01 */	li r5, 1
/* 803DECC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DECC4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DECC8  38 C0 00 00 */	li r6, 0
/* 803DECCC  38 E0 00 00 */	li r7, 0
/* 803DECD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DECD4  3F E4 00 02 */	addis r31, r4, 2
/* 803DECD8  3B FF 0E D0 */	addi r31, r31, 0xed0
/* 803DECDC  39 00 00 00 */	li r8, 0
/* 803DECE0  93 C1 00 08 */	stw r30, 8(r1)
/* 803DECE4  7C 7E 1B 78 */	mr r30, r3
/* 803DECE8  7F E4 FB 78 */	mr r4, r31
/* 803DECEC  39 20 00 08 */	li r9, 8
/* 803DECF0  39 40 00 00 */	li r10, 0
/* 803DECF4  48 00 96 E9 */	bl mSP_SelectRandomItem_New
/* 803DECF8  7F C3 F3 78 */	mr r3, r30
/* 803DECFC  38 9F 00 02 */	addi r4, r31, 2
/* 803DED00  38 A0 00 02 */	li r5, 2
/* 803DED04  38 C0 00 00 */	li r6, 0
/* 803DED08  38 E0 00 00 */	li r7, 0
/* 803DED0C  39 00 00 02 */	li r8, 2
/* 803DED10  39 20 00 08 */	li r9, 8
/* 803DED14  39 40 00 00 */	li r10, 0
/* 803DED18  48 00 96 C5 */	bl mSP_SelectRandomItem_New
/* 803DED1C  38 00 00 11 */	li r0, 0x11
/* 803DED20  38 60 00 00 */	li r3, 0
/* 803DED24  7C 09 03 A6 */	mtctr r0
/* 803DED28  3B FF 00 06 */	addi r31, r31, 6
lbl_803DED2C:
/* 803DED2C  B0 7F 00 00 */	sth r3, 0(r31)
/* 803DED30  3B FF 00 02 */	addi r31, r31, 2
/* 803DED34  42 00 FF F8 */	bdnz lbl_803DED2C
/* 803DED38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DED3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DED40  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DED44  7C 08 03 A6 */	mtlr r0
/* 803DED48  38 21 00 10 */	addi r1, r1, 0x10
/* 803DED4C  4E 80 00 20 */	blr 
