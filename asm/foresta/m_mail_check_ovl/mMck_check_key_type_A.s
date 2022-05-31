lbl_8050F380:
/* 8050F380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050F384  7C 08 02 A6 */	mflr r0
/* 8050F388  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050F38C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F390  4B B8 BB 41 */	bl func_8009AED0
/* 8050F394  7C 7C 1B 78 */	mr r28, r3
/* 8050F398  7C 9D 23 78 */	mr r29, r4
/* 8050F39C  4B FF FF 05 */	bl mMck_check_eof
/* 8050F3A0  7C 7E 1B 78 */	mr r30, r3
/* 8050F3A4  48 00 00 74 */	b lbl_8050F418
/* 8050F3A8  48 00 00 0C */	b lbl_8050F3B4
lbl_8050F3AC:
/* 8050F3AC  3B 9C 00 01 */	addi r28, r28, 1
/* 8050F3B0  3B BD FF FF */	addi r29, r29, -1
lbl_8050F3B4:
/* 8050F3B4  88 7C 00 00 */	lbz r3, 0(r28)
/* 8050F3B8  4B FF FE 3D */	bl mMck_cmp_sep_nes
/* 8050F3BC  2C 03 00 00 */	cmpwi r3, 0
/* 8050F3C0  40 82 00 0C */	bne lbl_8050F3CC
/* 8050F3C4  2C 1D 00 03 */	cmpwi r29, 3
/* 8050F3C8  41 81 FF E4 */	bgt lbl_8050F3AC
lbl_8050F3CC:
/* 8050F3CC  2C 1D 00 03 */	cmpwi r29, 3
/* 8050F3D0  40 81 00 48 */	ble lbl_8050F418
/* 8050F3D4  3B E0 00 03 */	li r31, 3
/* 8050F3D8  3B 9C 00 01 */	addi r28, r28, 1
/* 8050F3DC  3B BD FF FF */	addi r29, r29, -1
lbl_8050F3E0:
/* 8050F3E0  88 7C 00 00 */	lbz r3, 0(r28)
/* 8050F3E4  38 80 00 01 */	li r4, 1
/* 8050F3E8  4B FF FE 7D */	bl mMck_check_alpha
/* 8050F3EC  2C 03 00 01 */	cmpwi r3, 1
/* 8050F3F0  41 82 00 14 */	beq lbl_8050F404
/* 8050F3F4  37 FF FF FF */	addic. r31, r31, -1
/* 8050F3F8  3B BD FF FF */	addi r29, r29, -1
/* 8050F3FC  3B 9C 00 01 */	addi r28, r28, 1
/* 8050F400  41 81 FF E0 */	bgt lbl_8050F3E0
lbl_8050F404:
/* 8050F404  2C 1F 00 00 */	cmpwi r31, 0
/* 8050F408  40 82 00 0C */	bne lbl_8050F414
/* 8050F40C  3B DE FF F6 */	addi r30, r30, -10
/* 8050F410  48 00 00 08 */	b lbl_8050F418
lbl_8050F414:
/* 8050F414  3B DE 00 0A */	addi r30, r30, 0xa
lbl_8050F418:
/* 8050F418  28 1C 00 00 */	cmplwi r28, 0
/* 8050F41C  41 82 00 0C */	beq lbl_8050F428
/* 8050F420  2C 1D 00 03 */	cmpwi r29, 3
/* 8050F424  41 81 FF 90 */	bgt lbl_8050F3B4
lbl_8050F428:
/* 8050F428  7F C3 F3 78 */	mr r3, r30
/* 8050F42C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F430  4B B8 BA ED */	bl func_8009AF1C
/* 8050F434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050F438  7C 08 03 A6 */	mtlr r0
/* 8050F43C  38 21 00 20 */	addi r1, r1, 0x20
/* 8050F440  4E 80 00 20 */	blr 
