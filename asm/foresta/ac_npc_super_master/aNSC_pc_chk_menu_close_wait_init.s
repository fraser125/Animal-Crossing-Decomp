lbl_80585E08:
/* 80585E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585E0C  7C 08 02 A6 */	mflr r0
/* 80585E10  38 A0 00 00 */	li r5, 0
/* 80585E14  38 C0 00 00 */	li r6, 0
/* 80585E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585E20  7C 7F 1B 78 */	mr r31, r3
/* 80585E24  38 64 1D EC */	addi r3, r4, 0x1dec
/* 80585E28  38 80 00 1E */	li r4, 0x1e
/* 80585E2C  38 FF 09 D8 */	addi r7, r31, 0x9d8
/* 80585E30  4B E6 98 D5 */	bl mSM_open_submenu_new
/* 80585E34  38 00 00 37 */	li r0, 0x37
/* 80585E38  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80585E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585E44  7C 08 03 A6 */	mtlr r0
/* 80585E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80585E4C  4E 80 00 20 */	blr 