lbl_80571900:
/* 80571900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571904  7C 08 02 A6 */	mflr r0
/* 80571908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057190C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80571910  4B E7 22 59 */	bl mQst_GetFirstJobData
/* 80571914  3B E0 00 1B */	li r31, 0x1b
/* 80571918  4B E7 23 D5 */	bl mQst_CheckRemoveTarget
/* 8057191C  2C 03 00 01 */	cmpwi r3, 1
/* 80571920  40 82 00 08 */	bne lbl_80571928
/* 80571924  3B E0 00 1C */	li r31, 0x1c
lbl_80571928:
/* 80571928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057192C  7F E3 FB 78 */	mr r3, r31
/* 80571930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80571934  7C 08 03 A6 */	mtlr r0
/* 80571938  38 21 00 10 */	addi r1, r1, 0x10
/* 8057193C  4E 80 00 20 */	blr 
