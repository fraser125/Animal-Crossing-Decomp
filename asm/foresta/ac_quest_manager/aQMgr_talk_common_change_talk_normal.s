lbl_804862EC:
/* 804862EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804862F0  7C 08 02 A6 */	mflr r0
/* 804862F4  38 A0 00 00 */	li r5, 0
/* 804862F8  38 80 00 02 */	li r4, 2
/* 804862FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486300  38 00 FF FF */	li r0, -1
/* 80486304  98 A3 01 84 */	stb r5, 0x184(r3)
/* 80486308  98 83 09 5B */	stb r4, 0x95b(r3)
/* 8048630C  98 A3 01 86 */	stb r5, 0x186(r3)
/* 80486310  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 80486314  4B F3 93 95 */	bl func_803BF6A8
/* 80486318  4B F3 AA 29 */	bl mMsg_Set_LockContinue
/* 8048631C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486320  38 60 00 01 */	li r3, 1
/* 80486324  7C 08 03 A6 */	mtlr r0
/* 80486328  38 21 00 10 */	addi r1, r1, 0x10
/* 8048632C  4E 80 00 20 */	blr 
