lbl_805DCC44:
/* 805DCC44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DCC48  7C 08 02 A6 */	mflr r0
/* 805DCC4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DCC50  39 61 00 30 */	addi r11, r1, 0x30
/* 805DCC54  4B AB E2 79 */	bl func_8009AECC
/* 805DCC58  3C E0 80 65 */	lis r7, lit_519@ha /* 0x8064B280@ha */
/* 805DCC5C  3C C0 80 65 */	lis r6, lit_520@ha /* 0x8064B284@ha */
/* 805DCC60  C0 27 B2 80 */	lfs f1, lit_519@l(r7)  /* 0x8064B280@l */
/* 805DCC64  7C 7C 1B 78 */	mr r28, r3
/* 805DCC68  83 E4 00 00 */	lwz r31, 0(r4)
/* 805DCC6C  7C BD 2B 78 */	mr r29, r5
/* 805DCC70  FC 40 08 90 */	fmr f2, f1
/* 805DCC74  C0 66 B2 84 */	lfs f3, lit_520@l(r6)  /* 0x8064B284@l */
/* 805DCC78  38 60 00 00 */	li r3, 0
/* 805DCC7C  4B E2 F7 71 */	bl Matrix_scale
/* 805DCC80  3C 60 80 65 */	lis r3, lit_521@ha /* 0x8064B288@ha */
/* 805DCC84  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 805DCC88  C0 63 B2 88 */	lfs f3, lit_521@l(r3)  /* 0x8064B288@l */
/* 805DCC8C  38 60 00 01 */	li r3, 1
/* 805DCC90  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 805DCC94  4B E2 F6 6D */	bl Matrix_translate
/* 805DCC98  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805DCC9C  3C 00 DE 00 */	lis r0, 0xde00
/* 805DCCA0  3C 80 80 A3 */	lis r4, cad_win_mode@ha /* 0x80A31D30@ha */
/* 805DCCA4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DCCA8  90 1E 00 00 */	stw r0, 0(r30)
/* 805DCCAC  38 84 1D 30 */	addi r4, r4, cad_win_mode@l /* 0x80A31D30@l */
/* 805DCCB0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DCCB4  7F E3 FB 78 */	mr r3, r31
/* 805DCCB8  90 9E 00 04 */	stw r4, 4(r30)
/* 805DCCBC  94 1E 00 08 */	stwu r0, 8(r30)
/* 805DCCC0  4B E3 07 15 */	bl _Matrix_to_Mtx_new
/* 805DCCC4  90 7E 00 04 */	stw r3, 4(r30)
/* 805DCCC8  3C 60 80 65 */	lis r3, lit_629@ha /* 0x8064B294@ha */
/* 805DCCCC  38 83 B2 94 */	addi r4, r3, lit_629@l /* 0x8064B294@l */
/* 805DCCD0  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805DCCD4  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805DCCD8  C0 44 00 00 */	lfs f2, 0(r4)
/* 805DCCDC  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805DCCE0  C0 05 09 34 */	lfs f0, 0x934(r5)
/* 805DCCE4  7F 83 E3 78 */	mr r3, r28
/* 805DCCE8  C0 25 09 38 */	lfs f1, 0x938(r5)
/* 805DCCEC  38 80 00 00 */	li r4, 0
/* 805DCCF0  FC 00 00 50 */	fneg f0, f0
/* 805DCCF4  FC 20 08 50 */	fneg f1, f1
/* 805DCCF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DCCFC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805DCD00  FC 00 00 1E */	fctiwz f0, f0
/* 805DCD04  FC 20 08 1E */	fctiwz f1, f1
/* 805DCD08  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805DCD0C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805DCD10  D8 21 00 08 */	stfd f1, 8(r1)
/* 805DCD14  54 A5 52 2A */	rlwinm r5, r5, 0xa, 8, 0x15
/* 805DCD18  64 A6 F2 00 */	oris r6, r5, 0xf200
/* 805DCD1C  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 805DCD20  60 C6 00 1F */	ori r6, r6, 0x1f
/* 805DCD24  54 E5 52 2A */	rlwinm r5, r7, 0xa, 8, 0x15
/* 805DCD28  90 DE 00 08 */	stw r6, 8(r30)
/* 805DCD2C  64 A5 80 00 */	oris r5, r5, 0x8000
/* 805DCD30  60 A5 00 1F */	ori r5, r5, 0x1f
/* 805DCD34  90 BE 00 0C */	stw r5, 0xc(r30)
/* 805DCD38  3B DE 00 10 */	addi r30, r30, 0x10
/* 805DCD3C  7F DB F3 78 */	mr r27, r30
/* 805DCD40  90 1E 00 00 */	stw r0, 0(r30)
/* 805DCD44  3B DE 00 08 */	addi r30, r30, 8
/* 805DCD48  4B FF F7 11 */	bl mGB_get_image_pal
/* 805DCD4C  90 7B 00 04 */	stw r3, 4(r27)
/* 805DCD50  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 805DCD54  38 03 00 24 */	addi r0, r3, 0x0024 /* 0xDB060024@l */
/* 805DCD58  7F 83 E3 78 */	mr r3, r28
/* 805DCD5C  90 1E 00 00 */	stw r0, 0(r30)
/* 805DCD60  38 80 00 00 */	li r4, 0
/* 805DCD64  4B FF F7 45 */	bl mGB_get_image_texture
/* 805DCD68  90 7E 00 04 */	stw r3, 4(r30)
/* 805DCD6C  3C 00 DE 00 */	lis r0, 0xde00
/* 805DCD70  3C 60 80 A3 */	lis r3, cad_win_model@ha /* 0x80A31D70@ha */
/* 805DCD74  90 1E 00 08 */	stw r0, 8(r30)
/* 805DCD78  38 03 1D 70 */	addi r0, r3, cad_win_model@l /* 0x80A31D70@l */
/* 805DCD7C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805DCD80  3B DE 00 10 */	addi r30, r30, 0x10
/* 805DCD84  80 1D 00 04 */	lwz r0, 4(r29)
/* 805DCD88  2C 00 00 02 */	cmpwi r0, 2
/* 805DCD8C  41 82 00 0C */	beq lbl_805DCD98
/* 805DCD90  2C 00 00 01 */	cmpwi r0, 1
/* 805DCD94  40 82 00 1C */	bne lbl_805DCDB0
lbl_805DCD98:
/* 805DCD98  3C 00 DE 00 */	lis r0, 0xde00
/* 805DCD9C  3C 60 80 A7 */	lis r3, agb_win_yajirushiT_model@ha /* 0x80A70B80@ha */
/* 805DCDA0  90 1E 00 00 */	stw r0, 0(r30)
/* 805DCDA4  38 03 0B 80 */	addi r0, r3, agb_win_yajirushiT_model@l /* 0x80A70B80@l */
/* 805DCDA8  90 1E 00 04 */	stw r0, 4(r30)
/* 805DCDAC  3B DE 00 08 */	addi r30, r30, 8
lbl_805DCDB0:
/* 805DCDB0  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805DCDB4  39 61 00 30 */	addi r11, r1, 0x30
/* 805DCDB8  4B AB E1 61 */	bl func_8009AF18
/* 805DCDBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DCDC0  7C 08 03 A6 */	mtlr r0
/* 805DCDC4  38 21 00 30 */	addi r1, r1, 0x30
/* 805DCDC8  4E 80 00 20 */	blr 
