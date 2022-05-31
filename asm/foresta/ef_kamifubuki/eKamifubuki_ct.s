lbl_8061174C:
/* 8061174C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80611750  7C 08 02 A6 */	mflr r0
/* 80611754  90 01 00 64 */	stw r0, 0x64(r1)
/* 80611758  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8061175C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80611760  39 61 00 50 */	addi r11, r1, 0x50
/* 80611764  4B A8 97 6D */	bl func_8009AED0
/* 80611768  7C 7F 1B 78 */	mr r31, r3
/* 8061176C  7C BC 2B 78 */	mr r28, r5
/* 80611770  4B A4 B5 85 */	bl fqrand
/* 80611774  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064C3E0@ha */
/* 80611778  3C 60 80 65 */	lis r3, data_8064C3DC@ha /* 0x8064C3DC@ha */
/* 8061177C  C0 44 C3 E0 */	lfs f2, lit_390@l(r4)  /* 0x8064C3E0@l */
/* 80611780  C0 03 C3 DC */	lfs f0, data_8064C3DC@l(r3)  /* 0x8064C3DC@l */
/* 80611784  EC 22 00 72 */	fmuls f1, f2, f1
/* 80611788  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061178C  FC 00 00 1E */	fctiwz f0, f0
/* 80611790  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80611794  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80611798  7C 1D 07 34 */	extsh r29, r0
/* 8061179C  4B A4 B5 31 */	bl func_8005CCCC
/* 806117A0  AB 9C 00 00 */	lha r28, 0(r28)
/* 806117A4  7C 7E 07 34 */	extsh r30, r3
/* 806117A8  7F A3 EB 78 */	mr r3, r29
/* 806117AC  4B DA 93 45 */	bl sin_s
/* 806117B0  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064C3E4@ha */
/* 806117B4  7F 83 E3 78 */	mr r3, r28
/* 806117B8  38 A4 C3 E4 */	addi r5, r4, lit_391@l /* 0x8064C3E4@l */
/* 806117BC  38 80 00 00 */	li r4, 0
/* 806117C0  C0 05 00 00 */	lfs f0, 0(r5)
/* 806117C4  EF E0 00 72 */	fmuls f31, f0, f1
/* 806117C8  4B DF AE 95 */	bl Matrix_RotateY
/* 806117CC  A8 7F 00 08 */	lha r3, 8(r31)
/* 806117D0  38 80 00 01 */	li r4, 1
/* 806117D4  4B DF AC E5 */	bl Matrix_RotateX
/* 806117D8  7F C3 F3 78 */	mr r3, r30
/* 806117DC  4B DA 93 15 */	bl sin_s
/* 806117E0  EC 1F 00 72 */	fmuls f0, f31, f1
/* 806117E4  7F A3 EB 78 */	mr r3, r29
/* 806117E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806117EC  4B DA 92 B1 */	bl cos_s
/* 806117F0  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064C3E4@ha */
/* 806117F4  7F C3 F3 78 */	mr r3, r30
/* 806117F8  C0 04 C3 E4 */	lfs f0, lit_391@l(r4)  /* 0x8064C3E4@l */
/* 806117FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80611800  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80611804  4B DA 92 99 */	bl cos_s
/* 80611808  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8061180C  38 61 00 08 */	addi r3, r1, 8
/* 80611810  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80611814  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80611818  4B DF BB ED */	bl Matrix_Position
/* 8061181C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80611820  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80611824  90 7F 00 34 */	stw r3, 0x34(r31)
/* 80611828  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8061182C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80611830  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80611834  4B A4 B4 C1 */	bl fqrand
/* 80611838  3C 80 80 65 */	lis r4, lit_392@ha /* 0x8064C3E8@ha */
/* 8061183C  3C 60 80 65 */	lis r3, data_8064C3DC@ha /* 0x8064C3DC@ha */
/* 80611840  C0 44 C3 E8 */	lfs f2, lit_392@l(r4)  /* 0x8064C3E8@l */
/* 80611844  C0 03 C3 DC */	lfs f0, data_8064C3DC@l(r3)  /* 0x8064C3DC@l */
/* 80611848  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061184C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80611850  FC 00 00 1E */	fctiwz f0, f0
/* 80611854  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80611858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061185C  7C 1D 07 34 */	extsh r29, r0
/* 80611860  4B A4 B4 6D */	bl func_8005CCCC
/* 80611864  7C 7E 07 34 */	extsh r30, r3
/* 80611868  7F A3 EB 78 */	mr r3, r29
/* 8061186C  4B DA 92 85 */	bl sin_s
/* 80611870  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064C3E4@ha */
/* 80611874  7F C3 F3 78 */	mr r3, r30
/* 80611878  C0 04 C3 E4 */	lfs f0, lit_391@l(r4)  /* 0x8064C3E4@l */
/* 8061187C  EF E0 00 72 */	fmuls f31, f0, f1
/* 80611880  4B DA 92 71 */	bl sin_s
/* 80611884  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80611888  7F A3 EB 78 */	mr r3, r29
/* 8061188C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80611890  4B DA 92 0D */	bl cos_s
/* 80611894  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064C3E4@ha */
/* 80611898  7F C3 F3 78 */	mr r3, r30
/* 8061189C  C0 04 C3 E4 */	lfs f0, lit_391@l(r4)  /* 0x8064C3E4@l */
/* 806118A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806118A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806118A8  4B DA 91 F5 */	bl cos_s
/* 806118AC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 806118B0  38 61 00 08 */	addi r3, r1, 8
/* 806118B4  38 9F 00 28 */	addi r4, r31, 0x28
/* 806118B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806118BC  4B DF BB 49 */	bl Matrix_Position
/* 806118C0  4B A4 B4 0D */	bl func_8005CCCC
/* 806118C4  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 806118C8  4B A4 B4 65 */	bl fqrand2
/* 806118CC  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064C3EC@ha */
/* 806118D0  3C 60 80 65 */	lis r3, data_8064C3DC@ha /* 0x8064C3DC@ha */
/* 806118D4  C0 44 C3 EC */	lfs f2, lit_393@l(r4)  /* 0x8064C3EC@l */
/* 806118D8  C0 03 C3 DC */	lfs f0, data_8064C3DC@l(r3)  /* 0x8064C3DC@l */
/* 806118DC  EC 22 00 72 */	fmuls f1, f2, f1
/* 806118E0  EC 22 08 2A */	fadds f1, f2, f1
/* 806118E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806118E8  FC 00 00 1E */	fctiwz f0, f0
/* 806118EC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806118F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806118F4  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 806118F8  4B A4 B3 D5 */	bl func_8005CCCC
/* 806118FC  7C 7D 07 34 */	extsh r29, r3
/* 80611900  4B A4 B3 CD */	bl func_8005CCCC
/* 80611904  7C 7E 07 34 */	extsh r30, r3
/* 80611908  4B A4 B3 C5 */	bl func_8005CCCC
/* 8061190C  7C 63 07 34 */	extsh r3, r3
/* 80611910  7F C4 F3 78 */	mr r4, r30
/* 80611914  7F A5 EB 78 */	mr r5, r29
/* 80611918  38 C0 00 00 */	li r6, 0
/* 8061191C  4B DF B0 79 */	bl Matrix_rotateXYZ
/* 80611920  3C 60 80 6D */	lis r3, unit_axis@ha /* 0x806D2BB8@ha */
/* 80611924  38 9F 00 40 */	addi r4, r31, 0x40
/* 80611928  38 63 2B B8 */	addi r3, r3, unit_axis@l /* 0x806D2BB8@l */
/* 8061192C  4B DF BA D9 */	bl Matrix_Position
/* 80611930  4B A4 B3 C5 */	bl fqrand
/* 80611934  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064C3F0@ha */
/* 80611938  C0 03 C3 F0 */	lfs f0, lit_394@l(r3)  /* 0x8064C3F0@l */
/* 8061193C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80611940  FC 00 00 1E */	fctiwz f0, f0
/* 80611944  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80611948  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061194C  20 00 00 5A */	subfic r0, r0, 0x5a
/* 80611950  B0 1F 00 00 */	sth r0, 0(r31)
/* 80611954  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80611958  39 61 00 50 */	addi r11, r1, 0x50
/* 8061195C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80611960  4B A8 95 BD */	bl func_8009AF1C
/* 80611964  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80611968  7C 08 03 A6 */	mtlr r0
/* 8061196C  38 21 00 60 */	addi r1, r1, 0x60
/* 80611970  4E 80 00 20 */	blr 
