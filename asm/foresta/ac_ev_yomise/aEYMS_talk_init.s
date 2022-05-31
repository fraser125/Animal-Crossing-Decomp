lbl_80526D00:
/* 80526D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526D04  7C 08 02 A6 */	mflr r0
/* 80526D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526D0C  80 83 09 9C */	lwz r4, 0x99c(r3)
/* 80526D10  48 00 01 35 */	bl aEYMS_setupAction
/* 80526D14  4B E7 36 A1 */	bl mDemo_Set_ListenAble
/* 80526D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526D1C  38 60 00 01 */	li r3, 1
/* 80526D20  7C 08 03 A6 */	mtlr r0
/* 80526D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80526D28  4E 80 00 20 */	blr 
