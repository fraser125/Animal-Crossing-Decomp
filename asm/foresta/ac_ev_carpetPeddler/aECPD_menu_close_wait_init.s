lbl_8051C734:
/* 8051C734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C738  7C 08 02 A6 */	mflr r0
/* 8051C73C  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8051C740  38 80 00 01 */	li r4, 1
/* 8051C744  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C748  38 A0 00 08 */	li r5, 8
/* 8051C74C  38 C0 00 00 */	li r6, 0
/* 8051C750  4B ED 2F 8D */	bl mSM_open_submenu
/* 8051C754  4B EA 2F 55 */	bl func_803BF6A8
/* 8051C758  4B EA 45 E9 */	bl mMsg_Set_LockContinue
/* 8051C75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C760  7C 08 03 A6 */	mtlr r0
/* 8051C764  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C768  4E 80 00 20 */	blr 
