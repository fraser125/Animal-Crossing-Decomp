lbl_8048B5DC:
/* 8048B5DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048B5E0  7C 08 02 A6 */	mflr r0
/* 8048B5E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048B5E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048B5EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048B5F0  7C 7E 1B 78 */	mr r30, r3
/* 8048B5F4  80 03 09 30 */	lwz r0, 0x930(r3)
/* 8048B5F8  83 E3 02 00 */	lwz r31, 0x200(r3)
/* 8048B5FC  2C 00 FF FF */	cmpwi r0, -1
/* 8048B600  41 82 00 1C */	beq lbl_8048B61C
/* 8048B604  4B FF FF 5D */	bl aQMgr_talk_quest_clear_quest
/* 8048B608  81 9E 09 4C */	lwz r12, 0x94c(r30)
/* 8048B60C  38 7E 02 14 */	addi r3, r30, 0x214
/* 8048B610  38 80 00 23 */	li r4, 0x23
/* 8048B614  7D 89 03 A6 */	mtctr r12
/* 8048B618  4E 80 04 21 */	bctrl 
lbl_8048B61C:
/* 8048B61C  28 1F 00 00 */	cmplwi r31, 0
/* 8048B620  41 82 00 28 */	beq lbl_8048B648
/* 8048B624  38 00 00 00 */	li r0, 0
/* 8048B628  7F C3 F3 78 */	mr r3, r30
/* 8048B62C  90 01 00 08 */	stw r0, 8(r1)
/* 8048B630  7F E5 FB 78 */	mr r5, r31
/* 8048B634  38 81 00 08 */	addi r4, r1, 8
/* 8048B638  81 9E 09 50 */	lwz r12, 0x950(r30)
/* 8048B63C  80 DE 01 FC */	lwz r6, 0x1fc(r30)
/* 8048B640  7D 89 03 A6 */	mtctr r12
/* 8048B644  4E 80 04 21 */	bctrl 
lbl_8048B648:
/* 8048B648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048B64C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048B650  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8048B654  7C 08 03 A6 */	mtlr r0
/* 8048B658  38 21 00 20 */	addi r1, r1, 0x20
/* 8048B65C  4E 80 00 20 */	blr 
