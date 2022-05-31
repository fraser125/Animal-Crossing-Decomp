lbl_804AD850:
/* 804AD850  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804AD854  7C 08 02 A6 */	mflr r0
/* 804AD858  90 01 00 54 */	stw r0, 0x54(r1)
/* 804AD85C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804AD860  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804AD864  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804AD868  7C 7F 1B 78 */	mr r31, r3
/* 804AD86C  38 61 00 20 */	addi r3, r1, 0x20
/* 804AD870  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804AD874  38 80 00 00 */	li r4, 0
/* 804AD878  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804AD87C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804AD880  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AD884  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804AD888  90 01 00 28 */	stw r0, 0x28(r1)
/* 804AD88C  4B ED B8 21 */	bl mCoBG_Wpos2Attribute
/* 804AD890  38 03 FF F5 */	addi r0, r3, -11
/* 804AD894  28 00 00 0D */	cmplwi r0, 0xd
/* 804AD898  41 81 00 F4 */	bgt lbl_804AD98C
/* 804AD89C  3C 60 80 69 */	lis r3, lit_533@ha /* 0x8068F970@ha */
/* 804AD8A0  54 00 10 3A */	slwi r0, r0, 2
/* 804AD8A4  38 63 F9 70 */	addi r3, r3, lit_533@l /* 0x8068F970@l */
/* 804AD8A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 804AD8AC  7C 09 03 A6 */	mtctr r0
/* 804AD8B0  4E 80 04 20 */	bctr 
lbl_804AD8B4:
/* 804AD8B4  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804AD8B8  3C 60 80 64 */	lis r3, data_80645F24@ha /* 0x80645F24@ha */
/* 804AD8BC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804AD8C0  38 81 00 14 */	addi r4, r1, 0x14
/* 804AD8C4  C0 23 5F 24 */	lfs f1, data_80645F24@l(r3)  /* 0x80645F24@l */
/* 804AD8C8  38 60 00 00 */	li r3, 0
/* 804AD8CC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804AD8D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804AD8D4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804AD8D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804AD8DC  4B EE 1D DD */	bl func_8038F6B8
/* 804AD8E0  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804AD8E4  3C 60 80 69 */	lis r3, lit_524@ha /* 0x8068F95C@ha */
/* 804AD8E8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804AD8EC  38 83 F9 5C */	addi r4, r3, lit_524@l /* 0x8068F95C@l */
/* 804AD8F0  FF E0 08 90 */	fmr f31, f1
/* 804AD8F4  38 61 00 08 */	addi r3, r1, 8
/* 804AD8F8  90 A1 00 08 */	stw r5, 8(r1)
/* 804AD8FC  38 A0 00 ED */	li r5, 0xed
/* 804AD900  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AD904  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804AD908  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AD90C  4B EE 66 AD */	bl mCoBG_GetWaterHeight_File
/* 804AD910  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80645F54@ha */
/* 804AD914  EC 61 F8 28 */	fsubs f3, f1, f31
/* 804AD918  3C 80 80 64 */	lis r4, lit_525@ha /* 0x80645F4C@ha */
/* 804AD91C  C0 03 5F 54 */	lfs f0, lit_527@l(r3)  /* 0x80645F54@l */
/* 804AD920  C0 24 5F 4C */	lfs f1, lit_525@l(r4)  /* 0x80645F4C@l */
/* 804AD924  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804AD928  D0 3F 02 0C */	stfs f1, 0x20c(r31)
/* 804AD92C  40 80 00 10 */	bge lbl_804AD93C
/* 804AD930  3C 60 80 64 */	lis r3, data_80645F24@ha /* 0x80645F24@ha */
/* 804AD934  C0 43 5F 24 */	lfs f2, data_80645F24@l(r3)  /* 0x80645F24@l */
/* 804AD938  48 00 00 0C */	b lbl_804AD944
lbl_804AD93C:
/* 804AD93C  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80645F50@ha */
/* 804AD940  C0 43 5F 50 */	lfs f2, lit_526@l(r3)  /* 0x80645F50@l */
lbl_804AD944:
/* 804AD944  A8 1F 01 D8 */	lha r0, 0x1d8(r31)
/* 804AD948  2C 00 00 06 */	cmpwi r0, 6
/* 804AD94C  40 82 00 AC */	bne lbl_804AD9F8
/* 804AD950  3C 60 80 64 */	lis r3, lit_528@ha /* 0x80645F58@ha */
/* 804AD954  C0 03 5F 58 */	lfs f0, lit_528@l(r3)  /* 0x80645F58@l */
/* 804AD958  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804AD95C  40 80 00 9C */	bge lbl_804AD9F8
/* 804AD960  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 804AD964  3C 63 00 01 */	addis r3, r3, 1
/* 804AD968  38 03 80 00 */	addi r0, r3, -32768
/* 804AD96C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804AD970  48 00 00 88 */	b lbl_804AD9F8
lbl_804AD974:
/* 804AD974  3C 80 80 64 */	lis r4, lit_529@ha /* 0x80645F5C@ha */
/* 804AD978  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80645F50@ha */
/* 804AD97C  C0 04 5F 5C */	lfs f0, lit_529@l(r4)  /* 0x80645F5C@l */
/* 804AD980  C0 43 5F 50 */	lfs f2, lit_526@l(r3)  /* 0x80645F50@l */
/* 804AD984  D0 1F 02 0C */	stfs f0, 0x20c(r31)
/* 804AD988  48 00 00 70 */	b lbl_804AD9F8
lbl_804AD98C:
/* 804AD98C  A8 1F 01 D8 */	lha r0, 0x1d8(r31)
/* 804AD990  2C 00 00 04 */	cmpwi r0, 4
/* 804AD994  40 82 00 50 */	bne lbl_804AD9E4
/* 804AD998  A8 1F 02 64 */	lha r0, 0x264(r31)
/* 804AD99C  2C 00 00 00 */	cmpwi r0, 0
/* 804AD9A0  41 82 00 1C */	beq lbl_804AD9BC
/* 804AD9A4  3C 80 80 64 */	lis r4, lit_530@ha /* 0x80645F60@ha */
/* 804AD9A8  3C 60 80 64 */	lis r3, data_80645F24@ha /* 0x80645F24@ha */
/* 804AD9AC  C0 04 5F 60 */	lfs f0, lit_530@l(r4)  /* 0x80645F60@l */
/* 804AD9B0  C0 43 5F 24 */	lfs f2, data_80645F24@l(r3)  /* 0x80645F24@l */
/* 804AD9B4  D0 1F 02 0C */	stfs f0, 0x20c(r31)
/* 804AD9B8  48 00 00 40 */	b lbl_804AD9F8
lbl_804AD9BC:
/* 804AD9BC  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80645F64@ha */
/* 804AD9C0  3C 80 80 64 */	lis r4, lit_532@ha /* 0x80645F68@ha */
/* 804AD9C4  38 A3 5F 64 */	addi r5, r3, lit_531@l /* 0x80645F64@l */
/* 804AD9C8  C0 44 5F 68 */	lfs f2, lit_532@l(r4)  /* 0x80645F68@l */
/* 804AD9CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804AD9D0  38 7F 02 0C */	addi r3, r31, 0x20c
/* 804AD9D4  4B F0 D2 95 */	bl chase_f
/* 804AD9D8  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80645F50@ha */
/* 804AD9DC  C0 43 5F 50 */	lfs f2, lit_526@l(r3)  /* 0x80645F50@l */
/* 804AD9E0  48 00 00 18 */	b lbl_804AD9F8
lbl_804AD9E4:
/* 804AD9E4  3C 80 80 64 */	lis r4, lit_530@ha /* 0x80645F60@ha */
/* 804AD9E8  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80645F50@ha */
/* 804AD9EC  C0 04 5F 60 */	lfs f0, lit_530@l(r4)  /* 0x80645F60@l */
/* 804AD9F0  C0 43 5F 50 */	lfs f2, lit_526@l(r3)  /* 0x80645F50@l */
/* 804AD9F4  D0 1F 02 0C */	stfs f0, 0x20c(r31)
lbl_804AD9F8:
/* 804AD9F8  A8 1F 01 D8 */	lha r0, 0x1d8(r31)
/* 804AD9FC  2C 00 00 03 */	cmpwi r0, 3
/* 804ADA00  41 82 00 20 */	beq lbl_804ADA20
/* 804ADA04  40 80 00 10 */	bge lbl_804ADA14
/* 804ADA08  2C 00 00 00 */	cmpwi r0, 0
/* 804ADA0C  41 82 00 14 */	beq lbl_804ADA20
/* 804ADA10  48 00 00 30 */	b lbl_804ADA40
lbl_804ADA14:
/* 804ADA14  2C 00 00 05 */	cmpwi r0, 5
/* 804ADA18  41 82 00 08 */	beq lbl_804ADA20
/* 804ADA1C  48 00 00 24 */	b lbl_804ADA40
lbl_804ADA20:
/* 804ADA20  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 804ADA24  7F E4 FB 78 */	mr r4, r31
/* 804ADA28  38 60 00 00 */	li r3, 0
/* 804ADA2C  38 A0 00 01 */	li r5, 1
/* 804ADA30  38 C0 00 01 */	li r6, 1
/* 804ADA34  38 E0 00 01 */	li r7, 1
/* 804ADA38  4B ED C3 69 */	bl mCoBG_BgCheckControll
/* 804ADA3C  48 00 00 20 */	b lbl_804ADA5C
lbl_804ADA40:
/* 804ADA40  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 804ADA44  7F E4 FB 78 */	mr r4, r31
/* 804ADA48  38 60 00 00 */	li r3, 0
/* 804ADA4C  38 A0 00 01 */	li r5, 1
/* 804ADA50  38 C0 00 00 */	li r6, 0
/* 804ADA54  38 E0 00 01 */	li r7, 1
/* 804ADA58  4B ED C3 49 */	bl mCoBG_BgCheckControll
lbl_804ADA5C:
/* 804ADA5C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804ADA60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804ADA64  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804ADA68  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804ADA6C  7C 08 03 A6 */	mtlr r0
/* 804ADA70  38 21 00 50 */	addi r1, r1, 0x50
/* 804ADA74  4E 80 00 20 */	blr 
