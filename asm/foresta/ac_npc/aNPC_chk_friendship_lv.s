lbl_805362EC:
/* 805362EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805362F0  7C 08 02 A6 */	mflr r0
/* 805362F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805362F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805362FC  4B B6 4B D9 */	bl func_8009AED4
/* 80536300  7C 7D 1B 78 */	mr r29, r3
/* 80536304  7C 9E 23 78 */	mr r30, r4
/* 80536308  3B E0 00 00 */	li r31, 0
/* 8053630C  4B FF 98 6D */	bl aNPC_chk_avoid_and_search
/* 80536310  2C 03 00 02 */	cmpwi r3, 2
/* 80536314  41 82 00 24 */	beq lbl_80536338
/* 80536318  40 80 00 30 */	bge lbl_80536348
/* 8053631C  2C 03 00 01 */	cmpwi r3, 1
/* 80536320  40 80 00 08 */	bge lbl_80536328
/* 80536324  48 00 00 24 */	b lbl_80536348
lbl_80536328:
/* 80536328  7F A3 EB 78 */	mr r3, r29
/* 8053632C  4B FF FD 95 */	bl aNPC_hate_player
/* 80536330  7C 7F 1B 78 */	mr r31, r3
/* 80536334  48 00 00 14 */	b lbl_80536348
lbl_80536338:
/* 80536338  7F A3 EB 78 */	mr r3, r29
/* 8053633C  7F C4 F3 78 */	mr r4, r30
/* 80536340  4B FF FE 2D */	bl aNPC_love_player
/* 80536344  7C 7F 1B 78 */	mr r31, r3
lbl_80536348:
/* 80536348  7F E3 FB 78 */	mr r3, r31
/* 8053634C  39 61 00 20 */	addi r11, r1, 0x20
/* 80536350  4B B6 4B D1 */	bl func_8009AF20
/* 80536354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80536358  7C 08 03 A6 */	mtlr r0
/* 8053635C  38 21 00 20 */	addi r1, r1, 0x20
/* 80536360  4E 80 00 20 */	blr 
