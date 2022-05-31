lbl_80495018:
/* 80495018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049501C  7C 08 02 A6 */	mflr r0
/* 80495020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495028  7C 7F 1B 78 */	mr r31, r3
/* 8049502C  4B F2 A6 7D */	bl func_803BF6A8
/* 80495030  4B F2 BD 11 */	bl mMsg_Set_LockContinue
/* 80495034  4B F2 A6 75 */	bl func_803BF6A8
/* 80495038  4B F2 AA 31 */	bl mMsg_request_main_disappear_wait_type2
/* 8049503C  38 60 00 01 */	li r3, 1
/* 80495040  38 00 00 06 */	li r0, 6
/* 80495044  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80495048  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8049504C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495054  7C 08 03 A6 */	mtlr r0
/* 80495058  38 21 00 10 */	addi r1, r1, 0x10
/* 8049505C  4E 80 00 20 */	blr 
