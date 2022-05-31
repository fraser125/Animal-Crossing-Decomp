lbl_8038D8A8:
/* 8038D8A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D8AC  7C 08 02 A6 */	mflr r0
/* 8038D8B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8038D8B8  4B D0 D6 1D */	bl func_8009AED4
/* 8038D8BC  3C E0 81 13 */	lis r7, l_mCoBG_boat_move_bg_data@ha /* 0x811372EC@ha */
/* 8038D8C0  38 00 00 02 */	li r0, 2
/* 8038D8C4  7C 7E 1B 78 */	mr r30, r3
/* 8038D8C8  7C A6 2B 78 */	mr r6, r5
/* 8038D8CC  38 67 72 EC */	addi r3, r7, l_mCoBG_boat_move_bg_data@l /* 0x811372EC@l */
/* 8038D8D0  3B A0 00 00 */	li r29, 0
/* 8038D8D4  7C 09 03 A6 */	mtctr r0
lbl_8038D8D8:
/* 8038D8D8  7F E3 EA 14 */	add r31, r3, r29
/* 8038D8DC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8038D8E0  2C 00 FF FF */	cmpwi r0, -1
/* 8038D8E4  40 82 00 60 */	bne lbl_8038D944
/* 8038D8E8  38 00 00 06 */	li r0, 6
/* 8038D8EC  3C A0 80 64 */	lis r5, lit_1695@ha /* 0x80641A4C@ha */
/* 8038D8F0  90 01 00 08 */	stw r0, 8(r1)
/* 8038D8F4  39 05 1A 4C */	addi r8, r5, lit_1695@l /* 0x80641A4C@l */
/* 8038D8F8  3C 60 80 64 */	lis r3, lit_1696@ha /* 0x80641A50@ha */
/* 8038D8FC  38 00 00 16 */	li r0, 0x16
/* 8038D900  3C A0 80 65 */	lis r5, l_mCoBG_boat_size@ha /* 0x80650C88@ha */
/* 8038D904  C0 28 00 00 */	lfs f1, 0(r8)
/* 8038D908  C0 43 1A 50 */	lfs f2, lit_1696@l(r3)  /* 0x80641A50@l */
/* 8038D90C  38 E5 0C 88 */	addi r7, r5, l_mCoBG_boat_size@l /* 0x80650C88@l */
/* 8038D910  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038D914  7C 85 23 78 */	mr r5, r4
/* 8038D918  38 7F 00 08 */	addi r3, r31, 8
/* 8038D91C  39 00 00 00 */	li r8, 0
/* 8038D920  39 20 00 00 */	li r9, 0
/* 8038D924  39 40 00 00 */	li r10, 0
/* 8038D928  4B FF F4 7D */	bl mCoBG_RegistMoveBg
/* 8038D92C  3C 80 81 13 */	lis r4, l_mCoBG_boat_move_bg_data@ha /* 0x811372EC@ha */
/* 8038D930  38 04 72 EC */	addi r0, r4, l_mCoBG_boat_move_bg_data@l /* 0x811372EC@l */
/* 8038D934  7C 80 EA 14 */	add r4, r0, r29
/* 8038D938  90 64 00 04 */	stw r3, 4(r4)
/* 8038D93C  93 DF 00 00 */	stw r30, 0(r31)
/* 8038D940  48 00 00 0C */	b lbl_8038D94C
lbl_8038D944:
/* 8038D944  3B BD 00 30 */	addi r29, r29, 0x30
/* 8038D948  42 00 FF 90 */	bdnz lbl_8038D8D8
lbl_8038D94C:
/* 8038D94C  39 61 00 20 */	addi r11, r1, 0x20
/* 8038D950  4B D0 D5 D1 */	bl func_8009AF20
/* 8038D954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D958  7C 08 03 A6 */	mtlr r0
/* 8038D95C  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D960  4E 80 00 20 */	blr 
