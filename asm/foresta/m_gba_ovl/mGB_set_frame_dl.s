lbl_805DC8EC:
/* 805DC8EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DC8F0  7C 08 02 A6 */	mflr r0
/* 805DC8F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DC8F8  39 61 00 40 */	addi r11, r1, 0x40
/* 805DC8FC  4B AB E5 C9 */	bl func_8009AEC4
/* 805DC900  3C E0 80 65 */	lis r7, lit_519@ha /* 0x8064B280@ha */
/* 805DC904  3C C0 80 65 */	lis r6, lit_520@ha /* 0x8064B284@ha */
/* 805DC908  C0 27 B2 80 */	lfs f1, lit_519@l(r7)  /* 0x8064B280@l */
/* 805DC90C  7C 7A 1B 78 */	mr r26, r3
/* 805DC910  83 E4 00 00 */	lwz r31, 0(r4)
/* 805DC914  7C 9B 23 78 */	mr r27, r4
/* 805DC918  FC 40 08 90 */	fmr f2, f1
/* 805DC91C  C0 66 B2 84 */	lfs f3, lit_520@l(r6)  /* 0x8064B284@l */
/* 805DC920  7C BC 2B 78 */	mr r28, r5
/* 805DC924  38 60 00 00 */	li r3, 0
/* 805DC928  4B E2 FA C5 */	bl Matrix_scale
/* 805DC92C  3C 60 80 65 */	lis r3, lit_521@ha /* 0x8064B288@ha */
/* 805DC930  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 805DC934  C0 63 B2 88 */	lfs f3, lit_521@l(r3)  /* 0x8064B288@l */
/* 805DC938  38 60 00 01 */	li r3, 1
/* 805DC93C  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 805DC940  4B E2 F9 C1 */	bl Matrix_translate
/* 805DC944  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DC948  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805DC94C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DC950  7F E3 FB 78 */	mr r3, r31
/* 805DC954  90 1D 00 00 */	stw r0, 0(r29)
/* 805DC958  4B E3 0A 7D */	bl _Matrix_to_Mtx_new
/* 805DC95C  90 7D 00 04 */	stw r3, 4(r29)
/* 805DC960  3C 00 DE 00 */	lis r0, 0xde00
/* 805DC964  3C 80 80 B1 */	lis r4, needlework_before_model@ha /* 0x80B0F400@ha */
/* 805DC968  3C 60 80 65 */	lis r3, lit_629@ha /* 0x8064B294@ha */
/* 805DC96C  90 1D 00 08 */	stw r0, 8(r29)
/* 805DC970  39 43 B2 94 */	addi r10, r3, lit_629@l /* 0x8064B294@l */
/* 805DC974  38 84 F4 00 */	addi r4, r4, needlework_before_model@l /* 0x80B0F400@l */
/* 805DC978  3C 60 80 65 */	lis r3, lit_628@ha /* 0x8064B290@ha */
/* 805DC97C  90 9D 00 0C */	stw r4, 0xc(r29)
/* 805DC980  39 63 B2 90 */	addi r11, r3, lit_628@l /* 0x8064B290@l */
/* 805DC984  3C 60 80 65 */	lis r3, lit_630@ha /* 0x8064B298@ha */
/* 805DC988  3D 00 80 A7 */	lis r8, gba_win_w_before_model@ha /* 0x80A73EA0@ha */
/* 805DC98C  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 805DC990  39 23 B2 98 */	addi r9, r3, lit_630@l /* 0x8064B298@l */
/* 805DC994  3C E0 80 A7 */	lis r7, gba_win_w1T_model@ha /* 0x80A740B8@ha */
/* 805DC998  3C C0 80 A7 */	lis r6, gba_win_w2T_model@ha /* 0x80A740F0@ha */
/* 805DC99C  C0 24 09 34 */	lfs f1, 0x934(r4)
/* 805DC9A0  3C A0 80 A7 */	lis r5, gba_win_w3T_model@ha /* 0x80A74128@ha */
/* 805DC9A4  C0 04 09 38 */	lfs f0, 0x938(r4)
/* 805DC9A8  3C 80 80 A7 */	lis r4, gba_win_w4T_model@ha /* 0x80A74160@ha */
/* 805DC9AC  FC 20 08 50 */	fneg f1, f1
/* 805DC9B0  C0 6A 00 00 */	lfs f3, 0(r10)
/* 805DC9B4  FC 00 00 50 */	fneg f0, f0
/* 805DC9B8  3C 60 80 A7 */	lis r3, gba_win_w5T_model@ha /* 0x80A74198@ha */
/* 805DC9BC  C0 8B 00 00 */	lfs f4, 0(r11)
/* 805DC9C0  39 08 3E A0 */	addi r8, r8, gba_win_w_before_model@l /* 0x80A73EA0@l */
/* 805DC9C4  EC 43 00 72 */	fmuls f2, f3, f1
/* 805DC9C8  90 1D 00 10 */	stw r0, 0x10(r29)
/* 805DC9CC  EC 03 00 32 */	fmuls f0, f3, f0
/* 805DC9D0  C0 29 00 00 */	lfs f1, 0(r9)
/* 805DC9D4  91 1D 00 14 */	stw r8, 0x14(r29)
/* 805DC9D8  38 E7 40 B8 */	addi r7, r7, gba_win_w1T_model@l /* 0x80A740B8@l */
/* 805DC9DC  EC 01 00 2A */	fadds f0, f1, f0
/* 805DC9E0  38 C6 40 F0 */	addi r6, r6, gba_win_w2T_model@l /* 0x80A740F0@l */
/* 805DC9E4  EC 44 10 2A */	fadds f2, f4, f2
/* 805DC9E8  38 A5 41 28 */	addi r5, r5, gba_win_w3T_model@l /* 0x80A74128@l */
/* 805DC9EC  38 84 41 60 */	addi r4, r4, gba_win_w4T_model@l /* 0x80A74160@l */
/* 805DC9F0  38 63 41 98 */	addi r3, r3, gba_win_w5T_model@l /* 0x80A74198@l */
/* 805DC9F4  FC 20 10 1E */	fctiwz f1, f2
/* 805DC9F8  FC 00 00 1E */	fctiwz f0, f0
/* 805DC9FC  D8 21 00 08 */	stfd f1, 8(r1)
/* 805DCA00  81 01 00 0C */	lwz r8, 0xc(r1)
/* 805DCA04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805DCA08  55 08 52 2A */	rlwinm r8, r8, 0xa, 8, 0x15
/* 805DCA0C  65 09 F2 00 */	oris r9, r8, 0xf200
/* 805DCA10  81 41 00 14 */	lwz r10, 0x14(r1)
/* 805DCA14  61 29 00 1F */	ori r9, r9, 0x1f
/* 805DCA18  55 48 52 2A */	rlwinm r8, r10, 0xa, 8, 0x15
/* 805DCA1C  91 3D 00 18 */	stw r9, 0x18(r29)
/* 805DCA20  65 08 80 00 */	oris r8, r8, 0x8000
/* 805DCA24  61 08 00 1F */	ori r8, r8, 0x1f
/* 805DCA28  91 1D 00 1C */	stw r8, 0x1c(r29)
/* 805DCA2C  90 1D 00 20 */	stw r0, 0x20(r29)
/* 805DCA30  90 FD 00 24 */	stw r7, 0x24(r29)
/* 805DCA34  90 1D 00 28 */	stw r0, 0x28(r29)
/* 805DCA38  90 DD 00 2C */	stw r6, 0x2c(r29)
/* 805DCA3C  90 1D 00 30 */	stw r0, 0x30(r29)
/* 805DCA40  90 BD 00 34 */	stw r5, 0x34(r29)
/* 805DCA44  90 1D 00 38 */	stw r0, 0x38(r29)
/* 805DCA48  90 9D 00 3C */	stw r4, 0x3c(r29)
/* 805DCA4C  90 1D 00 40 */	stw r0, 0x40(r29)
/* 805DCA50  90 7D 00 44 */	stw r3, 0x44(r29)
/* 805DCA54  3C 60 80 A7 */	lis r3, gba_win_w6T_model@ha /* 0x80A741D0@ha */
/* 805DCA58  90 1D 00 48 */	stw r0, 0x48(r29)
/* 805DCA5C  38 83 41 D0 */	addi r4, r3, gba_win_w6T_model@l /* 0x80A741D0@l */
/* 805DCA60  3C 60 80 A7 */	lis r3, gba_win_w7T_model@ha /* 0x80A74208@ha */
/* 805DCA64  90 9D 00 4C */	stw r4, 0x4c(r29)
/* 805DCA68  3D 20 80 A7 */	lis r9, gba_win_w8T_model@ha /* 0x80A74240@ha */
/* 805DCA6C  3D 00 80 A7 */	lis r8, gba_win_w9T_model@ha /* 0x80A74278@ha */
/* 805DCA70  3C E0 80 A7 */	lis r7, gba_win_w10T_model@ha /* 0x80A742B0@ha */
/* 805DCA74  90 1D 00 50 */	stw r0, 0x50(r29)
/* 805DCA78  38 63 42 08 */	addi r3, r3, gba_win_w7T_model@l /* 0x80A74208@l */
/* 805DCA7C  3C C0 80 A7 */	lis r6, gba_win_w11_model@ha /* 0x80A73ED8@ha */
/* 805DCA80  3C A0 80 A7 */	lis r5, gba_win_ueT_model@ha /* 0x80A742E8@ha */
/* 805DCA84  90 7D 00 54 */	stw r3, 0x54(r29)
/* 805DCA88  3C 80 80 A7 */	lis r4, gba_win_waku_model@ha /* 0x80A73F10@ha */
/* 805DCA8C  3C 60 80 A7 */	lis r3, gba_win_mb_before_model@ha /* 0x80A73F78@ha */
/* 805DCA90  39 29 42 40 */	addi r9, r9, gba_win_w8T_model@l /* 0x80A74240@l */
/* 805DCA94  90 1D 00 58 */	stw r0, 0x58(r29)
/* 805DCA98  39 08 42 78 */	addi r8, r8, gba_win_w9T_model@l /* 0x80A74278@l */
/* 805DCA9C  38 E7 42 B0 */	addi r7, r7, gba_win_w10T_model@l /* 0x80A742B0@l */
/* 805DCAA0  38 C6 3E D8 */	addi r6, r6, gba_win_w11_model@l /* 0x80A73ED8@l */
/* 805DCAA4  91 3D 00 5C */	stw r9, 0x5c(r29)
/* 805DCAA8  38 A5 42 E8 */	addi r5, r5, gba_win_ueT_model@l /* 0x80A742E8@l */
/* 805DCAAC  38 84 3F 10 */	addi r4, r4, gba_win_waku_model@l /* 0x80A73F10@l */
/* 805DCAB0  38 63 3F 78 */	addi r3, r3, gba_win_mb_before_model@l /* 0x80A73F78@l */
/* 805DCAB4  90 1D 00 60 */	stw r0, 0x60(r29)
/* 805DCAB8  3B C0 00 00 */	li r30, 0
/* 805DCABC  3B 20 00 00 */	li r25, 0
/* 805DCAC0  91 1D 00 64 */	stw r8, 0x64(r29)
/* 805DCAC4  90 1D 00 68 */	stw r0, 0x68(r29)
/* 805DCAC8  90 FD 00 6C */	stw r7, 0x6c(r29)
/* 805DCACC  90 1D 00 70 */	stw r0, 0x70(r29)
/* 805DCAD0  90 DD 00 74 */	stw r6, 0x74(r29)
/* 805DCAD4  90 1D 00 78 */	stw r0, 0x78(r29)
/* 805DCAD8  90 BD 00 7C */	stw r5, 0x7c(r29)
/* 805DCADC  90 1D 00 80 */	stw r0, 0x80(r29)
/* 805DCAE0  90 9D 00 84 */	stw r4, 0x84(r29)
/* 805DCAE4  90 1D 00 88 */	stw r0, 0x88(r29)
/* 805DCAE8  90 7D 00 8C */	stw r3, 0x8c(r29)
/* 805DCAEC  3B BD 00 90 */	addi r29, r29, 0x90
lbl_805DCAF0:
/* 805DCAF0  7F 43 D3 78 */	mr r3, r26
/* 805DCAF4  7F C4 F3 78 */	mr r4, r30
/* 805DCAF8  4B FF F7 FD */	bl mGB_check_hide_flg
/* 805DCAFC  2C 03 00 00 */	cmpwi r3, 0
/* 805DCB00  40 82 00 64 */	bne lbl_805DCB64
/* 805DCB04  3C 80 F0 8F */	lis r4, 0xF08F /* 0xF08F4010@ha */
/* 805DCB08  7F 43 D3 78 */	mr r3, r26
/* 805DCB0C  38 04 40 10 */	addi r0, r4, 0x4010 /* 0xF08F4010@l */
/* 805DCB10  7F C4 F3 78 */	mr r4, r30
/* 805DCB14  90 1D 00 00 */	stw r0, 0(r29)
/* 805DCB18  4B FF F9 41 */	bl mGB_get_image_pal
/* 805DCB1C  90 7D 00 04 */	stw r3, 4(r29)
/* 805DCB20  3C 60 FD 44 */	lis r3, 0xFD44 /* 0xFD441C1F@ha */
/* 805DCB24  38 03 1C 1F */	addi r0, r3, 0x1C1F /* 0xFD441C1F@l */
/* 805DCB28  7F 43 D3 78 */	mr r3, r26
/* 805DCB2C  90 1D 00 08 */	stw r0, 8(r29)
/* 805DCB30  7F C4 F3 78 */	mr r4, r30
/* 805DCB34  4B FF F9 75 */	bl mGB_get_image_texture
/* 805DCB38  3C 80 D2 F1 */	lis r4, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805DCB3C  90 7D 00 0C */	stw r3, 0xc(r29)
/* 805DCB40  38 04 FA 00 */	addi r0, r4, 0xFA00 /* 0xD2F0FA00@l */
/* 805DCB44  3C 60 80 6D */	lis r3, gfx_table@ha /* 0x806CCF7C@ha */
/* 805DCB48  90 1D 00 10 */	stw r0, 0x10(r29)
/* 805DCB4C  3C 00 DE 00 */	lis r0, 0xde00
/* 805DCB50  38 63 CF 7C */	addi r3, r3, gfx_table@l /* 0x806CCF7C@l */
/* 805DCB54  90 1D 00 18 */	stw r0, 0x18(r29)
/* 805DCB58  7C 03 C8 2E */	lwzx r0, r3, r25
/* 805DCB5C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 805DCB60  3B BD 00 20 */	addi r29, r29, 0x20
lbl_805DCB64:
/* 805DCB64  3B DE 00 01 */	addi r30, r30, 1
/* 805DCB68  3B 39 00 04 */	addi r25, r25, 4
/* 805DCB6C  2C 1E 00 08 */	cmpwi r30, 8
/* 805DCB70  41 80 FF 80 */	blt lbl_805DCAF0
/* 805DCB74  3C 00 DE 00 */	lis r0, 0xde00
/* 805DCB78  3C 60 80 A7 */	lis r3, gba_win_f_model@ha /* 0x80A74050@ha */
/* 805DCB7C  90 1D 00 00 */	stw r0, 0(r29)
/* 805DCB80  38 03 40 50 */	addi r0, r3, gba_win_f_model@l /* 0x80A74050@l */
/* 805DCB84  90 1D 00 04 */	stw r0, 4(r29)
/* 805DCB88  3B BD 00 08 */	addi r29, r29, 8
/* 805DCB8C  80 1C 00 04 */	lwz r0, 4(r28)
/* 805DCB90  2C 00 00 02 */	cmpwi r0, 2
/* 805DCB94  41 82 00 0C */	beq lbl_805DCBA0
/* 805DCB98  2C 00 00 01 */	cmpwi r0, 1
/* 805DCB9C  40 82 00 1C */	bne lbl_805DCBB8
lbl_805DCBA0:
/* 805DCBA0  3C 00 DE 00 */	lis r0, 0xde00
/* 805DCBA4  3C 60 80 A7 */	lis r3, agb_win_yajirushiT_model@ha /* 0x80A70B80@ha */
/* 805DCBA8  90 1D 00 00 */	stw r0, 0(r29)
/* 805DCBAC  38 03 0B 80 */	addi r0, r3, agb_win_yajirushiT_model@l /* 0x80A70B80@l */
/* 805DCBB0  90 1D 00 04 */	stw r0, 4(r29)
/* 805DCBB4  3B BD 00 08 */	addi r29, r29, 8
lbl_805DCBB8:
/* 805DCBB8  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 805DCBBC  7F 63 DB 78 */	mr r3, r27
/* 805DCBC0  48 00 D6 85 */	bl mNW_draw_sav_mark_before
/* 805DCBC4  3B A0 00 00 */	li r29, 0
/* 805DCBC8  3B E0 00 00 */	li r31, 0
lbl_805DCBCC:
/* 805DCBCC  7C 1F 00 D0 */	neg r0, r31
/* 805DCBD0  3B C0 00 00 */	li r30, 0
/* 805DCBD4  1C 60 00 1F */	mulli r3, r0, 0x1f
/* 805DCBD8  3B 80 00 00 */	li r28, 0
/* 805DCBDC  3B 23 00 06 */	addi r25, r3, 6
lbl_805DCBE0:
/* 805DCBE0  7F 43 D3 78 */	mr r3, r26
/* 805DCBE4  7F A4 EB 78 */	mr r4, r29
/* 805DCBE8  4B FF F7 4D */	bl mGB_check_mark_flg
/* 805DCBEC  2C 03 00 00 */	cmpwi r3, 0
/* 805DCBF0  41 82 00 1C */	beq lbl_805DCC0C
/* 805DCBF4  4B E2 F5 E1 */	bl Matrix_push
/* 805DCBF8  7F 63 DB 78 */	mr r3, r27
/* 805DCBFC  7F 25 CB 78 */	mr r5, r25
/* 805DCC00  38 9C FF 9F */	addi r4, r28, -97
/* 805DCC04  48 00 D6 E1 */	bl mNW_draw_sav_mark
/* 805DCC08  4B E2 F6 0D */	bl Matrix_pull
lbl_805DCC0C:
/* 805DCC0C  3B DE 00 01 */	addi r30, r30, 1
/* 805DCC10  3B BD 00 01 */	addi r29, r29, 1
/* 805DCC14  2C 1E 00 04 */	cmpwi r30, 4
/* 805DCC18  3B 9C 00 1E */	addi r28, r28, 0x1e
/* 805DCC1C  41 80 FF C4 */	blt lbl_805DCBE0
/* 805DCC20  3B FF 00 01 */	addi r31, r31, 1
/* 805DCC24  2C 1F 00 02 */	cmpwi r31, 2
/* 805DCC28  41 80 FF A4 */	blt lbl_805DCBCC
/* 805DCC2C  39 61 00 40 */	addi r11, r1, 0x40
/* 805DCC30  4B AB E2 E1 */	bl func_8009AF10
/* 805DCC34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DCC38  7C 08 03 A6 */	mtlr r0
/* 805DCC3C  38 21 00 40 */	addi r1, r1, 0x40
/* 805DCC40  4E 80 00 20 */	blr 
