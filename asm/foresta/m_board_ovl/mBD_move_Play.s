lbl_805C5198:
/* 805C5198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C519C  7C 08 02 A6 */	mflr r0
/* 805C51A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C51A4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C51A8  80 05 03 54 */	lwz r0, 0x354(r5)
/* 805C51AC  2C 00 00 04 */	cmpwi r0, 4
/* 805C51B0  40 82 00 30 */	bne lbl_805C51E0
/* 805C51B4  38 A0 00 03 */	li r5, 3
/* 805C51B8  38 00 00 02 */	li r0, 2
/* 805C51BC  90 A4 00 04 */	stw r5, 4(r4)
/* 805C51C0  38 80 00 0F */	li r4, 0xf
/* 805C51C4  38 A0 00 00 */	li r5, 0
/* 805C51C8  38 C0 00 00 */	li r6, 0
/* 805C51CC  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805C51D0  80 E7 09 90 */	lwz r7, 0x990(r7)
/* 805C51D4  98 07 00 01 */	stb r0, 1(r7)
/* 805C51D8  4B E2 A5 05 */	bl mSM_open_submenu
/* 805C51DC  48 00 00 08 */	b lbl_805C51E4
lbl_805C51E0:
/* 805C51E0  4B FF FC 89 */	bl mBD_roll_control
lbl_805C51E4:
/* 805C51E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C51E8  7C 08 03 A6 */	mtlr r0
/* 805C51EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C51F0  4E 80 00 20 */	blr 
