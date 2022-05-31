lbl_8059DDC0:
/* 8059DDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059DDC4  7C 08 02 A6 */	mflr r0
/* 8059DDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059DDCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059DDD0  7C 7F 1B 78 */	mr r31, r3
/* 8059DDD4  93 C1 00 08 */	stw r30, 8(r1)
/* 8059DDD8  7C 9E 23 78 */	mr r30, r4
/* 8059DDDC  4B E3 E2 DD */	bl mPlib_Get_item_net_catch_label
/* 8059DDE0  7C 03 F8 40 */	cmplw r3, r31
/* 8059DDE4  40 82 00 20 */	bne lbl_8059DE04
/* 8059DDE8  38 00 00 FF */	li r0, 0xff
/* 8059DDEC  7F E3 FB 78 */	mr r3, r31
/* 8059DDF0  90 1F 02 5C */	stw r0, 0x25c(r31)
/* 8059DDF4  7F C5 F3 78 */	mr r5, r30
/* 8059DDF8  38 80 00 01 */	li r4, 1
/* 8059DDFC  4B FF FF 79 */	bl aIKR_setupAction
/* 8059DE00  48 00 00 18 */	b lbl_8059DE18
lbl_8059DE04:
/* 8059DE04  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059DE08  7F E3 FB 78 */	mr r3, r31
/* 8059DE0C  7F C4 F3 78 */	mr r4, r30
/* 8059DE10  7D 89 03 A6 */	mtctr r12
/* 8059DE14  4E 80 04 21 */	bctrl 
lbl_8059DE18:
/* 8059DE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059DE20  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059DE24  7C 08 03 A6 */	mtlr r0
/* 8059DE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DE2C  4E 80 00 20 */	blr 
