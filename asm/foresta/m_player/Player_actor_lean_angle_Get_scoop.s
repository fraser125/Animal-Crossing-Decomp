lbl_804FA390:
/* 804FA390  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FA394  7C 08 02 A6 */	mflr r0
/* 804FA398  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FA39C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804FA3A0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804FA3A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FA3A8  3C 80 80 65 */	lis r4, lit_9522@ha /* 0x806484D0@ha */
/* 804FA3AC  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804FA3B0  C0 04 84 D0 */	lfs f0, lit_9522@l(r4)  /* 0x806484D0@l */
/* 804FA3B4  7C 7F 1B 78 */	mr r31, r3
/* 804FA3B8  38 60 00 00 */	li r3, 0
/* 804FA3BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FA3C0  40 80 00 4C */	bge lbl_804FA40C
/* 804FA3C4  C0 3F 0D 18 */	lfs f1, 0xd18(r31)
/* 804FA3C8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804FA3CC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804FA3D0  C0 9F 0D 1C */	lfs f4, 0xd1c(r31)
/* 804FA3D4  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 804FA3D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 804FA3DC  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804FA3E0  EF E4 10 28 */	fsubs f31, f4, f2
/* 804FA3E4  C0 7F 0D 20 */	lfs f3, 0xd20(r31)
/* 804FA3E8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 804FA3EC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804FA3F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 804FA3F4  40 82 00 0C */	bne lbl_804FA400
/* 804FA3F8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804FA3FC  41 82 00 10 */	beq lbl_804FA40C
lbl_804FA400:
/* 804FA400  4B F0 E8 A9 */	bl Math3DVecLength2D
/* 804FA404  FC 40 F8 50 */	fneg f2, f31
/* 804FA408  4B F1 1B F9 */	bl atans_table
lbl_804FA40C:
/* 804FA40C  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804FA410  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 804FA414  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804FA418  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 804FA41C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804FA420  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FA424  C8 86 00 00 */	lfd f4, 0(r6)
/* 804FA428  38 A0 01 11 */	li r5, 0x111
/* 804FA42C  FC 40 28 34 */	frsqrte f2, f5
/* 804FA430  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FA434  7C 64 1B 78 */	mr r4, r3
/* 804FA438  38 7F 00 DC */	addi r3, r31, 0xdc
/* 804FA43C  38 C0 00 00 */	li r6, 0
/* 804FA440  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FA444  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FA448  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA44C  FC 23 08 28 */	fsub f1, f3, f1
/* 804FA450  FC 42 00 72 */	fmul f2, f2, f1
/* 804FA454  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FA458  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FA45C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA460  FC 23 08 28 */	fsub f1, f3, f1
/* 804FA464  FC 42 00 72 */	fmul f2, f2, f1
/* 804FA468  FC 22 00 B2 */	fmul f1, f2, f2
/* 804FA46C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804FA470  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA474  FC 23 08 28 */	fsub f1, f3, f1
/* 804FA478  FC 22 00 72 */	fmul f1, f2, f1
/* 804FA47C  FC 25 00 72 */	fmul f1, f5, f1
/* 804FA480  FC 20 08 18 */	frsp f1, f1
/* 804FA484  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FA488  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FA48C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FA490  4B EC 0E 81 */	bl add_calc_short_angle2
/* 804FA494  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804FA498  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FA49C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804FA4A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FA4A4  7C 08 03 A6 */	mtlr r0
/* 804FA4A8  38 21 00 30 */	addi r1, r1, 0x30
/* 804FA4AC  4E 80 00 20 */	blr 
