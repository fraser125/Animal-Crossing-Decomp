lbl_803BF6D0:
/* 803BF6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BF6D4  7C 08 02 A6 */	mflr r0
/* 803BF6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BF6DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803BF6E0  4B CD B7 F5 */	bl func_8009AED4
/* 803BF6E4  7C BF 2B 78 */	mr r31, r5
/* 803BF6E8  7C 9E 23 78 */	mr r30, r4
/* 803BF6EC  7C 7D 1B 78 */	mr r29, r3
/* 803BF6F0  7F E4 FB 78 */	mr r4, r31
/* 803BF6F4  4B FF FF C1 */	bl mMsg_Check_request_priority
/* 803BF6F8  2C 03 00 00 */	cmpwi r3, 0
/* 803BF6FC  41 82 00 14 */	beq lbl_803BF710
/* 803BF700  93 DD 04 2C */	stw r30, 0x42c(r29)
/* 803BF704  38 60 00 01 */	li r3, 1
/* 803BF708  93 FD 04 30 */	stw r31, 0x430(r29)
/* 803BF70C  48 00 00 08 */	b lbl_803BF714
lbl_803BF710:
/* 803BF710  38 60 00 00 */	li r3, 0
lbl_803BF714:
/* 803BF714  39 61 00 20 */	addi r11, r1, 0x20
/* 803BF718  4B CD B8 09 */	bl func_8009AF20
/* 803BF71C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BF720  7C 08 03 A6 */	mtlr r0
/* 803BF724  38 21 00 20 */	addi r1, r1, 0x20
/* 803BF728  4E 80 00 20 */	blr 
