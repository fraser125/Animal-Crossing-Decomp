lbl_8048CA3C:
/* 8048CA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CA40  7C 08 02 A6 */	mflr r0
/* 8048CA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CA48  38 00 00 0B */	li r0, 0xb
/* 8048CA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CA50  7C 7F 1B 78 */	mr r31, r3
/* 8048CA54  98 03 01 86 */	stb r0, 0x186(r3)
/* 8048CA58  4B F3 2C 51 */	bl func_803BF6A8
/* 8048CA5C  4B F3 30 0D */	bl mMsg_request_main_disappear_wait_type2
/* 8048CA60  38 00 00 01 */	li r0, 1
/* 8048CA64  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048CA68  4B F3 2C 41 */	bl func_803BF6A8
/* 8048CA6C  4B F3 42 D5 */	bl mMsg_Set_LockContinue
/* 8048CA70  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CA74  7F E3 FB 78 */	mr r3, r31
/* 8048CA78  38 80 00 02 */	li r4, 2
/* 8048CA7C  7D 89 03 A6 */	mtctr r12
/* 8048CA80  4E 80 04 21 */	bctrl 
/* 8048CA84  4B F3 2C 25 */	bl func_803BF6A8
/* 8048CA88  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CA8C  4B F3 35 39 */	bl mMsg_Set_continue_msg_num
/* 8048CA90  4B F3 2C 19 */	bl func_803BF6A8
/* 8048CA94  4B F3 42 95 */	bl mMsg_Set_ForceNext
/* 8048CA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CA9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CAA0  7C 08 03 A6 */	mtlr r0
/* 8048CAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CAA8  4E 80 00 20 */	blr 
