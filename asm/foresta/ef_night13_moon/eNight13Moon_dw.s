lbl_8061929C:
/* 8061929C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806192A0  7C 08 02 A6 */	mflr r0
/* 806192A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806192A8  39 61 00 30 */	addi r11, r1, 0x30
/* 806192AC  4B A8 1C 21 */	bl func_8009AECC
/* 806192B0  7C 7B 1B 78 */	mr r27, r3
/* 806192B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806192B8  80 BB 00 10 */	lwz r5, 0x10(r27)
/* 806192BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806192C0  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 806192C4  3C 63 00 02 */	addis r3, r3, 2
/* 806192C8  7C 9E 23 78 */	mr r30, r4
/* 806192CC  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 806192D0  90 A1 00 08 */	stw r5, 8(r1)
/* 806192D4  38 61 00 08 */	addi r3, r1, 8
/* 806192D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806192DC  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 806192E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806192E4  81 84 00 38 */	lwz r12, 0x38(r4)
/* 806192E8  7D 89 03 A6 */	mtctr r12
/* 806192EC  4E 80 04 21 */	bctrl 
/* 806192F0  2C 03 00 00 */	cmpwi r3, 0
/* 806192F4  40 82 00 10 */	bne lbl_80619304
/* 806192F8  88 1B 00 0F */	lbz r0, 0xf(r27)
/* 806192FC  28 00 00 02 */	cmplwi r0, 2
/* 80619300  40 82 01 54 */	bne lbl_80619454
lbl_80619304:
/* 80619304  83 FE 00 00 */	lwz r31, 0(r30)
/* 80619308  AB BB 00 4C */	lha r29, 0x4c(r27)
/* 8061930C  AB 9B 00 4E */	lha r28, 0x4e(r27)
/* 80619310  7F E3 FB 78 */	mr r3, r31
/* 80619314  4B DC BE 45 */	bl _texture_z_light_fog_prim_xlu
/* 80619318  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 8061931C  38 60 00 00 */	li r3, 0
/* 80619320  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80619324  C0 9B 00 14 */	lfs f4, 0x14(r27)
/* 80619328  C0 5B 00 44 */	lfs f2, 0x44(r27)
/* 8061932C  EC 21 00 2A */	fadds f1, f1, f0
/* 80619330  C0 7B 00 18 */	lfs f3, 0x18(r27)
/* 80619334  C0 1B 00 48 */	lfs f0, 0x48(r27)
/* 80619338  EC 44 10 2A */	fadds f2, f4, f2
/* 8061933C  EC 63 00 2A */	fadds f3, f3, f0
/* 80619340  4B DF 2F C1 */	bl Matrix_translate
/* 80619344  7C 1D 00 D0 */	neg r0, r29
/* 80619348  38 80 00 01 */	li r4, 1
/* 8061934C  7C 03 07 34 */	extsh r3, r0
/* 80619350  4B DF 33 0D */	bl Matrix_RotateY
/* 80619354  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064C908@ha */
/* 80619358  3C A0 80 65 */	lis r5, lit_473@ha /* 0x8064C904@ha */
/* 8061935C  38 83 C9 08 */	addi r4, r3, lit_474@l /* 0x8064C908@l */
/* 80619360  C0 25 C9 04 */	lfs f1, lit_473@l(r5)  /* 0x8064C904@l */
/* 80619364  C0 44 00 00 */	lfs f2, 0(r4)
/* 80619368  38 60 00 01 */	li r3, 1
/* 8061936C  FC 60 10 90 */	fmr f3, f2
/* 80619370  4B DF 30 7D */	bl Matrix_scale
/* 80619374  7F A3 EB 78 */	mr r3, r29
/* 80619378  38 80 00 01 */	li r4, 1
/* 8061937C  4B DF 32 E1 */	bl Matrix_RotateY
/* 80619380  7C 1C 00 D0 */	neg r0, r28
/* 80619384  38 80 00 01 */	li r4, 1
/* 80619388  7C 03 07 34 */	extsh r3, r0
/* 8061938C  4B DF 32 D1 */	bl Matrix_RotateY
/* 80619390  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064C908@ha */
/* 80619394  3C 80 80 65 */	lis r4, lit_473@ha /* 0x8064C904@ha */
/* 80619398  38 A3 C9 08 */	addi r5, r3, lit_474@l /* 0x8064C908@l */
/* 8061939C  C0 64 C9 04 */	lfs f3, lit_473@l(r4)  /* 0x8064C904@l */
/* 806193A0  C0 25 00 00 */	lfs f1, 0(r5)
/* 806193A4  38 60 00 01 */	li r3, 1
/* 806193A8  FC 40 08 90 */	fmr f2, f1
/* 806193AC  4B DF 30 41 */	bl Matrix_scale
/* 806193B0  7F 83 E3 78 */	mr r3, r28
/* 806193B4  38 80 00 01 */	li r4, 1
/* 806193B8  4B DF 32 A5 */	bl Matrix_RotateY
/* 806193BC  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064C90C@ha */
/* 806193C0  3C 80 80 65 */	lis r4, lit_474@ha /* 0x8064C908@ha */
/* 806193C4  38 A3 C9 0C */	addi r5, r3, lit_475@l /* 0x8064C90C@l */
/* 806193C8  C0 44 C9 08 */	lfs f2, lit_474@l(r4)  /* 0x8064C908@l */
/* 806193CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 806193D0  38 60 00 01 */	li r3, 1
/* 806193D4  FC 60 08 90 */	fmr f3, f1
/* 806193D8  4B DF 30 15 */	bl Matrix_scale
/* 806193DC  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 806193E0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806193E4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806193E8  38 7D 00 08 */	addi r3, r29, 8
/* 806193EC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 806193F0  90 1D 00 00 */	stw r0, 0(r29)
/* 806193F4  80 7E 00 00 */	lwz r3, 0(r30)
/* 806193F8  4B DF 3F DD */	bl _Matrix_to_Mtx_new
/* 806193FC  90 7D 00 04 */	stw r3, 4(r29)
/* 80619400  3C A0 FF FF */	lis r5, 0xFFFF /* 0xFFFF64AA@ha */
/* 80619404  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA000028@ha */
/* 80619408  3C 60 80 CC */	lis r3, ef_moon01_01_evw_anime@ha /* 0x80CB96C8@ha */
/* 8061940C  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80619410  38 05 64 AA */	addi r0, r5, 0x64AA /* 0xFFFF64AA@l */
/* 80619414  38 83 96 C8 */	addi r4, r3, ef_moon01_01_evw_anime@l /* 0x80CB96C8@l */
/* 80619418  38 C6 00 28 */	addi r6, r6, 0x0028 /* 0xFA000028@l */
/* 8061941C  38 A7 00 08 */	addi r5, r7, 8
/* 80619420  7F C3 F3 78 */	mr r3, r30
/* 80619424  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80619428  90 C7 00 00 */	stw r6, 0(r7)
/* 8061942C  90 07 00 04 */	stw r0, 4(r7)
/* 80619430  4B D5 A1 2D */	bl Evw_Anime_Set
/* 80619434  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80619438  3C 60 80 CC */	lis r3, ef_moon01_01_modelT@ha /* 0x80CBA120@ha */
/* 8061943C  3C 80 DE 00 */	lis r4, 0xde00
/* 80619440  38 A6 00 08 */	addi r5, r6, 8
/* 80619444  38 03 A1 20 */	addi r0, r3, ef_moon01_01_modelT@l /* 0x80CBA120@l */
/* 80619448  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8061944C  90 86 00 00 */	stw r4, 0(r6)
/* 80619450  90 06 00 04 */	stw r0, 4(r6)
lbl_80619454:
/* 80619454  39 61 00 30 */	addi r11, r1, 0x30
/* 80619458  4B A8 1A C1 */	bl func_8009AF18
/* 8061945C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80619460  7C 08 03 A6 */	mtlr r0
/* 80619464  38 21 00 30 */	addi r1, r1, 0x30
/* 80619468  4E 80 00 20 */	blr 
