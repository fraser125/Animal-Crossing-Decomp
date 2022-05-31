lbl_8055622C:
/* 8055622C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556230  7C 08 02 A6 */	mflr r0
/* 80556234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055623C  4B E6 94 6D */	bl func_803BF6A8
/* 80556240  7C 7F 1B 78 */	mr r31, r3
/* 80556244  4B E6 AA FD */	bl mMsg_Set_LockContinue
/* 80556248  7F E3 FB 78 */	mr r3, r31
/* 8055624C  4B E6 97 F9 */	bl mMsg_request_main_disappear_wait_type1
/* 80556250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80556258  7C 08 03 A6 */	mtlr r0
/* 8055625C  38 21 00 10 */	addi r1, r1, 0x10
/* 80556260  4E 80 00 20 */	blr 
