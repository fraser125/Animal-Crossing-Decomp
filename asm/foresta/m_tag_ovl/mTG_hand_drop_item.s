lbl_805FB9FC:
/* 805FB9FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FBA00  7C 08 02 A6 */	mflr r0
/* 805FBA04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FBA08  39 61 00 20 */	addi r11, r1, 0x20
/* 805FBA0C  4B A9 F4 C9 */	bl func_8009AED4
/* 805FBA10  7C 7D 1B 78 */	mr r29, r3
/* 805FBA14  7C 9E 23 78 */	mr r30, r4
/* 805FBA18  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FBA1C  83 E4 09 80 */	lwz r31, 0x980(r4)
/* 805FBA20  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805FBA24  2C 00 00 03 */	cmpwi r0, 3
/* 805FBA28  40 82 00 B0 */	bne lbl_805FBAD8
/* 805FBA2C  38 00 00 04 */	li r0, 4
/* 805FBA30  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805FBA34  4B FF 5B 69 */	bl mTG_init_tag_data_item_win
/* 805FBA38  88 1F 03 66 */	lbz r0, 0x366(r31)
/* 805FBA3C  28 00 00 01 */	cmplwi r0, 1
/* 805FBA40  40 82 00 0C */	bne lbl_805FBA4C
/* 805FBA44  88 1F 03 64 */	lbz r0, 0x364(r31)
/* 805FBA48  48 00 00 08 */	b lbl_805FBA50
lbl_805FBA4C:
/* 805FBA4C  80 1E 00 38 */	lwz r0, 0x38(r30)
lbl_805FBA50:
/* 805FBA50  2C 00 00 03 */	cmpwi r0, 3
/* 805FBA54  40 82 00 70 */	bne lbl_805FBAC4
/* 805FBA58  A0 7F 02 34 */	lhz r3, 0x234(r31)
/* 805FBA5C  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 805FBA60  28 00 00 0F */	cmplwi r0, 0xf
/* 805FBA64  41 81 00 88 */	bgt lbl_805FBAEC
/* 805FBA68  3C 80 80 6D */	lis r4, lit_4471@ha /* 0x806D0E2C@ha */
/* 805FBA6C  54 00 10 3A */	slwi r0, r0, 2
/* 805FBA70  38 84 0E 2C */	addi r4, r4, lit_4471@l /* 0x806D0E2C@l */
/* 805FBA74  7C 04 00 2E */	lwzx r0, r4, r0
/* 805FBA78  7C 09 03 A6 */	mtctr r0
/* 805FBA7C  4E 80 04 20 */	bctr 
lbl_805FBA80:
/* 805FBA80  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805FBA84  38 00 00 01 */	li r0, 1
/* 805FBA88  38 60 00 5E */	li r3, 0x5e
/* 805FBA8C  B0 04 00 08 */	sth r0, 8(r4)
/* 805FBA90  48 03 22 75 */	bl sAdo_SysTrgStart
/* 805FBA94  48 00 00 58 */	b lbl_805FBAEC
lbl_805FBA98:
/* 805FBA98  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805FBA9C  38 00 00 02 */	li r0, 2
/* 805FBAA0  38 60 01 1C */	li r3, 0x11c
/* 805FBAA4  B0 04 00 08 */	sth r0, 8(r4)
/* 805FBAA8  48 03 22 5D */	bl sAdo_SysTrgStart
/* 805FBAAC  48 00 00 40 */	b lbl_805FBAEC
lbl_805FBAB0:
/* 805FBAB0  4B FF 97 8D */	bl mTG_island_check_fruit_eat
/* 805FBAB4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805FBAB8  38 00 00 03 */	li r0, 3
/* 805FBABC  B0 03 00 08 */	sth r0, 8(r3)
/* 805FBAC0  48 00 00 2C */	b lbl_805FBAEC
lbl_805FBAC4:
/* 805FBAC4  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FBAC8  40 82 00 24 */	bne lbl_805FBAEC
/* 805FBACC  7F A3 EB 78 */	mr r3, r29
/* 805FBAD0  4B FE DC A9 */	bl mNW_clear_mark_flg
/* 805FBAD4  48 00 00 18 */	b lbl_805FBAEC
lbl_805FBAD8:
/* 805FBAD8  7C 00 07 35 */	extsh. r0, r0
/* 805FBADC  40 82 00 10 */	bne lbl_805FBAEC
/* 805FBAE0  38 00 00 04 */	li r0, 4
/* 805FBAE4  B0 1F 02 30 */	sth r0, 0x230(r31)
/* 805FBAE8  B0 1F 02 32 */	sth r0, 0x232(r31)
lbl_805FBAEC:
/* 805FBAEC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FBAF0  4B A9 F4 31 */	bl func_8009AF20
/* 805FBAF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FBAF8  7C 08 03 A6 */	mtlr r0
/* 805FBAFC  38 21 00 20 */	addi r1, r1, 0x20
/* 805FBB00  4E 80 00 20 */	blr 
