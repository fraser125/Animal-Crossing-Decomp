lbl_80518F68:
/* 80518F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80518F6C  7C 08 02 A6 */	mflr r0
/* 80518F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80518F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80518F78  4B EA 67 31 */	bl func_803BF6A8
/* 80518F7C  7C 7F 1B 78 */	mr r31, r3
/* 80518F80  4B EA 6C 09 */	bl mMsg_request_main_appear_wait_type1
/* 80518F84  7F E3 FB 78 */	mr r3, r31
/* 80518F88  4B EA 7D C5 */	bl mMsg_Unset_LockContinue
/* 80518F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80518F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80518F94  7C 08 03 A6 */	mtlr r0
/* 80518F98  38 21 00 10 */	addi r1, r1, 0x10
/* 80518F9C  4E 80 00 20 */	blr 
