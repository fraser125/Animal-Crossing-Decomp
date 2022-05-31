lbl_80495A30:
/* 80495A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495A34  7C 08 02 A6 */	mflr r0
/* 80495A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495A40  7C 7F 1B 78 */	mr r31, r3
/* 80495A44  4B F2 9C 65 */	bl func_803BF6A8
/* 80495A48  4B F2 B3 05 */	bl mMsg_Unset_LockContinue
/* 80495A4C  4B F2 9C 5D */	bl func_803BF6A8
/* 80495A50  4B F2 B2 D9 */	bl mMsg_Set_ForceNext
/* 80495A54  4B F2 9C 55 */	bl func_803BF6A8
/* 80495A58  4B F2 A1 31 */	bl mMsg_request_main_appear_wait_type1
/* 80495A5C  38 60 00 07 */	li r3, 7
/* 80495A60  38 00 00 01 */	li r0, 1
/* 80495A64  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80495A68  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80495A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495A74  7C 08 03 A6 */	mtlr r0
/* 80495A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80495A7C  4E 80 00 20 */	blr 
