lbl_80560C58:
/* 80560C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560C5C  7C 08 02 A6 */	mflr r0
/* 80560C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560C68  4B E5 EA 41 */	bl func_803BF6A8
/* 80560C6C  7C 7F 1B 78 */	mr r31, r3
/* 80560C70  4B E6 00 D1 */	bl mMsg_Set_LockContinue
/* 80560C74  7F E3 FB 78 */	mr r3, r31
/* 80560C78  4B E5 ED CD */	bl mMsg_request_main_disappear_wait_type1
/* 80560C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560C84  7C 08 03 A6 */	mtlr r0
/* 80560C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80560C8C  4E 80 00 20 */	blr 
