lbl_80585D04:
/* 80585D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585D08  7C 08 02 A6 */	mflr r0
/* 80585D0C  38 A0 00 20 */	li r5, 0x20
/* 80585D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585D18  7C 9F 23 78 */	mr r31, r4
/* 80585D1C  38 80 00 10 */	li r4, 0x10
/* 80585D20  93 C1 00 08 */	stw r30, 8(r1)
/* 80585D24  7C 7E 1B 78 */	mr r30, r3
/* 80585D28  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 80585D2C  4B E3 4D 1D */	bl mem_clear
/* 80585D30  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 80585D34  38 FE 09 C8 */	addi r7, r30, 0x9c8
/* 80585D38  38 80 00 1D */	li r4, 0x1d
/* 80585D3C  38 A0 00 00 */	li r5, 0
/* 80585D40  38 C0 00 00 */	li r6, 0
/* 80585D44  4B E6 99 C1 */	bl mSM_open_submenu_new
/* 80585D48  38 00 00 2C */	li r0, 0x2c
/* 80585D4C  90 1E 09 98 */	stw r0, 0x998(r30)
/* 80585D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585D58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80585D5C  7C 08 03 A6 */	mtlr r0
/* 80585D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80585D64  4E 80 00 20 */	blr 
