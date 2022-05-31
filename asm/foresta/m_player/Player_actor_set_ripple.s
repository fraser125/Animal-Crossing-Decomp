lbl_804DCCB4:
/* 804DCCB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DCCB8  7C 08 02 A6 */	mflr r0
/* 804DCCBC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804DCCC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DCCC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804DCCC8  7C 7F 1B 78 */	mr r31, r3
/* 804DCCCC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804DCCD0  3C C3 00 02 */	addis r6, r3, 2
/* 804DCCD4  80 06 60 9C */	lwz r0, 0x609c(r6)
/* 804DCCD8  28 00 00 00 */	cmplwi r0, 0
/* 804DCCDC  41 82 00 F8 */	beq lbl_804DCDD4
/* 804DCCE0  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804DCCE4  3C 60 80 64 */	lis r3, lit_4467@ha /* 0x80647B18@ha */
/* 804DCCE8  C0 5F 11 F4 */	lfs f2, 0x11f4(r31)
/* 804DCCEC  C0 25 65 64 */	lfs f1, lit_603@l(r5)  /* 0x80646564@l */
/* 804DCCF0  C0 03 7B 18 */	lfs f0, lit_4467@l(r3)  /* 0x80647B18@l */
/* 804DCCF4  EC 22 08 2A */	fadds f1, f2, f1
/* 804DCCF8  D0 3F 11 F4 */	stfs f1, 0x11f4(r31)
/* 804DCCFC  C0 3F 11 F4 */	lfs f1, 0x11f4(r31)
/* 804DCD00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DCD04  4C 41 13 82 */	cror 2, 1, 2
/* 804DCD08  40 82 00 CC */	bne lbl_804DCDD4
/* 804DCD0C  88 1F 11 F8 */	lbz r0, 0x11f8(r31)
/* 804DCD10  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 804DCD14  7C 00 07 75 */	extsb. r0, r0
/* 804DCD18  54 60 AE BE */	rlwinm r0, r3, 0x15, 0x1a, 0x1f
/* 804DCD1C  7C 09 07 34 */	extsh r9, r0
/* 804DCD20  41 82 00 58 */	beq lbl_804DCD78
/* 804DCD24  80 BF 10 E8 */	lwz r5, 0x10e8(r31)
/* 804DCD28  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804DCD2C  80 1F 10 EC */	lwz r0, 0x10ec(r31)
/* 804DCD30  7C 87 23 78 */	mr r7, r4
/* 804DCD34  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804DCD38  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 804DCD3C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804DCD40  38 81 00 14 */	addi r4, r1, 0x14
/* 804DCD44  38 60 00 60 */	li r3, 0x60
/* 804DCD48  38 A0 00 02 */	li r5, 2
/* 804DCD4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DCD50  39 40 00 00 */	li r10, 0
/* 804DCD54  80 1F 10 F0 */	lwz r0, 0x10f0(r31)
/* 804DCD58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DCD5C  81 86 00 00 */	lwz r12, 0(r6)
/* 804DCD60  A8 DF 11 02 */	lha r6, 0x1102(r31)
/* 804DCD64  7D 89 03 A6 */	mtctr r12
/* 804DCD68  4E 80 04 21 */	bctrl 
/* 804DCD6C  38 00 00 00 */	li r0, 0
/* 804DCD70  98 1F 11 F8 */	stb r0, 0x11f8(r31)
/* 804DCD74  48 00 00 54 */	b lbl_804DCDC8
lbl_804DCD78:
/* 804DCD78  80 BF 10 F4 */	lwz r5, 0x10f4(r31)
/* 804DCD7C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804DCD80  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 804DCD84  7C 87 23 78 */	mr r7, r4
/* 804DCD88  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804DCD8C  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 804DCD90  90 A1 00 08 */	stw r5, 8(r1)
/* 804DCD94  38 81 00 08 */	addi r4, r1, 8
/* 804DCD98  38 60 00 60 */	li r3, 0x60
/* 804DCD9C  38 A0 00 02 */	li r5, 2
/* 804DCDA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DCDA4  39 40 00 00 */	li r10, 0
/* 804DCDA8  80 1F 10 FC */	lwz r0, 0x10fc(r31)
/* 804DCDAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DCDB0  81 86 00 00 */	lwz r12, 0(r6)
/* 804DCDB4  A8 DF 11 08 */	lha r6, 0x1108(r31)
/* 804DCDB8  7D 89 03 A6 */	mtctr r12
/* 804DCDBC  4E 80 04 21 */	bctrl 
/* 804DCDC0  38 00 00 01 */	li r0, 1
/* 804DCDC4  98 1F 11 F8 */	stb r0, 0x11f8(r31)
lbl_804DCDC8:
/* 804DCDC8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DCDCC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DCDD0  D0 1F 11 F4 */	stfs f0, 0x11f4(r31)
lbl_804DCDD4:
/* 804DCDD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DCDD8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804DCDDC  7C 08 03 A6 */	mtlr r0
/* 804DCDE0  38 21 00 30 */	addi r1, r1, 0x30
/* 804DCDE4  4E 80 00 20 */	blr 
