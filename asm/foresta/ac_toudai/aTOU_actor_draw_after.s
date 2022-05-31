lbl_805BF85C:
/* 805BF85C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BF860  7C 08 02 A6 */	mflr r0
/* 805BF864  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BF868  39 61 00 40 */	addi r11, r1, 0x40
/* 805BF86C  4B AD B6 61 */	bl func_8009AECC
/* 805BF870  2C 05 00 04 */	cmpwi r5, 4
/* 805BF874  83 C3 00 00 */	lwz r30, 0(r3)
/* 805BF878  7D 1C 43 78 */	mr r28, r8
/* 805BF87C  40 82 01 6C */	bne lbl_805BF9E8
/* 805BF880  C0 1C 02 CC */	lfs f0, 0x2cc(r28)
/* 805BF884  FC 00 00 1E */	fctiwz f0, f0
/* 805BF888  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BF88C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BF890  2C 00 00 00 */	cmpwi r0, 0
/* 805BF894  41 82 01 54 */	beq lbl_805BF9E8
/* 805BF898  7F C3 F3 78 */	mr r3, r30
/* 805BF89C  4B E4 DB 39 */	bl _Matrix_to_Mtx_new
/* 805BF8A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BF8A4  41 82 01 44 */	beq lbl_805BF9E8
/* 805BF8A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BF8AC  80 1C 02 D8 */	lwz r0, 0x2d8(r28)
/* 805BF8B0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805BF8B4  38 60 00 5A */	li r3, 0x5a
/* 805BF8B8  3C 84 00 02 */	addis r4, r4, 2
/* 805BF8BC  20 00 00 03 */	subfic r0, r0, 3
/* 805BF8C0  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BF8C4  7C 00 00 34 */	cntlzw r0, r0
/* 805BF8C8  54 1D D9 7E */	srwi r29, r0, 5
/* 805BF8CC  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805BF8D0  7D 89 03 A6 */	mtctr r12
/* 805BF8D4  4E 80 04 21 */	bctrl 
/* 805BF8D8  7C 7B 1B 78 */	mr r27, r3
/* 805BF8DC  7F C3 F3 78 */	mr r3, r30
/* 805BF8E0  4B E2 58 A1 */	bl _texture_z_light_fog_prim_light
/* 805BF8E4  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805BF8E8  80 9E 03 10 */	lwz r4, 0x310(r30)
/* 805BF8EC  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805BF8F0  3C 60 80 6C */	lis r3, prmcol@ha /* 0x806C71CC@ha */
/* 805BF8F4  90 04 00 00 */	stw r0, 0(r4)
/* 805BF8F8  38 63 71 CC */	addi r3, r3, prmcol@l /* 0x806C71CC@l */
/* 805BF8FC  93 64 00 04 */	stw r27, 4(r4)
/* 805BF900  C0 1C 02 C8 */	lfs f0, 0x2c8(r28)
/* 805BF904  FC 00 00 1E */	fctiwz f0, f0
/* 805BF908  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BF90C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BF910  98 03 00 02 */	stb r0, 2(r3)
/* 805BF914  C0 1C 02 CC */	lfs f0, 0x2cc(r28)
/* 805BF918  FC 00 00 1E */	fctiwz f0, f0
/* 805BF91C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BF920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BF924  98 03 00 03 */	stb r0, 3(r3)
/* 805BF928  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 805BF92C  C0 1C 02 D0 */	lfs f0, 0x2d0(r28)
/* 805BF930  FC 00 00 1E */	fctiwz f0, f0
/* 805BF934  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BF938  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BF93C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805BF940  7C 05 00 40 */	cmplw r5, r0
/* 805BF944  40 81 00 10 */	ble lbl_805BF954
/* 805BF948  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BF94C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BF950  98 03 00 03 */	stb r0, 3(r3)
lbl_805BF954:
/* 805BF954  3C 00 E7 00 */	lis r0, 0xe700
/* 805BF958  3C E0 80 6C */	lis r7, prmcol@ha /* 0x806C71CC@ha */
/* 805BF95C  90 04 00 08 */	stw r0, 8(r4)
/* 805BF960  38 00 00 00 */	li r0, 0
/* 805BF964  3C A0 80 6C */	lis r5, mdl@ha /* 0x806C71C4@ha */
/* 805BF968  39 27 71 CC */	addi r9, r7, prmcol@l /* 0x806C71CC@l */
/* 805BF96C  90 04 00 0C */	stw r0, 0xc(r4)
/* 805BF970  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380003@ha */
/* 805BF974  38 E6 00 03 */	addi r7, r6, 0x0003 /* 0xDA380003@l */
/* 805BF978  57 A0 10 3A */	slwi r0, r29, 2
/* 805BF97C  C0 1C 02 D0 */	lfs f0, 0x2d0(r28)
/* 805BF980  3C C0 DE 00 */	lis r6, 0xde00
/* 805BF984  38 A5 71 C4 */	addi r5, r5, mdl@l /* 0x806C71C4@l */
/* 805BF988  FC 00 00 1E */	fctiwz f0, f0
/* 805BF98C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BF990  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 805BF994  55 08 06 3E */	clrlwi r8, r8, 0x18
/* 805BF998  65 08 FA 00 */	oris r8, r8, 0xfa00
/* 805BF99C  91 04 00 10 */	stw r8, 0x10(r4)
/* 805BF9A0  89 09 00 01 */	lbz r8, 1(r9)
/* 805BF9A4  89 43 00 02 */	lbz r10, 2(r3)
/* 805BF9A8  89 29 00 00 */	lbz r9, 0(r9)
/* 805BF9AC  55 08 82 1E */	rlwinm r8, r8, 0x10, 8, 0xf
/* 805BF9B0  88 63 00 03 */	lbz r3, 3(r3)
/* 805BF9B4  51 28 C0 0E */	rlwimi r8, r9, 0x18, 0, 7
/* 805BF9B8  51 48 44 2E */	rlwimi r8, r10, 8, 0x10, 0x17
/* 805BF9BC  50 68 06 3E */	rlwimi r8, r3, 0, 0x18, 0x1f
/* 805BF9C0  91 04 00 14 */	stw r8, 0x14(r4)
/* 805BF9C4  90 E4 00 18 */	stw r7, 0x18(r4)
/* 805BF9C8  93 E4 00 1C */	stw r31, 0x1c(r4)
/* 805BF9CC  38 84 00 20 */	addi r4, r4, 0x20
/* 805BF9D0  7C 83 23 78 */	mr r3, r4
/* 805BF9D4  90 C4 00 00 */	stw r6, 0(r4)
/* 805BF9D8  38 84 00 08 */	addi r4, r4, 8
/* 805BF9DC  7C 05 00 2E */	lwzx r0, r5, r0
/* 805BF9E0  90 03 00 04 */	stw r0, 4(r3)
/* 805BF9E4  90 9E 03 10 */	stw r4, 0x310(r30)
lbl_805BF9E8:
/* 805BF9E8  38 60 00 01 */	li r3, 1
/* 805BF9EC  39 61 00 40 */	addi r11, r1, 0x40
/* 805BF9F0  4B AD B5 29 */	bl func_8009AF18
/* 805BF9F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BF9F8  7C 08 03 A6 */	mtlr r0
/* 805BF9FC  38 21 00 40 */	addi r1, r1, 0x40
/* 805BFA00  4E 80 00 20 */	blr 
