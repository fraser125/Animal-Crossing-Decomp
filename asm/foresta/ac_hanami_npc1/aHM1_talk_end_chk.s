lbl_8052AA28:
/* 8052AA28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AA2C  7C 08 02 A6 */	mflr r0
/* 8052AA30  7C 64 1B 78 */	mr r4, r3
/* 8052AA34  38 60 00 07 */	li r3, 7
/* 8052AA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AA3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052AA40  3B E0 00 00 */	li r31, 0
/* 8052AA44  4B E6 F8 21 */	bl mDemo_Check
/* 8052AA48  2C 03 00 00 */	cmpwi r3, 0
/* 8052AA4C  40 82 00 08 */	bne lbl_8052AA54
/* 8052AA50  3B E0 00 01 */	li r31, 1
lbl_8052AA54:
/* 8052AA54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AA58  7F E3 FB 78 */	mr r3, r31
/* 8052AA5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052AA60  7C 08 03 A6 */	mtlr r0
/* 8052AA64  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AA68  4E 80 00 20 */	blr 
