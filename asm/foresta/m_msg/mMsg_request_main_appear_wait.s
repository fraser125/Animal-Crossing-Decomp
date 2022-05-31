lbl_803BFAE0:
/* 803BFAE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BFAE4  7C 08 02 A6 */	mflr r0
/* 803BFAE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BFAEC  39 61 00 20 */	addi r11, r1, 0x20
/* 803BFAF0  4B CD B3 E5 */	bl func_8009AED4
/* 803BFAF4  7C 9E 23 78 */	mr r30, r4
/* 803BFAF8  7C BF 2B 78 */	mr r31, r5
/* 803BFAFC  7C 7D 1B 78 */	mr r29, r3
/* 803BFB00  7C C5 33 78 */	mr r5, r6
/* 803BFB04  38 80 00 05 */	li r4, 5
/* 803BFB08  4B FF FB C9 */	bl mMsg_Change_request_main_index
/* 803BFB0C  2C 03 00 00 */	cmpwi r3, 0
/* 803BFB10  41 82 00 14 */	beq lbl_803BFB24
/* 803BFB14  93 DD 04 60 */	stw r30, 0x460(r29)
/* 803BFB18  38 60 00 01 */	li r3, 1
/* 803BFB1C  93 FD 04 64 */	stw r31, 0x464(r29)
/* 803BFB20  48 00 00 08 */	b lbl_803BFB28
lbl_803BFB24:
/* 803BFB24  38 60 00 00 */	li r3, 0
lbl_803BFB28:
/* 803BFB28  39 61 00 20 */	addi r11, r1, 0x20
/* 803BFB2C  4B CD B3 F5 */	bl func_8009AF20
/* 803BFB30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BFB34  7C 08 03 A6 */	mtlr r0
/* 803BFB38  38 21 00 20 */	addi r1, r1, 0x20
/* 803BFB3C  4E 80 00 20 */	blr 
