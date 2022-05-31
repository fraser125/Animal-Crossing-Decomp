lbl_80516BC0:
/* 80516BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516BC4  7C 08 02 A6 */	mflr r0
/* 80516BC8  7C 65 1B 78 */	mr r5, r3
/* 80516BCC  38 80 00 04 */	li r4, 4
/* 80516BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516BD4  38 61 00 08 */	addi r3, r1, 8
/* 80516BD8  38 C0 00 04 */	li r6, 4
/* 80516BDC  38 E0 00 01 */	li r7, 1
/* 80516BE0  39 00 00 00 */	li r8, 0
/* 80516BE4  39 20 00 00 */	li r9, 0
/* 80516BE8  4B E9 88 91 */	bl mFont_UnintToString
/* 80516BEC  4B EA 8A BD */	bl func_803BF6A8
/* 80516BF0  38 A1 00 08 */	addi r5, r1, 8
/* 80516BF4  38 80 00 01 */	li r4, 1
/* 80516BF8  38 C0 00 04 */	li r6, 4
/* 80516BFC  4B EA 90 59 */	bl mMsg_Set_free_str
/* 80516C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516C04  7C 08 03 A6 */	mtlr r0
/* 80516C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80516C0C  4E 80 00 20 */	blr 
