lbl_8048FBB0:
/* 8048FBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FBB4  7C 08 02 A6 */	mflr r0
/* 8048FBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FBBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048FBC0  7C 7F 1B 78 */	mr r31, r3
/* 8048FBC4  4B F2 FA E5 */	bl func_803BF6A8
/* 8048FBC8  4B F3 11 79 */	bl mMsg_Set_LockContinue
/* 8048FBCC  4B F2 FA DD */	bl func_803BF6A8
/* 8048FBD0  4B F2 FE 99 */	bl mMsg_request_main_disappear_wait_type2
/* 8048FBD4  38 60 00 01 */	li r3, 1
/* 8048FBD8  38 00 00 06 */	li r0, 6
/* 8048FBDC  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048FBE0  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048FBE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048FBE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FBEC  7C 08 03 A6 */	mtlr r0
/* 8048FBF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FBF4  4E 80 00 20 */	blr 
