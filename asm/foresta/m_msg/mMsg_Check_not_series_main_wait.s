lbl_803BF764:
/* 803BF764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF768  7C 08 02 A6 */	mflr r0
/* 803BF76C  38 80 00 06 */	li r4, 6
/* 803BF770  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF778  3B E0 00 00 */	li r31, 0
/* 803BF77C  93 C1 00 08 */	stw r30, 8(r1)
/* 803BF780  7C 7E 1B 78 */	mr r30, r3
/* 803BF784  4B FF FF A9 */	bl mMsg_Check_main_index
/* 803BF788  2C 03 00 00 */	cmpwi r3, 0
/* 803BF78C  40 82 00 30 */	bne lbl_803BF7BC
/* 803BF790  7F C3 F3 78 */	mr r3, r30
/* 803BF794  38 80 00 05 */	li r4, 5
/* 803BF798  4B FF FF 95 */	bl mMsg_Check_main_index
/* 803BF79C  2C 03 00 00 */	cmpwi r3, 0
/* 803BF7A0  40 82 00 1C */	bne lbl_803BF7BC
/* 803BF7A4  7F C3 F3 78 */	mr r3, r30
/* 803BF7A8  38 80 00 07 */	li r4, 7
/* 803BF7AC  4B FF FF 81 */	bl mMsg_Check_main_index
/* 803BF7B0  2C 03 00 00 */	cmpwi r3, 0
/* 803BF7B4  40 82 00 08 */	bne lbl_803BF7BC
/* 803BF7B8  3B E0 00 01 */	li r31, 1
lbl_803BF7BC:
/* 803BF7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF7C0  7F E3 FB 78 */	mr r3, r31
/* 803BF7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BF7C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BF7CC  7C 08 03 A6 */	mtlr r0
/* 803BF7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF7D4  4E 80 00 20 */	blr 
