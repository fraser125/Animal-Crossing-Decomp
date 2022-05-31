lbl_804B01D8:
/* 804B01D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804B01DC  7C 08 02 A6 */	mflr r0
/* 804B01E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804B01E4  39 61 00 60 */	addi r11, r1, 0x60
/* 804B01E8  4B BE AC D5 */	bl func_8009AEBC
/* 804B01EC  3C C0 80 69 */	lis r6, BI_chk_pos@ha /* 0x8069276C@ha */
/* 804B01F0  7C 7A 1B 78 */	mr r26, r3
/* 804B01F4  7C 9B 23 78 */	mr r27, r4
/* 804B01F8  7C BC 2B 78 */	mr r28, r5
/* 804B01FC  3B E6 27 6C */	addi r31, r6, BI_chk_pos@l /* 0x8069276C@l */
/* 804B0200  3B C0 00 09 */	li r30, 9
/* 804B0204  3B 20 00 48 */	li r25, 0x48
/* 804B0208  3B A0 00 00 */	li r29, 0
/* 804B020C  48 00 01 00 */	b lbl_804B030C
lbl_804B0210:
/* 804B0210  3B 39 FF F8 */	addi r25, r25, -8
/* 804B0214  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804B0218  7C 7F CA 14 */	add r3, r31, r25
/* 804B021C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804B0220  C0 23 00 00 */	lfs f1, 0(r3)
/* 804B0224  3B DE FF FF */	addi r30, r30, -1
/* 804B0228  C0 03 00 04 */	lfs f0, 4(r3)
/* 804B022C  38 61 00 20 */	addi r3, r1, 0x20
/* 804B0230  EC 22 08 2A */	fadds f1, f2, f1
/* 804B0234  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804B0238  C0 3A 00 08 */	lfs f1, 8(r26)
/* 804B023C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 804B0240  EC 01 00 2A */	fadds f0, f1, f0
/* 804B0244  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B0248  90 81 00 20 */	stw r4, 0x20(r1)
/* 804B024C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B0250  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B0254  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B0258  4B EF 71 D9 */	bl mFI_GetUnitFG
/* 804B025C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804B0260  7C 77 1B 78 */	mr r23, r3
/* 804B0264  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804B0268  38 61 00 14 */	addi r3, r1, 0x14
/* 804B026C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B0270  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804B0274  C0 38 00 00 */	lfs f1, 0(r24)
/* 804B0278  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B027C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B0280  4B ED F7 19 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B0284  28 17 00 00 */	cmplwi r23, 0
/* 804B0288  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804B028C  41 82 00 88 */	beq lbl_804B0314
/* 804B0290  A0 77 00 00 */	lhz r3, 0(r23)
/* 804B0294  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804B0298  7C 03 00 40 */	cmplw r3, r0
/* 804B029C  40 82 00 78 */	bne lbl_804B0314
/* 804B02A0  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80645FF0@ha */
/* 804B02A4  FC 60 08 18 */	frsp f3, f1
/* 804B02A8  C0 5C 00 04 */	lfs f2, 4(r28)
/* 804B02AC  C0 23 5F F0 */	lfs f1, lit_633@l(r3)  /* 0x80645FF0@l */
/* 804B02B0  EC 01 10 2A */	fadds f0, f1, f2
/* 804B02B4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B02B8  4C 40 13 82 */	cror 2, 0, 2
/* 804B02BC  40 82 00 58 */	bne lbl_804B0314
/* 804B02C0  EC 02 08 28 */	fsubs f0, f2, f1
/* 804B02C4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B02C8  4C 41 13 82 */	cror 2, 1, 2
/* 804B02CC  40 82 00 48 */	bne lbl_804B0314
/* 804B02D0  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804B02D4  38 61 00 08 */	addi r3, r1, 8
/* 804B02D8  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804B02DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B02E0  90 A1 00 08 */	stw r5, 8(r1)
/* 804B02E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804B02E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B02EC  4B ED FB ED */	bl mCoBG_CheckPlace
/* 804B02F0  2C 03 00 00 */	cmpwi r3, 0
/* 804B02F4  41 82 00 20 */	beq lbl_804B0314
/* 804B02F8  7F 43 D3 78 */	mr r3, r26
/* 804B02FC  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B0300  4B F0 AB BD */	bl xyz_t_move
/* 804B0304  3B A0 00 01 */	li r29, 1
/* 804B0308  48 00 00 14 */	b lbl_804B031C
lbl_804B030C:
/* 804B030C  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B0310  3B 03 5F EC */	addi r24, r3, data_80645FEC@l /* 0x80645FEC@l */
lbl_804B0314:
/* 804B0314  2C 1E 00 00 */	cmpwi r30, 0
/* 804B0318  40 82 FE F8 */	bne lbl_804B0210
lbl_804B031C:
/* 804B031C  7F A3 EB 78 */	mr r3, r29
/* 804B0320  39 61 00 60 */	addi r11, r1, 0x60
/* 804B0324  4B BE AB E5 */	bl func_8009AF08
/* 804B0328  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B032C  7C 08 03 A6 */	mtlr r0
/* 804B0330  38 21 00 60 */	addi r1, r1, 0x60
/* 804B0334  4E 80 00 20 */	blr 
