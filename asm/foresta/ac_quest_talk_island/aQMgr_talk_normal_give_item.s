lbl_80491318:
/* 80491318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049131C  7C 08 02 A6 */	mflr r0
/* 80491320  38 80 00 06 */	li r4, 6
/* 80491324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049132C  7C 7F 1B 78 */	mr r31, r3
/* 80491330  81 83 09 48 */	lwz r12, 0x948(r3)
/* 80491334  7D 89 03 A6 */	mtctr r12
/* 80491338  4E 80 04 21 */	bctrl 
/* 8049133C  4B F2 E3 6D */	bl func_803BF6A8
/* 80491340  4B F2 FA 01 */	bl mMsg_Set_LockContinue
/* 80491344  38 60 00 06 */	li r3, 6
/* 80491348  38 00 00 05 */	li r0, 5
/* 8049134C  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80491350  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80491354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049135C  7C 08 03 A6 */	mtlr r0
/* 80491360  38 21 00 10 */	addi r1, r1, 0x10
/* 80491364  4E 80 00 20 */	blr 
