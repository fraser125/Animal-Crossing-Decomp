lbl_80475EB0:
/* 80475EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475EB4  7C 08 02 A6 */	mflr r0
/* 80475EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475EC0  7C 7F 1B 78 */	mr r31, r3
/* 80475EC4  4B F4 97 E5 */	bl func_803BF6A8
/* 80475EC8  4B F4 AE 35 */	bl mMsg_Check_MainDisappear
/* 80475ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80475ED0  41 82 00 14 */	beq lbl_80475EE4
/* 80475ED4  38 60 00 01 */	li r3, 1
/* 80475ED8  38 00 00 00 */	li r0, 0
/* 80475EDC  90 7F 04 90 */	stw r3, 0x490(r31)
/* 80475EE0  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_80475EE4:
/* 80475EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475EEC  7C 08 03 A6 */	mtlr r0
/* 80475EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80475EF4  4E 80 00 20 */	blr 
