lbl_804865EC:
/* 804865EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804865F0  7C 08 02 A6 */	mflr r0
/* 804865F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804865F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804865FC  3B E0 00 00 */	li r31, 0
/* 80486600  4B F3 90 A9 */	bl func_803BF6A8
/* 80486604  4B F3 91 3D */	bl mMsg_Check_main_wait
/* 80486608  2C 03 00 01 */	cmpwi r3, 1
/* 8048660C  40 82 00 08 */	bne lbl_80486614
/* 80486610  3B E0 00 01 */	li r31, 1
lbl_80486614:
/* 80486614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486618  7F E3 FB 78 */	mr r3, r31
/* 8048661C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486620  7C 08 03 A6 */	mtlr r0
/* 80486624  38 21 00 10 */	addi r1, r1, 0x10
/* 80486628  4E 80 00 20 */	blr 