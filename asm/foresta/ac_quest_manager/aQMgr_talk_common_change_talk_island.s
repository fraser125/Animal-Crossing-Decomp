lbl_80486330:
/* 80486330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486334  7C 08 02 A6 */	mflr r0
/* 80486338  38 A0 00 00 */	li r5, 0
/* 8048633C  38 80 00 03 */	li r4, 3
/* 80486340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486344  38 00 FF FF */	li r0, -1
/* 80486348  98 A3 01 84 */	stb r5, 0x184(r3)
/* 8048634C  98 83 09 5B */	stb r4, 0x95b(r3)
/* 80486350  98 A3 01 86 */	stb r5, 0x186(r3)
/* 80486354  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 80486358  4B F3 93 51 */	bl func_803BF6A8
/* 8048635C  4B F3 A9 E5 */	bl mMsg_Set_LockContinue
/* 80486360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486364  38 60 00 01 */	li r3, 1
/* 80486368  7C 08 03 A6 */	mtlr r0
/* 8048636C  38 21 00 10 */	addi r1, r1, 0x10
/* 80486370  4E 80 00 20 */	blr 
