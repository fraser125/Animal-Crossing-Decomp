lbl_805122D4:
/* 805122D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805122D8  7C 08 02 A6 */	mflr r0
/* 805122DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805122E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805122E4  4B B8 8B F1 */	bl func_8009AED4
/* 805122E8  7C 7D 1B 78 */	mr r29, r3
/* 805122EC  3B E0 00 00 */	li r31, 0
lbl_805122F0:
/* 805122F0  3B C0 00 00 */	li r30, 0
lbl_805122F4:
/* 805122F4  7F A3 EB 78 */	mr r3, r29
/* 805122F8  38 9E 00 01 */	addi r4, r30, 1
/* 805122FC  38 BF 00 01 */	addi r5, r31, 1
/* 80512300  4B FF FA 2D */	bl mAGrw_ClearCarpBlock
/* 80512304  3B DE 00 01 */	addi r30, r30, 1
/* 80512308  3B BD 02 00 */	addi r29, r29, 0x200
/* 8051230C  2C 1E 00 05 */	cmpwi r30, 5
/* 80512310  41 80 FF E4 */	blt lbl_805122F4
/* 80512314  3B FF 00 01 */	addi r31, r31, 1
/* 80512318  2C 1F 00 06 */	cmpwi r31, 6
/* 8051231C  41 80 FF D4 */	blt lbl_805122F0
/* 80512320  39 61 00 20 */	addi r11, r1, 0x20
/* 80512324  4B B8 8B FD */	bl func_8009AF20
/* 80512328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051232C  7C 08 03 A6 */	mtlr r0
/* 80512330  38 21 00 20 */	addi r1, r1, 0x20
/* 80512334  4E 80 00 20 */	blr 
