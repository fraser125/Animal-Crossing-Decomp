lbl_80590858:
/* 80590858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059085C  7C 08 02 A6 */	mflr r0
/* 80590860  90 01 00 34 */	stw r0, 0x34(r1)
/* 80590864  39 61 00 30 */	addi r11, r1, 0x30
/* 80590868  4B B0 A6 6D */	bl func_8009AED4
/* 8059086C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80590870  7C 7F 1B 78 */	mr r31, r3
/* 80590874  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80590878  7C 9D 23 78 */	mr r29, r4
/* 8059087C  3F C5 00 02 */	addis r30, r5, 2
/* 80590880  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 80590884  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80590888  7D 89 03 A6 */	mtctr r12
/* 8059088C  4E 80 04 21 */	bctrl 
/* 80590890  2C 03 00 01 */	cmpwi r3, 1
/* 80590894  40 82 00 9C */	bne lbl_80590930
/* 80590898  3C 60 80 59 */	lis r3, aGH0_schedule_proc@ha /* 0x8059104C@ha */
/* 8059089C  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C27F4@ha */
/* 805908A0  38 03 10 4C */	addi r0, r3, aGH0_schedule_proc@l /* 0x8059104C@l */
/* 805908A4  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 805908A8  38 A4 27 F4 */	addi r5, r4, ct_data@l /* 0x806C27F4@l */
/* 805908AC  7F E3 FB 78 */	mr r3, r31
/* 805908B0  7F A4 EB 78 */	mr r4, r29
/* 805908B4  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 805908B8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 805908BC  7D 89 03 A6 */	mtctr r12
/* 805908C0  4E 80 04 21 */	bctrl 
/* 805908C4  38 00 00 01 */	li r0, 1
/* 805908C8  98 1F 07 52 */	stb r0, 0x752(r31)
/* 805908CC  4B AC C4 29 */	bl fqrand
/* 805908D0  3C 60 80 65 */	lis r3, lit_468@ha /* 0x80649C68@ha */
/* 805908D4  3C 00 43 30 */	lis r0, 0x4330
/* 805908D8  38 83 9C 68 */	addi r4, r3, lit_468@l /* 0x80649C68@l */
/* 805908DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805908E0  C0 04 00 00 */	lfs f0, 0(r4)
/* 805908E4  3C 60 80 65 */	lis r3, lit_472@ha /* 0x80649C74@ha */
/* 805908E8  38 A3 9C 74 */	addi r5, r3, lit_472@l /* 0x80649C74@l */
/* 805908EC  3C 80 80 65 */	lis r4, data_80649C64@ha /* 0x80649C64@ha */
/* 805908F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805908F4  C8 65 00 00 */	lfd f3, 0(r5)
/* 805908F8  C0 44 9C 64 */	lfs f2, data_80649C64@l(r4)  /* 0x80649C64@l */
/* 805908FC  3C 60 80 65 */	lis r3, lit_469@ha /* 0x80649C6C@ha */
/* 80590900  FC 20 00 1E */	fctiwz f1, f0
/* 80590904  C0 03 9C 6C */	lfs f0, lit_469@l(r3)  /* 0x80649C6C@l */
/* 80590908  D8 21 00 08 */	stfd f1, 8(r1)
/* 8059090C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80590910  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80590914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590918  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8059091C  EC 21 18 28 */	fsubs f1, f1, f3
/* 80590920  EC 22 00 72 */	fmuls f1, f2, f1
/* 80590924  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80590928  EC 00 08 2A */	fadds f0, f0, f1
/* 8059092C  D0 1F 07 64 */	stfs f0, 0x764(r31)
lbl_80590930:
/* 80590930  39 61 00 30 */	addi r11, r1, 0x30
/* 80590934  4B B0 A5 ED */	bl func_8009AF20
/* 80590938  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059093C  7C 08 03 A6 */	mtlr r0
/* 80590940  38 21 00 30 */	addi r1, r1, 0x30
/* 80590944  4E 80 00 20 */	blr 
