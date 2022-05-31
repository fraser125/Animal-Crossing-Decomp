lbl_804DC998:
/* 804DC998  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804DC99C  7C 08 02 A6 */	mflr r0
/* 804DC9A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804DC9A4  39 61 00 60 */	addi r11, r1, 0x60
/* 804DC9A8  4B BB E5 29 */	bl func_8009AED0
/* 804DC9AC  7C 7D 1B 78 */	mr r29, r3
/* 804DC9B0  7C 9E 23 78 */	mr r30, r4
/* 804DC9B4  4B FF FE F1 */	bl Player_actor_reset_pitfall
/* 804DC9B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DC9BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DC9C0  3F E3 00 02 */	addis r31, r3, 2
/* 804DC9C4  80 7F 60 80 */	lwz r3, 0x6080(r31)
/* 804DC9C8  28 03 00 00 */	cmplwi r3, 0
/* 804DC9CC  41 82 01 90 */	beq lbl_804DCB5C
/* 804DC9D0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 804DC9D4  28 00 00 00 */	cmplwi r0, 0
/* 804DC9D8  41 82 01 84 */	beq lbl_804DCB5C
/* 804DC9DC  80 9D 0C F8 */	lwz r4, 0xcf8(r29)
/* 804DC9E0  38 00 00 00 */	li r0, 0
/* 804DC9E4  2C 04 00 00 */	cmpwi r4, 0
/* 804DC9E8  41 80 00 10 */	blt lbl_804DC9F8
/* 804DC9EC  2C 04 00 79 */	cmpwi r4, 0x79
/* 804DC9F0  40 80 00 08 */	bge lbl_804DC9F8
/* 804DC9F4  38 00 00 01 */	li r0, 1
lbl_804DC9F8:
/* 804DC9F8  2C 00 00 00 */	cmpwi r0, 0
/* 804DC9FC  41 82 01 60 */	beq lbl_804DCB5C
/* 804DCA00  3C 60 80 64 */	lis r3, data_4379@ha /* 0x80647A94@ha */
/* 804DCA04  38 63 7A 94 */	addi r3, r3, data_4379@l /* 0x80647A94@l */
/* 804DCA08  7C 03 20 AE */	lbzx r0, r3, r4
/* 804DCA0C  7C 00 07 75 */	extsb. r0, r0
/* 804DCA10  41 82 01 4C */	beq lbl_804DCB5C
/* 804DCA14  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 804DCA18  38 61 00 40 */	addi r3, r1, 0x40
/* 804DCA1C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804DCA20  38 81 00 34 */	addi r4, r1, 0x34
/* 804DCA24  90 A1 00 34 */	stw r5, 0x34(r1)
/* 804DCA28  90 01 00 38 */	stw r0, 0x38(r1)
/* 804DCA2C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804DCA30  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804DCA34  4B EC 8B 09 */	bl mFI_Wpos2UtCenterWpos
/* 804DCA38  2C 03 00 00 */	cmpwi r3, 0
/* 804DCA3C  41 82 01 20 */	beq lbl_804DCB5C
/* 804DCA40  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 804DCA44  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 804DCA48  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 804DCA4C  C0 9D 00 2C */	lfs f4, 0x2c(r29)
/* 804DCA50  4B F2 C2 ED */	bl Math3DLengthSquare2D
/* 804DCA54  3C 60 80 64 */	lis r3, lit_4413@ha /* 0x80647B10@ha */
/* 804DCA58  C0 03 7B 10 */	lfs f0, lit_4413@l(r3)  /* 0x80647B10@l */
/* 804DCA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DCA60  4C 40 13 82 */	cror 2, 0, 2
/* 804DCA64  40 82 00 F8 */	bne lbl_804DCB5C
/* 804DCA68  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 804DCA6C  38 61 00 28 */	addi r3, r1, 0x28
/* 804DCA70  80 81 00 44 */	lwz r4, 0x44(r1)
/* 804DCA74  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804DCA78  90 A1 00 28 */	stw r5, 0x28(r1)
/* 804DCA7C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 804DCA80  90 01 00 30 */	stw r0, 0x30(r1)
/* 804DCA84  4B EC A9 AD */	bl mFI_GetUnitFG
/* 804DCA88  28 03 00 00 */	cmplwi r3, 0
/* 804DCA8C  41 82 00 D0 */	beq lbl_804DCB5C
/* 804DCA90  A3 83 00 00 */	lhz r28, 0(r3)
/* 804DCA94  28 1C 00 2A */	cmplwi r28, 0x2a
/* 804DCA98  41 80 00 C4 */	blt lbl_804DCB5C
/* 804DCA9C  28 1C 00 42 */	cmplwi r28, 0x42
/* 804DCAA0  41 81 00 BC */	bgt lbl_804DCB5C
/* 804DCAA4  80 C1 00 40 */	lwz r6, 0x40(r1)
/* 804DCAA8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DCAAC  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 804DCAB0  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804DCAB4  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804DCAB8  38 61 00 1C */	addi r3, r1, 0x1c
/* 804DCABC  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804DCAC0  C0 24 00 00 */	lfs f1, 0(r4)
/* 804DCAC4  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804DCAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DCACC  4B EB 2E CD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804DCAD0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 804DCAD4  7F C3 F3 78 */	mr r3, r30
/* 804DCAD8  38 81 00 40 */	addi r4, r1, 0x40
/* 804DCADC  38 A0 00 1A */	li r5, 0x1a
/* 804DCAE0  48 02 4E ED */	bl func_805019CC
/* 804DCAE4  2C 03 00 00 */	cmpwi r3, 0
/* 804DCAE8  41 82 00 74 */	beq lbl_804DCB5C
/* 804DCAEC  80 E1 00 40 */	lwz r7, 0x40(r1)
/* 804DCAF0  38 61 00 0C */	addi r3, r1, 0xc
/* 804DCAF4  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 804DCAF8  38 81 00 08 */	addi r4, r1, 8
/* 804DCAFC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804DCB00  38 A1 00 10 */	addi r5, r1, 0x10
/* 804DCB04  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804DCB08  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804DCB0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DCB10  4B EC 88 59 */	bl mFI_Wpos2UtNum
/* 804DCB14  2C 03 00 00 */	cmpwi r3, 0
/* 804DCB18  41 82 00 44 */	beq lbl_804DCB5C
/* 804DCB1C  80 BF 60 80 */	lwz r5, 0x6080(r31)
/* 804DCB20  7F 83 E3 78 */	mr r3, r28
/* 804DCB24  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804DCB28  38 C0 00 00 */	li r6, 0
/* 804DCB2C  81 85 00 18 */	lwz r12, 0x18(r5)
/* 804DCB30  80 A1 00 08 */	lwz r5, 8(r1)
/* 804DCB34  7D 89 03 A6 */	mtctr r12
/* 804DCB38  4E 80 04 21 */	bctrl 
/* 804DCB3C  80 81 00 40 */	lwz r4, 0x40(r1)
/* 804DCB40  38 00 00 01 */	li r0, 1
/* 804DCB44  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804DCB48  90 9D 11 E4 */	stw r4, 0x11e4(r29)
/* 804DCB4C  90 7D 11 E8 */	stw r3, 0x11e8(r29)
/* 804DCB50  80 61 00 48 */	lwz r3, 0x48(r1)
/* 804DCB54  90 7D 11 EC */	stw r3, 0x11ec(r29)
/* 804DCB58  90 1D 11 F0 */	stw r0, 0x11f0(r29)
lbl_804DCB5C:
/* 804DCB5C  39 61 00 60 */	addi r11, r1, 0x60
/* 804DCB60  4B BB E3 BD */	bl func_8009AF1C
/* 804DCB64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804DCB68  7C 08 03 A6 */	mtlr r0
/* 804DCB6C  38 21 00 60 */	addi r1, r1, 0x60
/* 804DCB70  4E 80 00 20 */	blr 
