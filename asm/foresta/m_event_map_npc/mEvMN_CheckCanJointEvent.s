lbl_8039F6F8:
/* 8039F6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F6FC  7C 08 02 A6 */	mflr r0
/* 8039F700  38 A0 00 07 */	li r5, 7
/* 8039F704  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F708  7C 60 1B 78 */	mr r0, r3
/* 8039F70C  7C 83 23 78 */	mr r3, r4
/* 8039F710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039F714  3B E0 00 00 */	li r31, 0
/* 8039F718  7C 04 03 78 */	mr r4, r0
/* 8039F71C  48 02 C6 5D */	bl mNpc_GetAnimalMemoryIdx
/* 8039F720  2C 03 FF FF */	cmpwi r3, -1
/* 8039F724  41 82 00 08 */	beq lbl_8039F72C
/* 8039F728  3B E0 00 01 */	li r31, 1
lbl_8039F72C:
/* 8039F72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F730  7F E3 FB 78 */	mr r3, r31
/* 8039F734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039F738  7C 08 03 A6 */	mtlr r0
/* 8039F73C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F740  4E 80 00 20 */	blr 
