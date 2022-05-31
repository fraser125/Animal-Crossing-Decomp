lbl_8048E984:
/* 8048E984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E988  7C 08 02 A6 */	mflr r0
/* 8048E98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048E994  7C 7F 1B 78 */	mr r31, r3
/* 8048E998  4B F3 0D 11 */	bl func_803BF6A8
/* 8048E99C  4B F3 23 A5 */	bl mMsg_Set_LockContinue
/* 8048E9A0  4B F3 0D 09 */	bl func_803BF6A8
/* 8048E9A4  4B F3 10 C5 */	bl mMsg_request_main_disappear_wait_type2
/* 8048E9A8  38 60 00 01 */	li r3, 1
/* 8048E9AC  38 00 00 07 */	li r0, 7
/* 8048E9B0  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048E9B4  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048E9B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048E9BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E9C0  7C 08 03 A6 */	mtlr r0
/* 8048E9C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E9C8  4E 80 00 20 */	blr 
