lbl_8058E5CC:
/* 8058E5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E5D0  7C 08 02 A6 */	mflr r0
/* 8058E5D4  7C 64 1B 78 */	mr r4, r3
/* 8058E5D8  38 60 00 07 */	li r3, 7
/* 8058E5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E5E4  3B E0 00 00 */	li r31, 0
/* 8058E5E8  4B E0 BC 7D */	bl mDemo_Check
/* 8058E5EC  2C 03 00 00 */	cmpwi r3, 0
/* 8058E5F0  40 82 00 08 */	bne lbl_8058E5F8
/* 8058E5F4  3B E0 00 01 */	li r31, 1
lbl_8058E5F8:
/* 8058E5F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E5FC  7F E3 FB 78 */	mr r3, r31
/* 8058E600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E604  7C 08 03 A6 */	mtlr r0
/* 8058E608  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E60C  4E 80 00 20 */	blr 
