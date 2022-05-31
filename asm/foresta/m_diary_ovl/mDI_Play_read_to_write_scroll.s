lbl_805CFFAC:
/* 805CFFAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CFFB0  7C 08 02 A6 */	mflr r0
/* 805CFFB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CFFB8  39 61 00 30 */	addi r11, r1, 0x30
/* 805CFFBC  4B AC AF 19 */	bl func_8009AED4
/* 805CFFC0  7C 7E 1B 78 */	mr r30, r3
/* 805CFFC4  7C 9D 23 78 */	mr r29, r4
/* 805CFFC8  7C BF 2B 78 */	mr r31, r5
/* 805CFFCC  4B FF FB 8D */	bl mDI_roll_control_read_to_write
/* 805CFFD0  A0 1F 00 42 */	lhz r0, 0x42(r31)
/* 805CFFD4  28 00 00 00 */	cmplwi r0, 0
/* 805CFFD8  40 82 00 C4 */	bne lbl_805D009C
/* 805CFFDC  3C 60 80 65 */	lis r3, lit_736@ha /* 0x8064B0E4@ha */
/* 805CFFE0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805CFFE4  C0 03 B0 E4 */	lfs f0, lit_736@l(r3)  /* 0x8064B0E4@l */
/* 805CFFE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFFEC  40 81 00 5C */	ble lbl_805D0048
/* 805CFFF0  A8 7F 00 2C */	lha r3, 0x2c(r31)
/* 805CFFF4  3C 00 43 30 */	lis r0, 0x4330
/* 805CFFF8  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064B0DC@ha */
/* 805CFFFC  3C A0 80 65 */	lis r5, lit_737@ha /* 0x8064B0E8@ha */
/* 805D0000  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D0004  90 01 00 08 */	stw r0, 8(r1)
/* 805D0008  C8 44 B0 DC */	lfd f2, lit_626@l(r4)  /* 0x8064B0DC@l */
/* 805D000C  90 61 00 0C */	stw r3, 0xc(r1)
/* 805D0010  C0 65 B0 E8 */	lfs f3, lit_737@l(r5)  /* 0x8064B0E8@l */
/* 805D0014  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D0018  90 61 00 14 */	stw r3, 0x14(r1)
/* 805D001C  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D0020  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D0024  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D0028  EC 23 00 72 */	fmuls f1, f3, f1
/* 805D002C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D0030  EC 01 00 32 */	fmuls f0, f1, f0
/* 805D0034  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805D0038  A8 7F 00 2C */	lha r3, 0x2c(r31)
/* 805D003C  38 03 00 01 */	addi r0, r3, 1
/* 805D0040  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 805D0044  48 00 00 08 */	b lbl_805D004C
lbl_805D0048:
/* 805D0048  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_805D004C:
/* 805D004C  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D0050  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 805D0054  C0 23 B0 D4 */	lfs f1, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805D0058  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D005C  40 82 00 88 */	bne lbl_805D00E4
/* 805D0060  3C 60 80 65 */	lis r3, lit_736@ha /* 0x8064B0E4@ha */
/* 805D0064  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805D0068  C0 23 B0 E4 */	lfs f1, lit_736@l(r3)  /* 0x8064B0E4@l */
/* 805D006C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D0070  40 82 00 74 */	bne lbl_805D00E4
/* 805D0074  80 FF 00 08 */	lwz r7, 8(r31)
/* 805D0078  7F C3 F3 78 */	mr r3, r30
/* 805D007C  38 80 00 0A */	li r4, 0xa
/* 805D0080  38 A0 00 05 */	li r5, 5
/* 805D0084  38 C0 00 20 */	li r6, 0x20
/* 805D0088  39 00 00 C0 */	li r8, 0xc0
/* 805D008C  4B E1 F6 9D */	bl mSM_open_submenu_new2
/* 805D0090  38 00 00 02 */	li r0, 2
/* 805D0094  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 805D0098  48 00 00 4C */	b lbl_805D00E4
lbl_805D009C:
/* 805D009C  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805D00A0  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 805D00A4  C0 23 B0 D4 */	lfs f1, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805D00A8  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805D00AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D00B0  40 82 00 34 */	bne lbl_805D00E4
/* 805D00B4  80 04 04 90 */	lwz r0, 0x490(r4)
/* 805D00B8  2C 00 00 04 */	cmpwi r0, 4
/* 805D00BC  41 82 00 28 */	beq lbl_805D00E4
/* 805D00C0  80 FF 00 08 */	lwz r7, 8(r31)
/* 805D00C4  7F C3 F3 78 */	mr r3, r30
/* 805D00C8  38 80 00 0A */	li r4, 0xa
/* 805D00CC  38 A0 00 05 */	li r5, 5
/* 805D00D0  38 C0 00 00 */	li r6, 0
/* 805D00D4  39 00 00 C0 */	li r8, 0xc0
/* 805D00D8  4B E1 F6 51 */	bl mSM_open_submenu_new2
/* 805D00DC  38 00 00 02 */	li r0, 2
/* 805D00E0  B0 1F 00 1C */	sth r0, 0x1c(r31)
lbl_805D00E4:
/* 805D00E4  39 61 00 30 */	addi r11, r1, 0x30
/* 805D00E8  4B AC AE 39 */	bl func_8009AF20
/* 805D00EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D00F0  7C 08 03 A6 */	mtlr r0
/* 805D00F4  38 21 00 30 */	addi r1, r1, 0x30
/* 805D00F8  4E 80 00 20 */	blr 
