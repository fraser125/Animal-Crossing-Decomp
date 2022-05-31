lbl_805FB67C:
/* 805FB67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB680  7C 08 02 A6 */	mflr r0
/* 805FB684  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB68C  7C 9F 23 78 */	mr r31, r4
/* 805FB690  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FB694  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805FB698  38 63 00 08 */	addi r3, r3, 8
/* 805FB69C  4B FF 44 C5 */	bl mTG_get_table_idx
/* 805FB6A0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805FB6A4  2C 00 00 01 */	cmpwi r0, 1
/* 805FB6A8  41 82 00 0C */	beq lbl_805FB6B4
/* 805FB6AC  40 80 00 58 */	bge lbl_805FB704
/* 805FB6B0  48 00 00 54 */	b lbl_805FB704
lbl_805FB6B4:
/* 805FB6B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FB6B8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805FB6BC  3C 64 00 02 */	addis r3, r4, 2
/* 805FB6C0  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 805FB6C4  28 00 00 01 */	cmplwi r0, 1
/* 805FB6C8  40 82 00 34 */	bne lbl_805FB6FC
/* 805FB6CC  80 64 00 14 */	lwz r3, 0x14(r4)
/* 805FB6D0  2C 03 00 2F */	cmpwi r3, 0x2f
/* 805FB6D4  41 82 00 28 */	beq lbl_805FB6FC
/* 805FB6D8  38 03 FF D6 */	addi r0, r3, -42
/* 805FB6DC  28 00 00 02 */	cmplwi r0, 2
/* 805FB6E0  40 81 00 0C */	ble lbl_805FB6EC
/* 805FB6E4  2C 03 00 2D */	cmpwi r3, 0x2d
/* 805FB6E8  40 82 00 0C */	bne lbl_805FB6F4
lbl_805FB6EC:
/* 805FB6EC  38 60 00 39 */	li r3, 0x39
/* 805FB6F0  48 00 00 48 */	b lbl_805FB738
lbl_805FB6F4:
/* 805FB6F4  38 60 00 37 */	li r3, 0x37
/* 805FB6F8  48 00 00 40 */	b lbl_805FB738
lbl_805FB6FC:
/* 805FB6FC  38 60 00 38 */	li r3, 0x38
/* 805FB700  48 00 00 38 */	b lbl_805FB738
lbl_805FB704:
/* 805FB704  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 805FB708  2C 00 00 01 */	cmpwi r0, 1
/* 805FB70C  41 82 00 20 */	beq lbl_805FB72C
/* 805FB710  40 80 00 08 */	bge lbl_805FB718
/* 805FB714  48 00 00 10 */	b lbl_805FB724
lbl_805FB718:
/* 805FB718  2C 00 00 03 */	cmpwi r0, 3
/* 805FB71C  40 80 00 08 */	bge lbl_805FB724
/* 805FB720  48 00 00 14 */	b lbl_805FB734
lbl_805FB724:
/* 805FB724  38 60 00 36 */	li r3, 0x36
/* 805FB728  48 00 00 10 */	b lbl_805FB738
lbl_805FB72C:
/* 805FB72C  38 60 00 4A */	li r3, 0x4a
/* 805FB730  48 00 00 08 */	b lbl_805FB738
lbl_805FB734:
/* 805FB734  38 60 00 4B */	li r3, 0x4b
lbl_805FB738:
/* 805FB738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB73C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB740  7C 08 03 A6 */	mtlr r0
/* 805FB744  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB748  4E 80 00 20 */	blr 
