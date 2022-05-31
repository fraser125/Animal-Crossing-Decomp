lbl_805D42E0:
/* 805D42E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D42E4  7C 08 02 A6 */	mflr r0
/* 805D42E8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D42EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D42F0  38 00 00 01 */	li r0, 1
/* 805D42F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D42F8  7C 7F 1B 78 */	mr r31, r3
/* 805D42FC  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805D4300  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4304  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 805D4308  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D430C  90 1F 06 C4 */	stw r0, 0x6c4(r31)
/* 805D4310  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 805D4314  28 00 00 00 */	cmplwi r0, 0
/* 805D4318  40 82 01 30 */	bne lbl_805D4448
/* 805D431C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D4320  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D4324  4B DC 1B 4D */	bl chkButton
/* 805D4328  2C 03 00 00 */	cmpwi r3, 0
/* 805D432C  41 82 01 1C */	beq lbl_805D4448
/* 805D4330  38 00 00 03 */	li r0, 3
/* 805D4334  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D4338  90 1F 06 C4 */	stw r0, 0x6c4(r31)
/* 805D433C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D4340  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4344  A8 03 16 BA */	lha r0, 0x16ba(r3)
/* 805D4348  2C 00 00 00 */	cmpwi r0, 0
/* 805D434C  41 82 00 40 */	beq lbl_805D438C
/* 805D4350  A8 03 16 B8 */	lha r0, 0x16b8(r3)
/* 805D4354  2C 00 00 00 */	cmpwi r0, 0
/* 805D4358  41 82 00 10 */	beq lbl_805D4368
/* 805D435C  38 00 00 05 */	li r0, 5
/* 805D4360  90 1F 06 BC */	stw r0, 0x6bc(r31)
/* 805D4364  48 00 00 60 */	b lbl_805D43C4
lbl_805D4368:
/* 805D4368  A8 03 16 B6 */	lha r0, 0x16b6(r3)
/* 805D436C  2C 00 00 00 */	cmpwi r0, 0
/* 805D4370  41 82 00 10 */	beq lbl_805D4380
/* 805D4374  38 00 00 04 */	li r0, 4
/* 805D4378  90 1F 06 BC */	stw r0, 0x6bc(r31)
/* 805D437C  48 00 00 48 */	b lbl_805D43C4
lbl_805D4380:
/* 805D4380  A8 03 16 BE */	lha r0, 0x16be(r3)
/* 805D4384  90 1F 06 BC */	stw r0, 0x6bc(r31)
/* 805D4388  48 00 00 3C */	b lbl_805D43C4
lbl_805D438C:
/* 805D438C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D4390  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D4394  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4398  88 03 00 16 */	lbz r0, 0x16(r3)
/* 805D439C  7C 00 07 75 */	extsb. r0, r0
/* 805D43A0  40 82 00 10 */	bne lbl_805D43B0
/* 805D43A4  88 03 00 17 */	lbz r0, 0x17(r3)
/* 805D43A8  7C 00 07 75 */	extsb. r0, r0
/* 805D43AC  41 82 00 10 */	beq lbl_805D43BC
lbl_805D43B0:
/* 805D43B0  38 00 00 05 */	li r0, 5
/* 805D43B4  90 1F 06 BC */	stw r0, 0x6bc(r31)
/* 805D43B8  48 00 00 0C */	b lbl_805D43C4
lbl_805D43BC:
/* 805D43BC  38 00 00 04 */	li r0, 4
/* 805D43C0  90 1F 06 BC */	stw r0, 0x6bc(r31)
lbl_805D43C4:
/* 805D43C4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D43C8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D43CC  80 63 00 00 */	lwz r3, 0(r3)
/* 805D43D0  88 03 00 17 */	lbz r0, 0x17(r3)
/* 805D43D4  7C 00 07 75 */	extsb. r0, r0
/* 805D43D8  40 82 01 48 */	bne lbl_805D4520
/* 805D43DC  88 03 00 16 */	lbz r0, 0x16(r3)
/* 805D43E0  7C 00 07 75 */	extsb. r0, r0
/* 805D43E4  40 82 01 3C */	bne lbl_805D4520
/* 805D43E8  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 805D43EC  3C 60 43 30 */	lis r3, 0x4330
/* 805D43F0  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D43F4  3C A0 80 65 */	lis r5, lit_1675@ha /* 0x8064B17C@ha */
/* 805D43F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D43FC  90 61 00 08 */	stw r3, 8(r1)
/* 805D4400  C8 24 B1 74 */	lfd f1, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D4404  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D4408  38 00 00 00 */	li r0, 0
/* 805D440C  C0 45 B1 7C */	lfs f2, lit_1675@l(r5)  /* 0x8064B17C@l */
/* 805D4410  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D4414  90 61 00 10 */	stw r3, 0x10(r1)
/* 805D4418  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D441C  EC 02 00 2A */	fadds f0, f2, f0
/* 805D4420  D0 1F 06 60 */	stfs f0, 0x660(r31)
/* 805D4424  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 805D4428  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D442C  90 61 00 14 */	stw r3, 0x14(r1)
/* 805D4430  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D4434  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D4438  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D443C  D0 1F 06 64 */	stfs f0, 0x664(r31)
/* 805D4440  98 1F 06 DC */	stb r0, 0x6dc(r31)
/* 805D4444  48 00 00 DC */	b lbl_805D4520
lbl_805D4448:
/* 805D4448  3C 60 80 65 */	lis r3, lit_447@ha /* 0x8064B120@ha */
/* 805D444C  C0 3F 06 C8 */	lfs f1, 0x6c8(r31)
/* 805D4450  C0 03 B1 20 */	lfs f0, lit_447@l(r3)  /* 0x8064B120@l */
/* 805D4454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4458  40 81 00 68 */	ble lbl_805D44C0
/* 805D445C  38 60 00 03 */	li r3, 3
/* 805D4460  3C 00 43 30 */	lis r0, 0x4330
/* 805D4464  90 7F 06 BC */	stw r3, 0x6bc(r31)
/* 805D4468  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064B174@ha */
/* 805D446C  38 83 B1 74 */	addi r4, r3, lit_609@l /* 0x8064B174@l */
/* 805D4470  3C A0 80 65 */	lis r5, lit_1675@ha /* 0x8064B17C@ha */
/* 805D4474  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 805D4478  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D447C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D4480  C8 24 00 00 */	lfd f1, 0(r4)
/* 805D4484  90 61 00 14 */	stw r3, 0x14(r1)
/* 805D4488  C0 45 B1 7C */	lfs f2, lit_1675@l(r5)  /* 0x8064B17C@l */
/* 805D448C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D4490  90 01 00 08 */	stw r0, 8(r1)
/* 805D4494  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D4498  EC 02 00 2A */	fadds f0, f2, f0
/* 805D449C  D0 1F 06 60 */	stfs f0, 0x660(r31)
/* 805D44A0  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 805D44A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D44A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D44AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D44B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D44B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D44B8  D0 1F 06 64 */	stfs f0, 0x664(r31)
/* 805D44BC  48 00 00 64 */	b lbl_805D4520
lbl_805D44C0:
/* 805D44C0  38 60 00 04 */	li r3, 4
/* 805D44C4  3C 00 43 30 */	lis r0, 0x4330
/* 805D44C8  90 7F 06 BC */	stw r3, 0x6bc(r31)
/* 805D44CC  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064B174@ha */
/* 805D44D0  38 83 B1 74 */	addi r4, r3, lit_609@l /* 0x8064B174@l */
/* 805D44D4  3C A0 80 65 */	lis r5, lit_1675@ha /* 0x8064B17C@ha */
/* 805D44D8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 805D44DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D44E0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D44E4  C8 24 00 00 */	lfd f1, 0(r4)
/* 805D44E8  90 61 00 14 */	stw r3, 0x14(r1)
/* 805D44EC  C0 45 B1 7C */	lfs f2, lit_1675@l(r5)  /* 0x8064B17C@l */
/* 805D44F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D44F4  90 01 00 08 */	stw r0, 8(r1)
/* 805D44F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D44FC  EC 02 00 2A */	fadds f0, f2, f0
/* 805D4500  D0 1F 06 60 */	stfs f0, 0x660(r31)
/* 805D4504  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 805D4508  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D450C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D4510  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D4514  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D4518  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D451C  D0 1F 06 64 */	stfs f0, 0x664(r31)
lbl_805D4520:
/* 805D4520  7F E3 FB 78 */	mr r3, r31
/* 805D4524  4B FF CE A1 */	bl mDE_judge_stick_nuetral
/* 805D4528  7F E3 FB 78 */	mr r3, r31
/* 805D452C  4B FF CE 51 */	bl mDE_judge_stick_full
/* 805D4530  7F E3 FB 78 */	mr r3, r31
/* 805D4534  4B FF CD 95 */	bl mDE_judge_stick
/* 805D4538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D453C  41 82 00 D8 */	beq lbl_805D4614
/* 805D4540  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D4544  28 00 00 00 */	cmplwi r0, 0
/* 805D4548  41 82 00 24 */	beq lbl_805D456C
/* 805D454C  88 1F 06 99 */	lbz r0, 0x699(r31)
/* 805D4550  28 00 00 09 */	cmplwi r0, 9
/* 805D4554  41 82 00 18 */	beq lbl_805D456C
/* 805D4558  7F E3 FB 78 */	mr r3, r31
/* 805D455C  4B FF F8 A9 */	bl mDE_mode_stick_control_waku
/* 805D4560  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 805D4564  98 1F 06 D9 */	stb r0, 0x6d9(r31)
/* 805D4568  48 00 00 AC */	b lbl_805D4614
lbl_805D456C:
/* 805D456C  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 805D4570  28 00 00 00 */	cmplwi r0, 0
/* 805D4574  40 82 00 98 */	bne lbl_805D460C
/* 805D4578  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D457C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D4580  4B DC 18 F1 */	bl chkButton
/* 805D4584  2C 03 00 00 */	cmpwi r3, 0
/* 805D4588  41 82 00 84 */	beq lbl_805D460C
/* 805D458C  88 1F 06 DC */	lbz r0, 0x6dc(r31)
/* 805D4590  28 00 00 00 */	cmplwi r0, 0
/* 805D4594  41 82 00 10 */	beq lbl_805D45A4
/* 805D4598  7F E3 FB 78 */	mr r3, r31
/* 805D459C  4B FF FC 19 */	bl mDE_mode_stick_control_analog
/* 805D45A0  48 00 00 74 */	b lbl_805D4614
lbl_805D45A4:
/* 805D45A4  38 00 00 01 */	li r0, 1
/* 805D45A8  7F E3 FB 78 */	mr r3, r31
/* 805D45AC  98 1F 06 DC */	stb r0, 0x6dc(r31)
/* 805D45B0  4B FF FA 05 */	bl mDE_mode_stick_control
/* 805D45B4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 805D45B8  3C 00 43 30 */	lis r0, 0x4330
/* 805D45BC  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D45C0  3C A0 80 65 */	lis r5, lit_1675@ha /* 0x8064B17C@ha */
/* 805D45C4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805D45C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D45CC  C8 24 B1 74 */	lfd f1, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D45D0  90 61 00 14 */	stw r3, 0x14(r1)
/* 805D45D4  C0 45 B1 7C */	lfs f2, lit_1675@l(r5)  /* 0x8064B17C@l */
/* 805D45D8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D45DC  90 01 00 08 */	stw r0, 8(r1)
/* 805D45E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D45E4  EC 02 00 2A */	fadds f0, f2, f0
/* 805D45E8  D0 1F 06 60 */	stfs f0, 0x660(r31)
/* 805D45EC  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 805D45F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D45F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D45F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D45FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D4600  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D4604  D0 1F 06 64 */	stfs f0, 0x664(r31)
/* 805D4608  48 00 00 0C */	b lbl_805D4614
lbl_805D460C:
/* 805D460C  7F E3 FB 78 */	mr r3, r31
/* 805D4610  4B FF F9 A5 */	bl mDE_mode_stick_control
lbl_805D4614:
/* 805D4614  38 60 40 00 */	li r3, 0x4000
/* 805D4618  4B DC 18 F9 */	bl chkTrigger
/* 805D461C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4620  41 82 00 30 */	beq lbl_805D4650
/* 805D4624  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D4628  28 00 00 00 */	cmplwi r0, 0
/* 805D462C  40 82 00 24 */	bne lbl_805D4650
/* 805D4630  38 00 00 01 */	li r0, 1
/* 805D4634  7F E3 FB 78 */	mr r3, r31
/* 805D4638  98 1F 06 CD */	stb r0, 0x6cd(r31)
/* 805D463C  80 9F 06 68 */	lwz r4, 0x668(r31)
/* 805D4640  80 BF 06 6C */	lwz r5, 0x66c(r31)
/* 805D4644  4B FF D8 5D */	bl mDE_get_pal_on_cursor
/* 805D4648  98 7F 06 A4 */	stb r3, 0x6a4(r31)
/* 805D464C  48 00 00 68 */	b lbl_805D46B4
lbl_805D4650:
/* 805D4650  38 60 40 00 */	li r3, 0x4000
/* 805D4654  4B DC 18 1D */	bl chkButton
/* 805D4658  2C 03 00 00 */	cmpwi r3, 0
/* 805D465C  41 82 00 3C */	beq lbl_805D4698
/* 805D4660  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D4664  28 00 00 00 */	cmplwi r0, 0
/* 805D4668  40 82 00 30 */	bne lbl_805D4698
/* 805D466C  88 1F 06 CD */	lbz r0, 0x6cd(r31)
/* 805D4670  28 00 00 00 */	cmplwi r0, 0
/* 805D4674  41 82 00 24 */	beq lbl_805D4698
/* 805D4678  38 00 00 01 */	li r0, 1
/* 805D467C  7F E3 FB 78 */	mr r3, r31
/* 805D4680  98 1F 06 DB */	stb r0, 0x6db(r31)
/* 805D4684  80 9F 06 68 */	lwz r4, 0x668(r31)
/* 805D4688  80 BF 06 6C */	lwz r5, 0x66c(r31)
/* 805D468C  4B FF D8 15 */	bl mDE_get_pal_on_cursor
/* 805D4690  98 7F 06 A4 */	stb r3, 0x6a4(r31)
/* 805D4694  48 00 00 20 */	b lbl_805D46B4
lbl_805D4698:
/* 805D4698  88 1F 06 DB */	lbz r0, 0x6db(r31)
/* 805D469C  28 00 00 00 */	cmplwi r0, 0
/* 805D46A0  41 82 00 14 */	beq lbl_805D46B4
/* 805D46A4  38 00 00 00 */	li r0, 0
/* 805D46A8  38 60 04 5D */	li r3, 0x45d
/* 805D46AC  98 1F 06 DB */	stb r0, 0x6db(r31)
/* 805D46B0  48 05 96 55 */	bl sAdo_SysTrgStart
lbl_805D46B4:
/* 805D46B4  38 00 00 04 */	li r0, 4
/* 805D46B8  38 60 00 04 */	li r3, 4
/* 805D46BC  90 1F 06 D4 */	stw r0, 0x6d4(r31)
/* 805D46C0  4B DC 18 51 */	bl chkTrigger
/* 805D46C4  2C 03 00 00 */	cmpwi r3, 0
/* 805D46C8  41 82 00 2C */	beq lbl_805D46F4
/* 805D46CC  38 60 00 01 */	li r3, 1
/* 805D46D0  38 00 00 00 */	li r0, 0
/* 805D46D4  98 7F 06 CE */	stb r3, 0x6ce(r31)
/* 805D46D8  38 60 04 59 */	li r3, 0x459
/* 805D46DC  88 9F 06 A4 */	lbz r4, 0x6a4(r31)
/* 805D46E0  38 84 00 01 */	addi r4, r4, 1
/* 805D46E4  98 9F 06 A4 */	stb r4, 0x6a4(r31)
/* 805D46E8  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 805D46EC  48 05 96 19 */	bl sAdo_SysTrgStart
/* 805D46F0  48 00 00 64 */	b lbl_805D4754
lbl_805D46F4:
/* 805D46F4  38 60 00 04 */	li r3, 4
/* 805D46F8  4B DC 17 79 */	bl chkButton
/* 805D46FC  2C 03 00 00 */	cmpwi r3, 0
/* 805D4700  41 82 00 4C */	beq lbl_805D474C
/* 805D4704  88 1F 06 CE */	lbz r0, 0x6ce(r31)
/* 805D4708  28 00 00 00 */	cmplwi r0, 0
/* 805D470C  41 82 00 40 */	beq lbl_805D474C
/* 805D4710  80 7F 06 D0 */	lwz r3, 0x6d0(r31)
/* 805D4714  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 805D4718  7C 03 00 40 */	cmplw r3, r0
/* 805D471C  40 81 00 24 */	ble lbl_805D4740
/* 805D4720  88 9F 06 A4 */	lbz r4, 0x6a4(r31)
/* 805D4724  38 00 00 00 */	li r0, 0
/* 805D4728  38 60 04 59 */	li r3, 0x459
/* 805D472C  38 84 00 01 */	addi r4, r4, 1
/* 805D4730  98 9F 06 A4 */	stb r4, 0x6a4(r31)
/* 805D4734  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 805D4738  48 05 95 CD */	bl sAdo_SysTrgStart
/* 805D473C  48 00 00 18 */	b lbl_805D4754
lbl_805D4740:
/* 805D4740  38 03 00 01 */	addi r0, r3, 1
/* 805D4744  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 805D4748  48 00 00 0C */	b lbl_805D4754
lbl_805D474C:
/* 805D474C  38 00 00 00 */	li r0, 0
/* 805D4750  98 1F 06 CE */	stb r0, 0x6ce(r31)
lbl_805D4754:
/* 805D4754  38 60 00 08 */	li r3, 8
/* 805D4758  4B DC 17 B9 */	bl chkTrigger
/* 805D475C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4760  41 82 00 2C */	beq lbl_805D478C
/* 805D4764  38 60 00 01 */	li r3, 1
/* 805D4768  38 00 00 00 */	li r0, 0
/* 805D476C  98 7F 06 CF */	stb r3, 0x6cf(r31)
/* 805D4770  38 60 04 59 */	li r3, 0x459
/* 805D4774  88 9F 06 A4 */	lbz r4, 0x6a4(r31)
/* 805D4778  38 84 FF FF */	addi r4, r4, -1
/* 805D477C  98 9F 06 A4 */	stb r4, 0x6a4(r31)
/* 805D4780  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 805D4784  48 05 95 81 */	bl sAdo_SysTrgStart
/* 805D4788  48 00 00 64 */	b lbl_805D47EC
lbl_805D478C:
/* 805D478C  38 60 00 08 */	li r3, 8
/* 805D4790  4B DC 16 E1 */	bl chkButton
/* 805D4794  2C 03 00 00 */	cmpwi r3, 0
/* 805D4798  41 82 00 4C */	beq lbl_805D47E4
/* 805D479C  88 1F 06 CF */	lbz r0, 0x6cf(r31)
/* 805D47A0  28 00 00 00 */	cmplwi r0, 0
/* 805D47A4  41 82 00 40 */	beq lbl_805D47E4
/* 805D47A8  80 7F 06 D0 */	lwz r3, 0x6d0(r31)
/* 805D47AC  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 805D47B0  7C 03 00 40 */	cmplw r3, r0
/* 805D47B4  40 81 00 24 */	ble lbl_805D47D8
/* 805D47B8  88 9F 06 A4 */	lbz r4, 0x6a4(r31)
/* 805D47BC  38 00 00 00 */	li r0, 0
/* 805D47C0  38 60 04 59 */	li r3, 0x459
/* 805D47C4  38 84 FF FF */	addi r4, r4, -1
/* 805D47C8  98 9F 06 A4 */	stb r4, 0x6a4(r31)
/* 805D47CC  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 805D47D0  48 05 95 35 */	bl sAdo_SysTrgStart
/* 805D47D4  48 00 00 18 */	b lbl_805D47EC
lbl_805D47D8:
/* 805D47D8  38 03 00 01 */	addi r0, r3, 1
/* 805D47DC  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 805D47E0  48 00 00 0C */	b lbl_805D47EC
lbl_805D47E4:
/* 805D47E4  38 00 00 00 */	li r0, 0
/* 805D47E8  98 1F 06 CF */	stb r0, 0x6cf(r31)
lbl_805D47EC:
/* 805D47EC  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 805D47F0  98 1F 06 A5 */	stb r0, 0x6a5(r31)
/* 805D47F4  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 805D47F8  28 00 00 10 */	cmplwi r0, 0x10
/* 805D47FC  41 80 00 0C */	blt lbl_805D4808
/* 805D4800  38 00 00 01 */	li r0, 1
/* 805D4804  98 1F 06 A4 */	stb r0, 0x6a4(r31)
lbl_805D4808:
/* 805D4808  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 805D480C  28 00 00 01 */	cmplwi r0, 1
/* 805D4810  40 80 00 0C */	bge lbl_805D481C
/* 805D4814  38 00 00 0F */	li r0, 0xf
/* 805D4818  98 1F 06 A4 */	stb r0, 0x6a4(r31)
lbl_805D481C:
/* 805D481C  88 1F 06 9F */	lbz r0, 0x69f(r31)
/* 805D4820  28 00 00 00 */	cmplwi r0, 0
/* 805D4824  40 82 00 64 */	bne lbl_805D4888
/* 805D4828  7F E3 FB 78 */	mr r3, r31
/* 805D482C  38 80 00 00 */	li r4, 0
/* 805D4830  38 A0 00 03 */	li r5, 3
/* 805D4834  38 C0 00 00 */	li r6, 0
/* 805D4838  38 E0 00 06 */	li r7, 6
/* 805D483C  4B FF F0 19 */	bl mDE_mode_tool_check
/* 805D4840  2C 03 00 00 */	cmpwi r3, 0
/* 805D4844  41 82 00 0C */	beq lbl_805D4850
/* 805D4848  38 60 00 32 */	li r3, 0x32
/* 805D484C  48 05 94 B9 */	bl sAdo_SysTrgStart
lbl_805D4850:
/* 805D4850  38 60 02 00 */	li r3, 0x200
/* 805D4854  4B DC 16 BD */	bl chkTrigger
/* 805D4858  2C 03 00 00 */	cmpwi r3, 0
/* 805D485C  40 82 00 14 */	bne lbl_805D4870
/* 805D4860  38 60 01 00 */	li r3, 0x100
/* 805D4864  4B DC 16 AD */	bl chkTrigger
/* 805D4868  2C 03 00 00 */	cmpwi r3, 0
/* 805D486C  41 82 00 0C */	beq lbl_805D4878
lbl_805D4870:
/* 805D4870  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D4874  98 1F 06 A0 */	stb r0, 0x6a0(r31)
lbl_805D4878:
/* 805D4878  7F E3 FB 78 */	mr r3, r31
/* 805D487C  38 80 00 00 */	li r4, 0
/* 805D4880  4B FF F3 BD */	bl mDE_mode_main_shortcut_tool
/* 805D4884  48 00 02 48 */	b lbl_805D4ACC
lbl_805D4888:
/* 805D4888  28 00 00 01 */	cmplwi r0, 1
/* 805D488C  40 82 00 64 */	bne lbl_805D48F0
/* 805D4890  7F E3 FB 78 */	mr r3, r31
/* 805D4894  38 80 00 00 */	li r4, 0
/* 805D4898  38 A0 00 06 */	li r5, 6
/* 805D489C  38 C0 00 03 */	li r6, 3
/* 805D48A0  38 E0 00 05 */	li r7, 5
/* 805D48A4  4B FF EF B1 */	bl mDE_mode_tool_check
/* 805D48A8  2C 03 00 00 */	cmpwi r3, 0
/* 805D48AC  41 82 00 0C */	beq lbl_805D48B8
/* 805D48B0  38 60 00 32 */	li r3, 0x32
/* 805D48B4  48 05 94 51 */	bl sAdo_SysTrgStart
lbl_805D48B8:
/* 805D48B8  38 60 02 00 */	li r3, 0x200
/* 805D48BC  4B DC 16 55 */	bl chkTrigger
/* 805D48C0  2C 03 00 00 */	cmpwi r3, 0
/* 805D48C4  40 82 00 14 */	bne lbl_805D48D8
/* 805D48C8  38 60 01 00 */	li r3, 0x100
/* 805D48CC  4B DC 16 45 */	bl chkTrigger
/* 805D48D0  2C 03 00 00 */	cmpwi r3, 0
/* 805D48D4  41 82 00 0C */	beq lbl_805D48E0
lbl_805D48D8:
/* 805D48D8  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D48DC  98 1F 06 A1 */	stb r0, 0x6a1(r31)
lbl_805D48E0:
/* 805D48E0  7F E3 FB 78 */	mr r3, r31
/* 805D48E4  38 80 00 01 */	li r4, 1
/* 805D48E8  4B FF F3 55 */	bl mDE_mode_main_shortcut_tool
/* 805D48EC  48 00 01 E0 */	b lbl_805D4ACC
lbl_805D48F0:
/* 805D48F0  28 00 00 02 */	cmplwi r0, 2
/* 805D48F4  40 82 00 BC */	bne lbl_805D49B0
/* 805D48F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D48FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D4900  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805D4904  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D4908  41 82 00 1C */	beq lbl_805D4924
/* 805D490C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D4910  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D4914  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4918  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D491C  2C 00 00 00 */	cmpwi r0, 0
/* 805D4920  41 82 00 30 */	beq lbl_805D4950
lbl_805D4924:
/* 805D4924  7F E3 FB 78 */	mr r3, r31
/* 805D4928  38 80 00 00 */	li r4, 0
/* 805D492C  38 A0 00 05 */	li r5, 5
/* 805D4930  38 C0 00 06 */	li r6, 6
/* 805D4934  38 E0 00 05 */	li r7, 5
/* 805D4938  4B FF EF 1D */	bl mDE_mode_tool_check
/* 805D493C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4940  41 82 00 38 */	beq lbl_805D4978
/* 805D4944  38 60 00 32 */	li r3, 0x32
/* 805D4948  48 05 93 BD */	bl sAdo_SysTrgStart
/* 805D494C  48 00 00 2C */	b lbl_805D4978
lbl_805D4950:
/* 805D4950  7F E3 FB 78 */	mr r3, r31
/* 805D4954  38 80 00 00 */	li r4, 0
/* 805D4958  38 A0 00 05 */	li r5, 5
/* 805D495C  38 C0 00 06 */	li r6, 6
/* 805D4960  38 E0 00 04 */	li r7, 4
/* 805D4964  4B FF EE F1 */	bl mDE_mode_tool_check
/* 805D4968  2C 03 00 00 */	cmpwi r3, 0
/* 805D496C  41 82 00 0C */	beq lbl_805D4978
/* 805D4970  38 60 00 32 */	li r3, 0x32
/* 805D4974  48 05 93 91 */	bl sAdo_SysTrgStart
lbl_805D4978:
/* 805D4978  38 60 02 00 */	li r3, 0x200
/* 805D497C  4B DC 15 95 */	bl chkTrigger
/* 805D4980  2C 03 00 00 */	cmpwi r3, 0
/* 805D4984  40 82 00 14 */	bne lbl_805D4998
/* 805D4988  38 60 01 00 */	li r3, 0x100
/* 805D498C  4B DC 15 85 */	bl chkTrigger
/* 805D4990  2C 03 00 00 */	cmpwi r3, 0
/* 805D4994  41 82 00 0C */	beq lbl_805D49A0
lbl_805D4998:
/* 805D4998  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D499C  98 1F 06 A2 */	stb r0, 0x6a2(r31)
lbl_805D49A0:
/* 805D49A0  7F E3 FB 78 */	mr r3, r31
/* 805D49A4  38 80 00 02 */	li r4, 2
/* 805D49A8  4B FF F2 95 */	bl mDE_mode_main_shortcut_tool
/* 805D49AC  48 00 01 20 */	b lbl_805D4ACC
lbl_805D49B0:
/* 805D49B0  28 00 00 03 */	cmplwi r0, 3
/* 805D49B4  40 82 00 BC */	bne lbl_805D4A70
/* 805D49B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D49BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805D49C0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805D49C4  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D49C8  41 82 00 1C */	beq lbl_805D49E4
/* 805D49CC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D49D0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D49D4  80 63 00 00 */	lwz r3, 0(r3)
/* 805D49D8  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D49DC  2C 00 00 00 */	cmpwi r0, 0
/* 805D49E0  41 82 00 30 */	beq lbl_805D4A10
lbl_805D49E4:
/* 805D49E4  7F E3 FB 78 */	mr r3, r31
/* 805D49E8  38 80 00 00 */	li r4, 0
/* 805D49EC  38 A0 00 05 */	li r5, 5
/* 805D49F0  38 C0 00 05 */	li r6, 5
/* 805D49F4  38 E0 00 01 */	li r7, 1
/* 805D49F8  4B FF EE 5D */	bl mDE_mode_tool_check
/* 805D49FC  2C 03 00 00 */	cmpwi r3, 0
/* 805D4A00  41 82 00 38 */	beq lbl_805D4A38
/* 805D4A04  38 60 00 32 */	li r3, 0x32
/* 805D4A08  48 05 92 FD */	bl sAdo_SysTrgStart
/* 805D4A0C  48 00 00 2C */	b lbl_805D4A38
lbl_805D4A10:
/* 805D4A10  7F E3 FB 78 */	mr r3, r31
/* 805D4A14  38 80 00 00 */	li r4, 0
/* 805D4A18  38 A0 00 04 */	li r5, 4
/* 805D4A1C  38 C0 00 05 */	li r6, 5
/* 805D4A20  38 E0 00 01 */	li r7, 1
/* 805D4A24  4B FF EE 31 */	bl mDE_mode_tool_check
/* 805D4A28  2C 03 00 00 */	cmpwi r3, 0
/* 805D4A2C  41 82 00 0C */	beq lbl_805D4A38
/* 805D4A30  38 60 00 32 */	li r3, 0x32
/* 805D4A34  48 05 92 D1 */	bl sAdo_SysTrgStart
lbl_805D4A38:
/* 805D4A38  38 60 02 00 */	li r3, 0x200
/* 805D4A3C  4B DC 14 D5 */	bl chkTrigger
/* 805D4A40  2C 03 00 00 */	cmpwi r3, 0
/* 805D4A44  40 82 00 14 */	bne lbl_805D4A58
/* 805D4A48  38 60 01 00 */	li r3, 0x100
/* 805D4A4C  4B DC 14 C5 */	bl chkTrigger
/* 805D4A50  2C 03 00 00 */	cmpwi r3, 0
/* 805D4A54  41 82 00 0C */	beq lbl_805D4A60
lbl_805D4A58:
/* 805D4A58  88 1F 06 9E */	lbz r0, 0x69e(r31)
/* 805D4A5C  98 1F 06 A3 */	stb r0, 0x6a3(r31)
lbl_805D4A60:
/* 805D4A60  7F E3 FB 78 */	mr r3, r31
/* 805D4A64  38 80 00 03 */	li r4, 3
/* 805D4A68  4B FF F1 D5 */	bl mDE_mode_main_shortcut_tool
/* 805D4A6C  48 00 00 60 */	b lbl_805D4ACC
lbl_805D4A70:
/* 805D4A70  28 00 00 04 */	cmplwi r0, 4
/* 805D4A74  40 82 00 58 */	bne lbl_805D4ACC
/* 805D4A78  7F E3 FB 78 */	mr r3, r31
/* 805D4A7C  38 80 00 00 */	li r4, 0
/* 805D4A80  38 A0 00 01 */	li r5, 1
/* 805D4A84  38 C0 00 05 */	li r6, 5
/* 805D4A88  38 E0 00 01 */	li r7, 1
/* 805D4A8C  4B FF ED C9 */	bl mDE_mode_tool_check
/* 805D4A90  2C 03 00 00 */	cmpwi r3, 0
/* 805D4A94  41 82 00 2C */	beq lbl_805D4AC0
/* 805D4A98  38 60 02 00 */	li r3, 0x200
/* 805D4A9C  4B DC 14 75 */	bl chkTrigger
/* 805D4AA0  2C 03 00 00 */	cmpwi r3, 0
/* 805D4AA4  40 82 00 1C */	bne lbl_805D4AC0
/* 805D4AA8  38 60 01 00 */	li r3, 0x100
/* 805D4AAC  4B DC 14 65 */	bl chkTrigger
/* 805D4AB0  2C 03 00 00 */	cmpwi r3, 0
/* 805D4AB4  40 82 00 0C */	bne lbl_805D4AC0
/* 805D4AB8  38 60 00 32 */	li r3, 0x32
/* 805D4ABC  48 05 92 49 */	bl sAdo_SysTrgStart
lbl_805D4AC0:
/* 805D4AC0  7F E3 FB 78 */	mr r3, r31
/* 805D4AC4  38 80 00 04 */	li r4, 4
/* 805D4AC8  4B FF F1 75 */	bl mDE_mode_main_shortcut_tool
lbl_805D4ACC:
/* 805D4ACC  38 60 00 40 */	li r3, 0x40
/* 805D4AD0  4B DC 14 41 */	bl chkTrigger
/* 805D4AD4  2C 03 00 00 */	cmpwi r3, 0
/* 805D4AD8  41 82 00 34 */	beq lbl_805D4B0C
/* 805D4ADC  88 1F 06 9D */	lbz r0, 0x69d(r31)
/* 805D4AE0  7C 00 00 34 */	cntlzw r0, r0
/* 805D4AE4  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 805D4AE8  98 1F 06 9D */	stb r0, 0x69d(r31)
/* 805D4AEC  88 1F 06 9D */	lbz r0, 0x69d(r31)
/* 805D4AF0  28 00 00 00 */	cmplwi r0, 0
/* 805D4AF4  40 82 00 10 */	bne lbl_805D4B04
/* 805D4AF8  38 60 04 57 */	li r3, 0x457
/* 805D4AFC  48 05 92 09 */	bl sAdo_SysTrgStart
/* 805D4B00  48 00 00 0C */	b lbl_805D4B0C
lbl_805D4B04:
/* 805D4B04  38 60 04 56 */	li r3, 0x456
/* 805D4B08  48 05 91 FD */	bl sAdo_SysTrgStart
lbl_805D4B0C:
/* 805D4B0C  38 60 00 80 */	li r3, 0x80
/* 805D4B10  4B DC 14 01 */	bl chkTrigger
/* 805D4B14  2C 03 00 00 */	cmpwi r3, 0
/* 805D4B18  41 82 00 0C */	beq lbl_805D4B24
/* 805D4B1C  7F E3 FB 78 */	mr r3, r31
/* 805D4B20  4B FF DE 45 */	bl mDE_undo
lbl_805D4B24:
/* 805D4B24  38 60 20 00 */	li r3, 0x2000
/* 805D4B28  4B DC 13 49 */	bl chkButton
/* 805D4B2C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4B30  41 82 00 0C */	beq lbl_805D4B3C
/* 805D4B34  7F E3 FB 78 */	mr r3, r31
/* 805D4B38  4B FF DD 7D */	bl mDE_print_texture
lbl_805D4B3C:
/* 805D4B3C  81 9F 06 B0 */	lwz r12, 0x6b0(r31)
/* 805D4B40  7F E3 FB 78 */	mr r3, r31
/* 805D4B44  7D 89 03 A6 */	mtctr r12
/* 805D4B48  4E 80 04 21 */	bctrl 
/* 805D4B4C  38 60 40 00 */	li r3, 0x4000
/* 805D4B50  4B DC 13 21 */	bl chkButton
/* 805D4B54  2C 03 00 00 */	cmpwi r3, 0
/* 805D4B58  41 82 00 24 */	beq lbl_805D4B7C
/* 805D4B5C  88 1F 06 9A */	lbz r0, 0x69a(r31)
/* 805D4B60  28 00 00 00 */	cmplwi r0, 0
/* 805D4B64  40 82 00 18 */	bne lbl_805D4B7C
/* 805D4B68  88 1F 06 CD */	lbz r0, 0x6cd(r31)
/* 805D4B6C  28 00 00 00 */	cmplwi r0, 0
/* 805D4B70  41 82 00 0C */	beq lbl_805D4B7C
/* 805D4B74  38 00 00 08 */	li r0, 8
/* 805D4B78  98 1F 06 99 */	stb r0, 0x699(r31)
lbl_805D4B7C:
/* 805D4B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D4B80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D4B84  7C 08 03 A6 */	mtlr r0
/* 805D4B88  38 21 00 20 */	addi r1, r1, 0x20
/* 805D4B8C  4E 80 00 20 */	blr 
