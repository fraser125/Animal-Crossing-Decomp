lbl_8043A44C:
/* 8043A44C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043A450  7C 08 02 A6 */	mflr r0
/* 8043A454  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043A458  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043A45C  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043A460  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043A464  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043A468  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043A46C  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043A470  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043A474  FC 60 30 34 */	frsqrte f3, f6
/* 8043A478  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043A47C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043A480  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043A484  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043A488  7C 7F 1B 78 */	mr r31, r3
/* 8043A48C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043A490  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043A494  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043A498  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043A49C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043A4A0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A4A4  FC 24 08 28 */	fsub f1, f4, f1
/* 8043A4A8  FC 63 00 72 */	fmul f3, f3, f1
/* 8043A4AC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043A4B0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043A4B4  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A4B8  FC 24 08 28 */	fsub f1, f4, f1
/* 8043A4BC  FC 63 00 72 */	fmul f3, f3, f1
/* 8043A4C0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043A4C4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043A4C8  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A4CC  FC 24 08 28 */	fsub f1, f4, f1
/* 8043A4D0  FC 23 00 72 */	fmul f1, f3, f1
/* 8043A4D4  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A4D8  FC 20 08 18 */	frsp f1, f1
/* 8043A4DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8043A4E0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8043A4E4  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043A4E8  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043A4EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043A4F0  40 81 00 54 */	ble lbl_8043A544
/* 8043A4F4  FC 20 10 34 */	frsqrte f1, f2
/* 8043A4F8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043A4FC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A500  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A504  FC 04 00 28 */	fsub f0, f4, f0
/* 8043A508  FC 21 00 32 */	fmul f1, f1, f0
/* 8043A50C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043A510  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A514  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A518  FC 04 00 28 */	fsub f0, f4, f0
/* 8043A51C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043A520  FC 01 00 72 */	fmul f0, f1, f1
/* 8043A524  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A528  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A52C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043A530  FC 01 00 32 */	fmul f0, f1, f0
/* 8043A534  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A538  FC 00 00 18 */	frsp f0, f0
/* 8043A53C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043A540  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_8043A544:
/* 8043A544  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043A548  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 8043A54C  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043A550  38 7F 06 0E */	addi r3, r31, 0x60e
/* 8043A554  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043A558  38 A0 01 C7 */	li r5, 0x1c7
/* 8043A55C  38 C0 00 2D */	li r6, 0x2d
/* 8043A560  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043A564  4B F8 0D AD */	bl add_calc_short_angle2
/* 8043A568  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043A56C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043A570  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043A574  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043A578  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043A57C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043A580  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043A584  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 8043A588  FC 60 30 34 */	frsqrte f3, f6
/* 8043A58C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043A590  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043A594  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043A598  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043A59C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043A5A0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043A5A4  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043A5A8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043A5AC  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A5B0  FC 24 08 28 */	fsub f1, f4, f1
/* 8043A5B4  FC 63 00 72 */	fmul f3, f3, f1
/* 8043A5B8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043A5BC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043A5C0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A5C4  FC 24 08 28 */	fsub f1, f4, f1
/* 8043A5C8  FC 63 00 72 */	fmul f3, f3, f1
/* 8043A5CC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043A5D0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043A5D4  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A5D8  FC 24 08 28 */	fsub f1, f4, f1
/* 8043A5DC  FC 23 00 72 */	fmul f1, f3, f1
/* 8043A5E0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043A5E4  FC 20 08 18 */	frsp f1, f1
/* 8043A5E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043A5EC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043A5F0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043A5F4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043A5F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043A5FC  40 81 00 54 */	ble lbl_8043A650
/* 8043A600  FC 20 10 34 */	frsqrte f1, f2
/* 8043A604  FC 01 00 72 */	fmul f0, f1, f1
/* 8043A608  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A60C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A610  FC 04 00 28 */	fsub f0, f4, f0
/* 8043A614  FC 21 00 32 */	fmul f1, f1, f0
/* 8043A618  FC 01 00 72 */	fmul f0, f1, f1
/* 8043A61C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A620  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A624  FC 04 00 28 */	fsub f0, f4, f0
/* 8043A628  FC 21 00 32 */	fmul f1, f1, f0
/* 8043A62C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043A630  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A634  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A638  FC 04 00 28 */	fsub f0, f4, f0
/* 8043A63C  FC 01 00 32 */	fmul f0, f1, f0
/* 8043A640  FC 02 00 32 */	fmul f0, f2, f0
/* 8043A644  FC 00 00 18 */	frsp f0, f0
/* 8043A648  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043A64C  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043A650:
/* 8043A650  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043A654  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 8043A658  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043A65C  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8043A660  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043A664  38 A0 01 6C */	li r5, 0x16c
/* 8043A668  38 C0 00 2D */	li r6, 0x2d
/* 8043A66C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043A670  4B F8 0C A1 */	bl add_calc_short_angle2
/* 8043A674  3C C0 80 64 */	lis r6, lit_666@ha /* 0x806442AC@ha */
/* 8043A678  3C A0 80 64 */	lis r5, lit_1068@ha /* 0x80644308@ha */
/* 8043A67C  3C 80 80 64 */	lis r4, lit_526@ha /* 0x80644264@ha */
/* 8043A680  C0 26 42 AC */	lfs f1, lit_666@l(r6)  /* 0x806442AC@l */
/* 8043A684  C0 45 43 08 */	lfs f2, lit_1068@l(r5)  /* 0x80644308@l */
/* 8043A688  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043A68C  C0 64 42 64 */	lfs f3, lit_526@l(r4)  /* 0x80644264@l */
/* 8043A690  4B F8 0C 05 */	bl add_calc2
/* 8043A694  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043A698  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043A69C  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 8043A6A0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043A6A4  C0 7F 05 EC */	lfs f3, 0x5ec(r31)
/* 8043A6A8  4B F8 0B ED */	bl add_calc2
/* 8043A6AC  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 8043A6B0  3C 80 80 64 */	lis r4, lit_1712@ha /* 0x80644368@ha */
/* 8043A6B4  38 A3 42 C4 */	addi r5, r3, lit_793@l /* 0x806442C4@l */
/* 8043A6B8  C0 44 43 68 */	lfs f2, lit_1712@l(r4)  /* 0x80644368@l */
/* 8043A6BC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8043A6C0  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8043A6C4  4B F8 0C 15 */	bl add_calc0
/* 8043A6C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043A6CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043A6D0  7C 08 03 A6 */	mtlr r0
/* 8043A6D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8043A6D8  4E 80 00 20 */	blr 
