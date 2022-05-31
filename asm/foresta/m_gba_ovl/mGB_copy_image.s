lbl_805DC374:
/* 805DC374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DC378  7C 08 02 A6 */	mflr r0
/* 805DC37C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DC380  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC384  4B AB EB 51 */	bl func_8009AED4
/* 805DC388  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 805DC38C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805DC390  28 00 FE 31 */	cmplwi r0, 0xfe31
/* 805DC394  7C 9D 23 78 */	mr r29, r4
/* 805DC398  83 C6 09 E4 */	lwz r30, 0x9e4(r6)
/* 805DC39C  38 80 00 00 */	li r4, 0
/* 805DC3A0  41 80 00 10 */	blt lbl_805DC3B0
/* 805DC3A4  28 00 FE 38 */	cmplwi r0, 0xfe38
/* 805DC3A8  41 81 00 08 */	bgt lbl_805DC3B0
/* 805DC3AC  38 80 00 01 */	li r4, 1
lbl_805DC3B0:
/* 805DC3B0  2C 04 00 00 */	cmpwi r4, 0
/* 805DC3B4  41 82 00 74 */	beq lbl_805DC428
/* 805DC3B8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805DC3BC  38 80 00 00 */	li r4, 0
/* 805DC3C0  28 00 FE 99 */	cmplwi r0, 0xfe99
/* 805DC3C4  41 80 00 10 */	blt lbl_805DC3D4
/* 805DC3C8  28 00 FE A0 */	cmplwi r0, 0xfea0
/* 805DC3CC  41 81 00 08 */	bgt lbl_805DC3D4
/* 805DC3D0  38 80 00 01 */	li r4, 1
lbl_805DC3D4:
/* 805DC3D4  2C 04 00 00 */	cmpwi r4, 0
/* 805DC3D8  40 82 00 08 */	bne lbl_805DC3E0
/* 805DC3DC  48 00 00 4C */	b lbl_805DC428
lbl_805DC3E0:
/* 805DC3E0  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 805DC3E4  3F E4 FF FF */	addis r31, r4, 0xffff
/* 805DC3E8  3B FF 01 CF */	addi r31, r31, 0x1cf
/* 805DC3EC  7F E4 FB 78 */	mr r4, r31
/* 805DC3F0  48 00 D6 3D */	bl mNW_get_image_data
/* 805DC3F4  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 805DC3F8  80 BE 00 04 */	lwz r5, 4(r30)
/* 805DC3FC  3C 84 FF FF */	addis r4, r4, 0xffff
/* 805DC400  38 04 01 67 */	addi r0, r4, 0x167
/* 805DC404  1C 00 02 20 */	mulli r0, r0, 0x220
/* 805DC408  7C 85 02 14 */	add r4, r5, r0
/* 805DC40C  4B DE D7 C5 */	bl mNW_CopyOriginalTextureClass
/* 805DC410  88 1E 00 08 */	lbz r0, 8(r30)
/* 805DC414  7C 00 F8 00 */	cmpw r0, r31
/* 805DC418  40 82 00 10 */	bne lbl_805DC428
/* 805DC41C  3C 60 81 21 */	lis r3, gb_ovl_change_flg@ha /* 0x81211738@ha */
/* 805DC420  38 00 00 01 */	li r0, 1
/* 805DC424  98 03 17 38 */	stb r0, gb_ovl_change_flg@l(r3)  /* 0x81211738@l */
lbl_805DC428:
/* 805DC428  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC42C  4B AB EA F5 */	bl func_8009AF20
/* 805DC430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DC434  7C 08 03 A6 */	mtlr r0
/* 805DC438  38 21 00 20 */	addi r1, r1, 0x20
/* 805DC43C  4E 80 00 20 */	blr 
