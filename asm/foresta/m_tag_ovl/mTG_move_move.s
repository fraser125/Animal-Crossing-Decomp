lbl_805FC9D8:
/* 805FC9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FC9DC  7C 08 02 A6 */	mflr r0
/* 805FC9E0  7C 86 23 78 */	mr r6, r4
/* 805FC9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FC9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FC9EC  7C 7F 1B 78 */	mr r31, r3
/* 805FC9F0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FC9F4  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805FC9F8  A8 03 02 30 */	lha r0, 0x230(r3)
/* 805FC9FC  2C 00 00 03 */	cmpwi r0, 3
/* 805FCA00  41 82 00 0C */	beq lbl_805FCA0C
/* 805FCA04  7C 00 07 35 */	extsh. r0, r0
/* 805FCA08  40 82 00 2C */	bne lbl_805FCA34
lbl_805FCA0C:
/* 805FCA0C  7F E3 FB 78 */	mr r3, r31
/* 805FCA10  7C A4 2B 78 */	mr r4, r5
/* 805FCA14  7C C5 33 78 */	mr r5, r6
/* 805FCA18  4B FF DE 3D */	bl mTG_move_cursol_base
/* 805FCA1C  2C 03 00 00 */	cmpwi r3, 0
/* 805FCA20  41 82 00 14 */	beq lbl_805FCA34
/* 805FCA24  7F E3 FB 78 */	mr r3, r31
/* 805FCA28  4B FF 4B 75 */	bl mTG_init_tag_data_item_win
/* 805FCA2C  38 60 00 01 */	li r3, 1
/* 805FCA30  48 03 12 D5 */	bl sAdo_SysTrgStart
lbl_805FCA34:
/* 805FCA34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FCA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FCA3C  7C 08 03 A6 */	mtlr r0
/* 805FCA40  38 21 00 10 */	addi r1, r1, 0x10
/* 805FCA44  4E 80 00 20 */	blr 
