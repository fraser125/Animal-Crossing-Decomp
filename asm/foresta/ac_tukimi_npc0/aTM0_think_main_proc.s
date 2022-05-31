lbl_8058D9C0:
/* 8058D9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D9C4  7C 08 02 A6 */	mflr r0
/* 8058D9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D9D0  7C 7F 1B 78 */	mr r31, r3
/* 8058D9D4  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8058D9D8  28 00 00 FF */	cmplwi r0, 0xff
/* 8058D9DC  40 82 00 2C */	bne lbl_8058DA08
/* 8058D9E0  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8058D9E4  28 00 00 16 */	cmplwi r0, 0x16
/* 8058D9E8  40 82 00 10 */	bne lbl_8058D9F8
/* 8058D9EC  38 00 00 00 */	li r0, 0
/* 8058D9F0  98 1F 07 F6 */	stb r0, 0x7f6(r31)
/* 8058D9F4  4B FF FF 09 */	bl aTM0_set_animation
lbl_8058D9F8:
/* 8058D9F8  38 00 01 37 */	li r0, 0x137
/* 8058D9FC  7F E3 FB 78 */	mr r3, r31
/* 8058DA00  90 1F 08 40 */	stw r0, 0x840(r31)
/* 8058DA04  4B FF FF 39 */	bl func_8058D93C
lbl_8058DA08:
/* 8058DA08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058DA10  7C 08 03 A6 */	mtlr r0
/* 8058DA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DA18  4E 80 00 20 */	blr 
