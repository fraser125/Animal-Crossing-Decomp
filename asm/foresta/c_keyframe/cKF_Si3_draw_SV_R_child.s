lbl_803713BC:
/* 803713BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803713C0  7C 08 02 A6 */	mflr r0
/* 803713C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 803713C8  39 61 00 70 */	addi r11, r1, 0x70
/* 803713CC  4B D2 9A ED */	bl func_8009AEB8
/* 803713D0  7C B9 2B 78 */	mr r25, r5
/* 803713D4  7C 98 23 78 */	mr r24, r4
/* 803713D8  80 05 00 00 */	lwz r0, 0(r5)
/* 803713DC  7C 77 1B 78 */	mr r23, r3
/* 803713E0  80 64 00 18 */	lwz r3, 0x18(r4)
/* 803713E4  7C DA 33 78 */	mr r26, r6
/* 803713E8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 803713EC  2C 00 00 00 */	cmpwi r0, 0
/* 803713F0  83 E3 00 04 */	lwz r31, 4(r3)
/* 803713F4  7C FB 3B 78 */	mr r27, r7
/* 803713F8  80 78 00 24 */	lwz r3, 0x24(r24)
/* 803713FC  7D 1C 43 78 */	mr r28, r8
/* 80371400  1C 00 00 06 */	mulli r0, r0, 6
/* 80371404  7D 3D 4B 78 */	mr r29, r9
/* 80371408  7F FF 22 14 */	add r31, r31, r4
/* 8037140C  7C 63 02 14 */	add r3, r3, r0
/* 80371410  41 82 00 68 */	beq lbl_80371478
/* 80371414  A8 9F 00 06 */	lha r4, 6(r31)
/* 80371418  3C 00 43 30 */	lis r0, 0x4330
/* 8037141C  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 80371420  90 01 00 28 */	stw r0, 0x28(r1)
/* 80371424  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80371428  C8 25 11 94 */	lfd f1, lit_540@l(r5)  /* 0x80641194@l */
/* 8037142C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80371430  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80371434  90 01 00 30 */	stw r0, 0x30(r1)
/* 80371438  EC 00 08 28 */	fsubs f0, f0, f1
/* 8037143C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80371440  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80371444  A8 1F 00 08 */	lha r0, 8(r31)
/* 80371448  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8037144C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80371450  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80371454  EC 00 08 28 */	fsubs f0, f0, f1
/* 80371458  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8037145C  A8 1F 00 0A */	lha r0, 0xa(r31)
/* 80371460  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80371464  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80371468  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8037146C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80371470  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80371474  48 00 00 A4 */	b lbl_80371518
lbl_80371478:
/* 80371478  80 D8 00 30 */	lwz r6, 0x30(r24)
/* 8037147C  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 80371480  41 82 00 18 */	beq lbl_80371498
/* 80371484  C0 18 00 44 */	lfs f0, 0x44(r24)
/* 80371488  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8037148C  C0 18 00 4C */	lfs f0, 0x4c(r24)
/* 80371490  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80371494  48 00 00 48 */	b lbl_803714DC
lbl_80371498:
/* 80371498  A8 83 00 00 */	lha r4, 0(r3)
/* 8037149C  3C 00 43 30 */	lis r0, 0x4330
/* 803714A0  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 803714A4  90 01 00 38 */	stw r0, 0x38(r1)
/* 803714A8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803714AC  C8 25 11 94 */	lfd f1, lit_540@l(r5)  /* 0x80641194@l */
/* 803714B0  90 81 00 3C */	stw r4, 0x3c(r1)
/* 803714B4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 803714B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 803714BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 803714C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 803714C4  A8 03 00 04 */	lha r0, 4(r3)
/* 803714C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803714CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803714D0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803714D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 803714D8  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_803714DC:
/* 803714DC  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 803714E0  41 82 00 10 */	beq lbl_803714F0
/* 803714E4  C0 18 00 48 */	lfs f0, 0x48(r24)
/* 803714E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 803714EC  48 00 00 2C */	b lbl_80371518
lbl_803714F0:
/* 803714F0  A8 A3 00 02 */	lha r5, 2(r3)
/* 803714F4  3C 00 43 30 */	lis r0, 0x4330
/* 803714F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 803714FC  3C 80 80 64 */	lis r4, lit_540@ha /* 0x80641194@ha */
/* 80371500  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80371504  C8 24 11 94 */	lfd f1, lit_540@l(r4)  /* 0x80641194@l */
/* 80371508  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8037150C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80371510  EC 00 08 28 */	fsubs f0, f0, f1
/* 80371514  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80371518:
/* 80371518  80 03 00 06 */	lwz r0, 6(r3)
/* 8037151C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80371520  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80371524  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80371528  80 19 00 00 */	lwz r0, 0(r25)
/* 8037152C  2C 00 00 00 */	cmpwi r0, 0
/* 80371530  40 82 00 28 */	bne lbl_80371558
/* 80371534  80 18 00 30 */	lwz r0, 0x30(r24)
/* 80371538  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8037153C  41 82 00 1C */	beq lbl_80371558
/* 80371540  A8 18 00 50 */	lha r0, 0x50(r24)
/* 80371544  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80371548  A8 18 00 58 */	lha r0, 0x58(r24)
/* 8037154C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80371550  A8 18 00 5A */	lha r0, 0x5a(r24)
/* 80371554  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_80371558:
/* 80371558  83 D7 00 00 */	lwz r30, 0(r23)
/* 8037155C  48 09 AC 79 */	bl Matrix_push
/* 80371560  82 DF 00 00 */	lwz r22, 0(r31)
/* 80371564  28 1A 00 00 */	cmplwi r26, 0
/* 80371568  92 C1 00 0C */	stw r22, 0xc(r1)
/* 8037156C  88 1F 00 05 */	lbz r0, 5(r31)
/* 80371570  98 01 00 08 */	stb r0, 8(r1)
/* 80371574  41 82 00 3C */	beq lbl_803715B0
/* 80371578  41 82 01 2C */	beq lbl_803716A4
/* 8037157C  7F 4C D3 78 */	mr r12, r26
/* 80371580  7E E3 BB 78 */	mr r3, r23
/* 80371584  7F 04 C3 78 */	mr r4, r24
/* 80371588  7F 88 E3 78 */	mr r8, r28
/* 8037158C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80371590  38 E1 00 08 */	addi r7, r1, 8
/* 80371594  39 21 00 10 */	addi r9, r1, 0x10
/* 80371598  39 41 00 18 */	addi r10, r1, 0x18
/* 8037159C  80 B9 00 00 */	lwz r5, 0(r25)
/* 803715A0  7D 89 03 A6 */	mtctr r12
/* 803715A4  4E 80 04 21 */	bctrl 
/* 803715A8  2C 03 00 00 */	cmpwi r3, 0
/* 803715AC  41 82 00 F8 */	beq lbl_803716A4
lbl_803715B0:
/* 803715B0  38 61 00 18 */	addi r3, r1, 0x18
/* 803715B4  38 81 00 10 */	addi r4, r1, 0x10
/* 803715B8  48 09 B6 99 */	bl Matrix_softcv3_mult
/* 803715BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803715C0  28 00 00 00 */	cmplwi r0, 0
/* 803715C4  41 82 00 A4 */	beq lbl_80371668
/* 803715C8  80 7D 00 00 */	lwz r3, 0(r29)
/* 803715CC  48 09 BD D9 */	bl _Matrix_to_Mtx
/* 803715D0  88 01 00 08 */	lbz r0, 8(r1)
/* 803715D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803715D8  41 82 00 44 */	beq lbl_8037161C
/* 803715DC  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 803715E0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803715E4  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xDA380003@l */
/* 803715E8  3C 00 DE 00 */	lis r0, 0xde00
/* 803715EC  38 85 00 08 */	addi r4, r5, 8
/* 803715F0  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 803715F4  90 65 00 00 */	stw r3, 0(r5)
/* 803715F8  80 7D 00 00 */	lwz r3, 0(r29)
/* 803715FC  90 65 00 04 */	stw r3, 4(r5)
/* 80371600  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 80371604  38 64 00 08 */	addi r3, r4, 8
/* 80371608  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8037160C  90 04 00 00 */	stw r0, 0(r4)
/* 80371610  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80371614  90 04 00 04 */	stw r0, 4(r4)
/* 80371618  48 00 00 40 */	b lbl_80371658
lbl_8037161C:
/* 8037161C  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 80371620  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80371624  38 63 00 03 */	addi r3, r3, 0x0003 /* 0xDA380003@l */
/* 80371628  3C 00 DE 00 */	lis r0, 0xde00
/* 8037162C  38 85 00 08 */	addi r4, r5, 8
/* 80371630  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 80371634  90 65 00 00 */	stw r3, 0(r5)
/* 80371638  80 7D 00 00 */	lwz r3, 0(r29)
/* 8037163C  90 65 00 04 */	stw r3, 4(r5)
/* 80371640  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 80371644  38 64 00 08 */	addi r3, r4, 8
/* 80371648  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8037164C  90 04 00 00 */	stw r0, 0(r4)
/* 80371650  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80371654  90 04 00 04 */	stw r0, 4(r4)
lbl_80371658:
/* 80371658  80 7D 00 00 */	lwz r3, 0(r29)
/* 8037165C  38 03 00 40 */	addi r0, r3, 0x40
/* 80371660  90 1D 00 00 */	stw r0, 0(r29)
/* 80371664  48 00 00 40 */	b lbl_803716A4
lbl_80371668:
/* 80371668  28 16 00 00 */	cmplwi r22, 0
/* 8037166C  41 82 00 38 */	beq lbl_803716A4
/* 80371670  80 7D 00 00 */	lwz r3, 0(r29)
/* 80371674  48 09 BD 31 */	bl _Matrix_to_Mtx
/* 80371678  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8037167C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80371680  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80371684  38 64 00 08 */	addi r3, r4, 8
/* 80371688  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8037168C  90 04 00 00 */	stw r0, 0(r4)
/* 80371690  80 1D 00 00 */	lwz r0, 0(r29)
/* 80371694  90 04 00 04 */	stw r0, 4(r4)
/* 80371698  80 7D 00 00 */	lwz r3, 0(r29)
/* 8037169C  38 03 00 40 */	addi r0, r3, 0x40
/* 803716A0  90 1D 00 00 */	stw r0, 0(r29)
lbl_803716A4:
/* 803716A4  28 1B 00 00 */	cmplwi r27, 0
/* 803716A8  41 82 00 30 */	beq lbl_803716D8
/* 803716AC  7F 6C DB 78 */	mr r12, r27
/* 803716B0  7E E3 BB 78 */	mr r3, r23
/* 803716B4  7F 04 C3 78 */	mr r4, r24
/* 803716B8  7F 88 E3 78 */	mr r8, r28
/* 803716BC  38 C1 00 0C */	addi r6, r1, 0xc
/* 803716C0  38 E1 00 08 */	addi r7, r1, 8
/* 803716C4  39 21 00 10 */	addi r9, r1, 0x10
/* 803716C8  39 41 00 18 */	addi r10, r1, 0x18
/* 803716CC  80 B9 00 00 */	lwz r5, 0(r25)
/* 803716D0  7D 89 03 A6 */	mtctr r12
/* 803716D4  4E 80 04 21 */	bctrl 
lbl_803716D8:
/* 803716D8  80 79 00 00 */	lwz r3, 0(r25)
/* 803716DC  3B C0 00 00 */	li r30, 0
/* 803716E0  38 03 00 01 */	addi r0, r3, 1
/* 803716E4  90 19 00 00 */	stw r0, 0(r25)
/* 803716E8  48 00 00 28 */	b lbl_80371710
lbl_803716EC:
/* 803716EC  7E E3 BB 78 */	mr r3, r23
/* 803716F0  7F 04 C3 78 */	mr r4, r24
/* 803716F4  7F 25 CB 78 */	mr r5, r25
/* 803716F8  7F 46 D3 78 */	mr r6, r26
/* 803716FC  7F 67 DB 78 */	mr r7, r27
/* 80371700  7F 88 E3 78 */	mr r8, r28
/* 80371704  7F A9 EB 78 */	mr r9, r29
/* 80371708  4B FF FC B5 */	bl cKF_Si3_draw_SV_R_child
/* 8037170C  3B DE 00 01 */	addi r30, r30, 1
lbl_80371710:
/* 80371710  88 1F 00 04 */	lbz r0, 4(r31)
/* 80371714  7C 1E 00 00 */	cmpw r30, r0
/* 80371718  41 80 FF D4 */	blt lbl_803716EC
/* 8037171C  48 09 AA F9 */	bl Matrix_pull
/* 80371720  39 61 00 70 */	addi r11, r1, 0x70
/* 80371724  4B D2 97 E1 */	bl func_8009AF04
/* 80371728  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8037172C  7C 08 03 A6 */	mtlr r0
/* 80371730  38 21 00 70 */	addi r1, r1, 0x70
/* 80371734  4E 80 00 20 */	blr 
