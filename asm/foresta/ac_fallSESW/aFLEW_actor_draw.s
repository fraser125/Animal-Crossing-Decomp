lbl_805AEEF8:
/* 805AEEF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AEEFC  7C 08 02 A6 */	mflr r0
/* 805AEF00  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AEF04  39 61 00 40 */	addi r11, r1, 0x40
/* 805AEF08  4B AE BF C1 */	bl func_8009AEC8
/* 805AEF0C  A0 03 00 06 */	lhz r0, 6(r3)
/* 805AEF10  7C 7A 1B 78 */	mr r26, r3
/* 805AEF14  83 C4 00 00 */	lwz r30, 0(r4)
/* 805AEF18  7C 9F 23 78 */	mr r31, r4
/* 805AEF1C  20 00 58 0F */	subfic r0, r0, 0x580f
/* 805AEF20  7C 00 00 34 */	cntlzw r0, r0
/* 805AEF24  7F C3 F3 78 */	mr r3, r30
/* 805AEF28  54 1D D9 7E */	srwi r29, r0, 5
/* 805AEF2C  4B E3 62 2D */	bl _texture_z_light_fog_prim_xlu
/* 805AEF30  2C 1D 00 00 */	cmpwi r29, 0
/* 805AEF34  41 82 00 14 */	beq lbl_805AEF48
/* 805AEF38  3C 60 80 6C */	lis r3, flip_mtx@ha /* 0x806C506C@ha */
/* 805AEF3C  38 80 00 01 */	li r4, 1
/* 805AEF40  38 63 50 6C */	addi r3, r3, flip_mtx@l /* 0x806C506C@l */
/* 805AEF44  4B E5 D3 55 */	bl Matrix_mult
lbl_805AEF48:
/* 805AEF48  83 7E 02 E0 */	lwz r27, 0x2e0(r30)
/* 805AEF4C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805AEF50  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805AEF54  7F C3 F3 78 */	mr r3, r30
/* 805AEF58  90 1B 00 00 */	stw r0, 0(r27)
/* 805AEF5C  7F 7C DB 78 */	mr r28, r27
/* 805AEF60  3B 7B 00 08 */	addi r27, r27, 8
/* 805AEF64  4B E5 E4 71 */	bl _Matrix_to_Mtx_new
/* 805AEF68  90 7C 00 04 */	stw r3, 4(r28)
/* 805AEF6C  3C 60 80 B7 */	lis r3, obj_fallSE_evw_anime@ha /* 0x80B72C30@ha */
/* 805AEF70  38 83 2C 30 */	addi r4, r3, obj_fallSE_evw_anime@l /* 0x80B72C30@l */
/* 805AEF74  93 7E 02 E0 */	stw r27, 0x2e0(r30)
/* 805AEF78  7F E3 FB 78 */	mr r3, r31
/* 805AEF7C  4B DC 45 E1 */	bl Evw_Anime_Set
/* 805AEF80  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 805AEF84  3C 00 DE 00 */	lis r0, 0xde00
/* 805AEF88  3C 80 80 B7 */	lis r4, obj_fallSESW_model@ha /* 0x80B72BD0@ha */
/* 805AEF8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AEF90  90 1C 00 00 */	stw r0, 0(r28)
/* 805AEF94  38 04 2B D0 */	addi r0, r4, obj_fallSESW_model@l /* 0x80B72BD0@l */
/* 805AEF98  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AEF9C  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064A754@ha */
/* 805AEFA0  90 1C 00 04 */	stw r0, 4(r28)
/* 805AEFA4  3C 84 00 03 */	addis r4, r4, 3
/* 805AEFA8  C0 03 A7 54 */	lfs f0, lit_501@l(r3)  /* 0x8064A754@l */
/* 805AEFAC  3B 9C 00 08 */	addi r28, r28, 8
/* 805AEFB0  C0 24 DB B4 */	lfs f1, -0x244c(r4)
/* 805AEFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AEFB8  40 81 01 BC */	ble lbl_805AF174
/* 805AEFBC  3C 60 80 65 */	lis r3, lit_502@ha /* 0x8064A758@ha */
/* 805AEFC0  C0 03 A7 58 */	lfs f0, lit_502@l(r3)  /* 0x8064A758@l */
/* 805AEFC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AEFC8  FC 00 00 1E */	fctiwz f0, f0
/* 805AEFCC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805AEFD0  83 61 00 24 */	lwz r27, 0x24(r1)
/* 805AEFD4  2C 1B 00 FF */	cmpwi r27, 0xff
/* 805AEFD8  40 81 00 08 */	ble lbl_805AEFE0
/* 805AEFDC  3B 60 00 FF */	li r27, 0xff
lbl_805AEFE0:
/* 805AEFE0  C0 3F 20 6C */	lfs f1, 0x206c(r31)
/* 805AEFE4  2C 1D 00 00 */	cmpwi r29, 0
/* 805AEFE8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805AEFEC  C0 1F 20 70 */	lfs f0, 0x2070(r31)
/* 805AEFF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805AEFF4  C0 1F 20 74 */	lfs f0, 0x2074(r31)
/* 805AEFF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AEFFC  41 82 00 14 */	beq lbl_805AF010
/* 805AF000  3C 60 80 65 */	lis r3, lit_503@ha /* 0x8064A75C@ha */
/* 805AF004  C0 03 A7 5C */	lfs f0, lit_503@l(r3)  /* 0x8064A75C@l */
/* 805AF008  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AF00C  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_805AF010:
/* 805AF010  3C 60 80 65 */	lis r3, base_vec_z@ha /* 0x8064A748@ha */
/* 805AF014  38 81 00 14 */	addi r4, r1, 0x14
/* 805AF018  38 63 A7 48 */	addi r3, r3, base_vec_z@l /* 0x8064A748@l */
/* 805AF01C  38 A1 00 08 */	addi r5, r1, 8
/* 805AF020  4B E5 9F B1 */	bl Math3DVectorProduct2Vec
/* 805AF024  38 61 00 08 */	addi r3, r1, 8
/* 805AF028  4B E5 9D F5 */	bl Math3DVecLength
/* 805AF02C  3C 60 80 65 */	lis r3, lit_504@ha /* 0x8064A760@ha */
/* 805AF030  C0 03 A7 60 */	lfs f0, lit_504@l(r3)  /* 0x8064A760@l */
/* 805AF034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AF038  4C 41 13 82 */	cror 2, 1, 2
/* 805AF03C  40 82 01 38 */	bne lbl_805AF174
/* 805AF040  3C 80 80 65 */	lis r4, lit_505@ha /* 0x8064A764@ha */
/* 805AF044  38 61 00 08 */	addi r3, r1, 8
/* 805AF048  C0 04 A7 64 */	lfs f0, lit_505@l(r4)  /* 0x8064A764@l */
/* 805AF04C  EC 20 08 24 */	fdivs f1, f0, f1
/* 805AF050  4B E0 BF 5D */	bl xyz_t_mult_v
/* 805AF054  3C 60 80 65 */	lis r3, base_vec_z@ha /* 0x8064A748@ha */
/* 805AF058  C4 63 A7 48 */	lfsu f3, base_vec_z@l(r3)  /* 0x8064A748@l */
/* 805AF05C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805AF060  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805AF064  C0 23 00 04 */	lfs f1, 4(r3)
/* 805AF068  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805AF06C  C0 63 00 08 */	lfs f3, 8(r3)
/* 805AF070  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AF074  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805AF078  EC 23 00 72 */	fmuls f1, f3, f1
/* 805AF07C  EC 02 00 2A */	fadds f0, f2, f0
/* 805AF080  EC 21 00 2A */	fadds f1, f1, f0
/* 805AF084  4B AA DC 25 */	bl facos
/* 805AF088  3C 60 80 65 */	lis r3, lit_506@ha /* 0x8064A768@ha */
/* 805AF08C  C0 5A 00 2C */	lfs f2, 0x2c(r26)
/* 805AF090  C0 03 A7 68 */	lfs f0, lit_506@l(r3)  /* 0x8064A768@l */
/* 805AF094  38 60 00 00 */	li r3, 0
/* 805AF098  C0 7A 00 30 */	lfs f3, 0x30(r26)
/* 805AF09C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AF0A0  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 805AF0A4  FC 00 00 1E */	fctiwz f0, f0
/* 805AF0A8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805AF0AC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 805AF0B0  4B E5 D2 51 */	bl Matrix_translate
/* 805AF0B4  A0 1A 00 06 */	lhz r0, 6(r26)
/* 805AF0B8  28 00 58 0F */	cmplwi r0, 0x580f
/* 805AF0BC  40 82 00 14 */	bne lbl_805AF0D0
/* 805AF0C0  3C 60 80 6C */	lis r3, flip_mtx@ha /* 0x806C506C@ha */
/* 805AF0C4  38 80 00 01 */	li r4, 1
/* 805AF0C8  38 63 50 6C */	addi r3, r3, flip_mtx@l /* 0x806C506C@l */
/* 805AF0CC  4B E5 D1 CD */	bl Matrix_mult
lbl_805AF0D0:
/* 805AF0D0  7F A3 EB 78 */	mr r3, r29
/* 805AF0D4  38 81 00 08 */	addi r4, r1, 8
/* 805AF0D8  38 A0 00 01 */	li r5, 1
/* 805AF0DC  4B E5 EE 11 */	bl Matrix_RotateVector
/* 805AF0E0  38 60 E0 00 */	li r3, -8192
/* 805AF0E4  38 80 00 01 */	li r4, 1
/* 805AF0E8  4B E5 D5 75 */	bl Matrix_RotateY
/* 805AF0EC  C0 3A 00 5C */	lfs f1, 0x5c(r26)
/* 805AF0F0  38 60 00 01 */	li r3, 1
/* 805AF0F4  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 805AF0F8  C0 7A 00 64 */	lfs f3, 0x64(r26)
/* 805AF0FC  4B E5 D2 F1 */	bl Matrix_scale
/* 805AF100  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805AF104  7F C3 F3 78 */	mr r3, r30
/* 805AF108  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805AF10C  90 1C 00 00 */	stw r0, 0(r28)
/* 805AF110  4B E5 E2 C5 */	bl _Matrix_to_Mtx_new
/* 805AF114  3C 80 E2 00 */	lis r4, 0xE200 /* 0xE200001C@ha */
/* 805AF118  90 7C 00 04 */	stw r3, 4(r28)
/* 805AF11C  38 04 00 1C */	addi r0, r4, 0x001C /* 0xE200001C@l */
/* 805AF120  3C 60 C8 10 */	lis r3, 0xC810 /* 0xC8104240@ha */
/* 805AF124  90 1C 00 08 */	stw r0, 8(r28)
/* 805AF128  38 63 42 40 */	addi r3, r3, 0x4240 /* 0xC8104240@l */
/* 805AF12C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 805AF130  3C 80 00 21 */	lis r4, 0x0021 /* 0x00210004@ha */
/* 805AF134  90 7C 00 0C */	stw r3, 0xc(r28)
/* 805AF138  3C A0 FB 00 */	lis r5, 0xfb00
/* 805AF13C  64 00 FF FF */	oris r0, r0, 0xffff
/* 805AF140  3C 60 80 B7 */	lis r3, obj_fallSE_rainbowT_model@ha /* 0x80B72B38@ha */
/* 805AF144  90 BC 00 10 */	stw r5, 0x10(r28)
/* 805AF148  60 00 FF 00 */	ori r0, r0, 0xff00
/* 805AF14C  3C C0 D9 00 */	lis r6, 0xd900
/* 805AF150  38 A4 00 04 */	addi r5, r4, 0x0004 /* 0x00210004@l */
/* 805AF154  90 1C 00 14 */	stw r0, 0x14(r28)
/* 805AF158  3C 80 DE 00 */	lis r4, 0xde00
/* 805AF15C  38 03 2B 38 */	addi r0, r3, obj_fallSE_rainbowT_model@l /* 0x80B72B38@l */
/* 805AF160  90 DC 00 18 */	stw r6, 0x18(r28)
/* 805AF164  90 BC 00 1C */	stw r5, 0x1c(r28)
/* 805AF168  90 9C 00 20 */	stw r4, 0x20(r28)
/* 805AF16C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 805AF170  3B 9C 00 28 */	addi r28, r28, 0x28
lbl_805AF174:
/* 805AF174  93 9E 02 E0 */	stw r28, 0x2e0(r30)
/* 805AF178  39 61 00 40 */	addi r11, r1, 0x40
/* 805AF17C  4B AE BD 99 */	bl func_8009AF14
/* 805AF180  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AF184  7C 08 03 A6 */	mtlr r0
/* 805AF188  38 21 00 40 */	addi r1, r1, 0x40
/* 805AF18C  4E 80 00 20 */	blr 
