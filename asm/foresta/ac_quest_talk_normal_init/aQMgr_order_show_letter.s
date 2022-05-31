lbl_80494EA8:
/* 80494EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494EAC  7C 08 02 A6 */	mflr r0
/* 80494EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80494EB8  7C 7F 1B 78 */	mr r31, r3
/* 80494EBC  4B F2 A7 ED */	bl func_803BF6A8
/* 80494EC0  4B F2 BE 81 */	bl mMsg_Set_LockContinue
/* 80494EC4  4B F2 A7 E5 */	bl func_803BF6A8
/* 80494EC8  4B F2 AB A1 */	bl mMsg_request_main_disappear_wait_type2
/* 80494ECC  38 60 00 01 */	li r3, 1
/* 80494ED0  38 00 00 02 */	li r0, 2
/* 80494ED4  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80494ED8  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80494EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494EE4  7C 08 03 A6 */	mtlr r0
/* 80494EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80494EEC  4E 80 00 20 */	blr 
