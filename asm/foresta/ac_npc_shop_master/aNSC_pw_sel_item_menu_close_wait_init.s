lbl_8057C27C:
/* 8057C27C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C280  7C 08 02 A6 */	mflr r0
/* 8057C284  38 A0 00 10 */	li r5, 0x10
/* 8057C288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057C290  7C 7F 1B 78 */	mr r31, r3
/* 8057C294  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8057C298  38 80 00 01 */	li r4, 1
/* 8057C29C  A0 DF 09 F6 */	lhz r6, 0x9f6(r31)
/* 8057C2A0  4B E7 34 3D */	bl mSM_open_submenu
/* 8057C2A4  38 00 00 2C */	li r0, 0x2c
/* 8057C2A8  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8057C2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C2B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C2B4  7C 08 03 A6 */	mtlr r0
/* 8057C2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C2BC  4E 80 00 20 */	blr 
