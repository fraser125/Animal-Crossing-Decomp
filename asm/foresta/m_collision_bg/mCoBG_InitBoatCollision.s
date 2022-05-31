lbl_8038D834:
/* 8038D834  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D838  7C 08 02 A6 */	mflr r0
/* 8038D83C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D840  39 61 00 20 */	addi r11, r1, 0x20
/* 8038D844  4B D0 D6 89 */	bl func_8009AECC
/* 8038D848  3C 60 81 13 */	lis r3, l_mCoBG_boat_move_bg_data@ha /* 0x811372EC@ha */
/* 8038D84C  3B 60 00 00 */	li r27, 0
/* 8038D850  3B A3 72 EC */	addi r29, r3, l_mCoBG_boat_move_bg_data@l /* 0x811372EC@l */
/* 8038D854  3B E0 00 00 */	li r31, 0
/* 8038D858  3B C0 FF FF */	li r30, -1
lbl_8038D85C:
/* 8038D85C  7F 9D FA 14 */	add r28, r29, r31
/* 8038D860  38 80 00 30 */	li r4, 0x30
/* 8038D864  7F 83 E3 78 */	mr r3, r28
/* 8038D868  4B CC F8 01 */	bl bzero
/* 8038D86C  3B 7B 00 01 */	addi r27, r27, 1
/* 8038D870  93 DC 00 04 */	stw r30, 4(r28)
/* 8038D874  2C 1B 00 02 */	cmpwi r27, 2
/* 8038D878  3B FF 00 30 */	addi r31, r31, 0x30
/* 8038D87C  41 80 FF E0 */	blt lbl_8038D85C
/* 8038D880  3C 60 81 13 */	lis r3, l_mBgMgr@ha /* 0x811371E8@ha */
/* 8038D884  38 80 01 04 */	li r4, 0x104
/* 8038D888  38 63 71 E8 */	addi r3, r3, l_mBgMgr@l /* 0x811371E8@l */
/* 8038D88C  4B CC F7 DD */	bl bzero
/* 8038D890  39 61 00 20 */	addi r11, r1, 0x20
/* 8038D894  4B D0 D6 85 */	bl func_8009AF18
/* 8038D898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D89C  7C 08 03 A6 */	mtlr r0
/* 8038D8A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D8A4  4E 80 00 20 */	blr 
