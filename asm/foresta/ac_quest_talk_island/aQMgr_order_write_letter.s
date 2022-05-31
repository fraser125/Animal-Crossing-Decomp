lbl_8048FA40:
/* 8048FA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FA44  7C 08 02 A6 */	mflr r0
/* 8048FA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048FA50  7C 7F 1B 78 */	mr r31, r3
/* 8048FA54  4B F2 FC 55 */	bl func_803BF6A8
/* 8048FA58  4B F3 12 E9 */	bl mMsg_Set_LockContinue
/* 8048FA5C  4B F2 FC 4D */	bl func_803BF6A8
/* 8048FA60  4B F3 00 09 */	bl mMsg_request_main_disappear_wait_type2
/* 8048FA64  38 60 00 01 */	li r3, 1
/* 8048FA68  38 00 00 08 */	li r0, 8
/* 8048FA6C  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048FA70  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048FA74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048FA78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FA7C  7C 08 03 A6 */	mtlr r0
/* 8048FA80  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FA84  4E 80 00 20 */	blr 
