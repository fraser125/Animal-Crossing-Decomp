lbl_8055EAC4:
/* 8055EAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EAC8  7C 08 02 A6 */	mflr r0
/* 8055EACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EAD0  4B E6 0B D9 */	bl func_803BF6A8
/* 8055EAD4  4B E6 22 6D */	bl mMsg_Set_LockContinue
/* 8055EAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EADC  7C 08 03 A6 */	mtlr r0
/* 8055EAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EAE4  4E 80 00 20 */	blr 
