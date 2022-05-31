lbl_8057BD14:
/* 8057BD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BD18  7C 08 02 A6 */	mflr r0
/* 8057BD1C  38 A0 00 05 */	li r5, 5
/* 8057BD20  38 C0 00 00 */	li r6, 0
/* 8057BD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BD2C  7C 7F 1B 78 */	mr r31, r3
/* 8057BD30  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8057BD34  38 80 00 01 */	li r4, 1
/* 8057BD38  4B E7 39 A5 */	bl mSM_open_submenu
/* 8057BD3C  38 00 00 13 */	li r0, 0x13
/* 8057BD40  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8057BD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BD4C  7C 08 03 A6 */	mtlr r0
/* 8057BD50  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BD54  4E 80 00 20 */	blr 
