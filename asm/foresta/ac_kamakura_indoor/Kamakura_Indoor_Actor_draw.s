lbl_8042BAF4:
/* 8042BAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BAF8  7C 08 02 A6 */	mflr r0
/* 8042BAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042BB04  7C 7F 1B 78 */	mr r31, r3
/* 8042BB08  93 C1 00 08 */	stw r30, 8(r1)
/* 8042BB0C  7C 9E 23 78 */	mr r30, r4
/* 8042BB10  4B FF FD 61 */	bl aKI_DrawKamakuraIndoorBG
/* 8042BB14  7F E3 FB 78 */	mr r3, r31
/* 8042BB18  7F C4 F3 78 */	mr r4, r30
/* 8042BB1C  4B FF FB 41 */	bl aKI_DrawKamakuraIndoorCandleRing
/* 8042BB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042BB28  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042BB2C  7C 08 03 A6 */	mtlr r0
/* 8042BB30  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BB34  4E 80 00 20 */	blr 
