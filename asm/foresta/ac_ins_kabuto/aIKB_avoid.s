lbl_8059CD28:
/* 8059CD28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059CD2C  7C 08 02 A6 */	mflr r0
/* 8059CD30  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059CD34  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8059CD38  7C 7F 1B 78 */	mr r31, r3
/* 8059CD3C  4B FF FD 59 */	bl aIKB_anime_proc
/* 8059CD40  3C 80 80 65 */	lis r4, lit_487@ha /* 0x8064A124@ha */
/* 8059CD44  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064A128@ha */
/* 8059CD48  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8059CD4C  C0 24 A1 24 */	lfs f1, lit_487@l(r4)  /* 0x8064A124@l */
/* 8059CD50  C0 03 A1 28 */	lfs f0, lit_488@l(r3)  /* 0x8064A128@l */
/* 8059CD54  EC 42 00 72 */	fmuls f2, f2, f1
/* 8059CD58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8059CD5C  40 81 00 08 */	ble lbl_8059CD64
/* 8059CD60  FC 40 00 90 */	fmr f2, f0
lbl_8059CD64:
/* 8059CD64  D0 5F 00 78 */	stfs f2, 0x78(r31)
/* 8059CD68  7F E3 FB 78 */	mr r3, r31
/* 8059CD6C  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059CD70  38 80 00 25 */	li r4, 0x25
/* 8059CD74  48 09 11 D1 */	bl sAdo_OngenPos
/* 8059CD78  80 1F 02 18 */	lwz r0, 0x218(r31)
/* 8059CD7C  2C 00 00 02 */	cmpwi r0, 2
/* 8059CD80  41 82 00 7C */	beq lbl_8059CDFC
/* 8059CD84  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8059CD88  38 61 00 14 */	addi r3, r1, 0x14
/* 8059CD8C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8059CD90  38 81 00 10 */	addi r4, r1, 0x10
/* 8059CD94  38 A1 00 24 */	addi r5, r1, 0x24
/* 8059CD98  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8059CD9C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8059CDA0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8059CDA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8059CDA8  4B E0 85 C1 */	bl mFI_Wpos2UtNum
/* 8059CDAC  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8059CDB0  38 61 00 0C */	addi r3, r1, 0xc
/* 8059CDB4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059CDB8  38 81 00 08 */	addi r4, r1, 8
/* 8059CDBC  38 A1 00 18 */	addi r5, r1, 0x18
/* 8059CDC0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8059CDC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059CDC8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059CDCC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8059CDD0  4B E0 85 99 */	bl mFI_Wpos2UtNum
/* 8059CDD4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8059CDD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059CDDC  7C 03 00 00 */	cmpw r3, r0
/* 8059CDE0  40 82 00 14 */	bne lbl_8059CDF4
/* 8059CDE4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8059CDE8  80 01 00 08 */	lwz r0, 8(r1)
/* 8059CDEC  7C 03 00 00 */	cmpw r3, r0
/* 8059CDF0  41 82 00 0C */	beq lbl_8059CDFC
lbl_8059CDF4:
/* 8059CDF4  38 00 00 02 */	li r0, 2
/* 8059CDF8  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_8059CDFC:
/* 8059CDFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059CE00  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8059CE04  7C 08 03 A6 */	mtlr r0
/* 8059CE08  38 21 00 40 */	addi r1, r1, 0x40
/* 8059CE0C  4E 80 00 20 */	blr 
