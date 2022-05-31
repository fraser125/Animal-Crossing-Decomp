lbl_8048F9F8:
/* 8048F9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F9FC  7C 08 02 A6 */	mflr r0
/* 8048FA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048FA08  7C 7F 1B 78 */	mr r31, r3
/* 8048FA0C  4B F2 FC 9D */	bl func_803BF6A8
/* 8048FA10  4B F3 13 31 */	bl mMsg_Set_LockContinue
/* 8048FA14  4B F2 FC 95 */	bl func_803BF6A8
/* 8048FA18  4B F3 00 51 */	bl mMsg_request_main_disappear_wait_type2
/* 8048FA1C  38 60 00 01 */	li r3, 1
/* 8048FA20  38 00 00 02 */	li r0, 2
/* 8048FA24  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048FA28  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048FA2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048FA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FA34  7C 08 03 A6 */	mtlr r0
/* 8048FA38  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FA3C  4E 80 00 20 */	blr 
