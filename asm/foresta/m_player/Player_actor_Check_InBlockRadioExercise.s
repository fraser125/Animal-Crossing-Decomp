lbl_804DEB04:
/* 804DEB04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DEB08  7C 08 02 A6 */	mflr r0
/* 804DEB0C  38 80 00 10 */	li r4, 0x10
/* 804DEB10  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DEB14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804DEB18  7C 7F 1B 78 */	mr r31, r3
/* 804DEB1C  38 60 00 23 */	li r3, 0x23
/* 804DEB20  4B EB EF E1 */	bl mEv_check_status
/* 804DEB24  2C 03 00 00 */	cmpwi r3, 0
/* 804DEB28  40 82 00 18 */	bne lbl_804DEB40
/* 804DEB2C  38 60 00 0D */	li r3, 0xd
/* 804DEB30  38 80 00 10 */	li r4, 0x10
/* 804DEB34  4B EB EF CD */	bl mEv_check_status
/* 804DEB38  2C 03 00 00 */	cmpwi r3, 0
/* 804DEB3C  41 82 00 74 */	beq lbl_804DEBB0
lbl_804DEB40:
/* 804DEB40  38 61 00 14 */	addi r3, r1, 0x14
/* 804DEB44  38 81 00 10 */	addi r4, r1, 0x10
/* 804DEB48  38 A0 00 04 */	li r5, 4
/* 804DEB4C  4B EC 78 B5 */	bl mFI_BlockKind2BkNum
/* 804DEB50  2C 03 00 00 */	cmpwi r3, 0
/* 804DEB54  41 82 00 88 */	beq lbl_804DEBDC
/* 804DEB58  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804DEB5C  38 61 00 0C */	addi r3, r1, 0xc
/* 804DEB60  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804DEB64  38 81 00 08 */	addi r4, r1, 8
/* 804DEB68  38 A1 00 18 */	addi r5, r1, 0x18
/* 804DEB6C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804DEB70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DEB74  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804DEB78  90 01 00 20 */	stw r0, 0x20(r1)
/* 804DEB7C  4B EC 6B E5 */	bl mFI_Wpos2BlockNum
/* 804DEB80  2C 03 00 00 */	cmpwi r3, 0
/* 804DEB84  41 82 00 58 */	beq lbl_804DEBDC
/* 804DEB88  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804DEB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEB90  7C 03 00 00 */	cmpw r3, r0
/* 804DEB94  40 82 00 48 */	bne lbl_804DEBDC
/* 804DEB98  80 61 00 08 */	lwz r3, 8(r1)
/* 804DEB9C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804DEBA0  7C 03 00 00 */	cmpw r3, r0
/* 804DEBA4  40 82 00 38 */	bne lbl_804DEBDC
/* 804DEBA8  38 60 00 01 */	li r3, 1
/* 804DEBAC  48 00 00 34 */	b lbl_804DEBE0
lbl_804DEBB0:
/* 804DEBB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DEBB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DEBB8  3C 63 00 02 */	addis r3, r3, 2
/* 804DEBBC  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 804DEBC0  2C 00 00 00 */	cmpwi r0, 0
/* 804DEBC4  41 82 00 18 */	beq lbl_804DEBDC
/* 804DEBC8  4B F9 51 91 */	bl aMR_RadioBgmNow
/* 804DEBCC  2C 03 00 00 */	cmpwi r3, 0
/* 804DEBD0  41 82 00 0C */	beq lbl_804DEBDC
/* 804DEBD4  38 60 00 01 */	li r3, 1
/* 804DEBD8  48 00 00 08 */	b lbl_804DEBE0
lbl_804DEBDC:
/* 804DEBDC  38 60 00 00 */	li r3, 0
lbl_804DEBE0:
/* 804DEBE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DEBE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804DEBE8  7C 08 03 A6 */	mtlr r0
/* 804DEBEC  38 21 00 30 */	addi r1, r1, 0x30
/* 804DEBF0  4E 80 00 20 */	blr 
