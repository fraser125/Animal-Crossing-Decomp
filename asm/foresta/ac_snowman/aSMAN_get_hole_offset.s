lbl_804A3DA0:
/* 804A3DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3DA4  7C 08 02 A6 */	mflr r0
/* 804A3DA8  3C 80 80 64 */	lis r4, lit_676@ha /* 0x80645CC8@ha */
/* 804A3DAC  3C A0 80 64 */	lis r5, lit_677@ha /* 0x80645CCC@ha */
/* 804A3DB0  38 C4 5C C8 */	addi r6, r4, lit_676@l /* 0x80645CC8@l */
/* 804A3DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3DB8  C0 06 00 00 */	lfs f0, 0(r6)
/* 804A3DBC  3C C0 80 69 */	lis r6, data_8068E7E8@ha /* 0x8068E7E8@ha */
/* 804A3DC0  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A3DC4  EC 40 00 72 */	fmuls f2, f0, f1
/* 804A3DC8  C0 25 5C CC */	lfs f1, lit_677@l(r5)  /* 0x80645CCC@l */
/* 804A3DCC  C0 04 5C 8C */	lfs f0, data_80645C8C@l(r4)  /* 0x80645C8C@l */
/* 804A3DD0  38 C6 E7 E8 */	addi r6, r6, data_8068E7E8@l /* 0x8068E7E8@l */
/* 804A3DD4  EC 22 08 24 */	fdivs f1, f2, f1
/* 804A3DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3DDC  40 80 00 08 */	bge lbl_804A3DE4
/* 804A3DE0  FC 00 08 90 */	fmr f0, f1
lbl_804A3DE4:
/* 804A3DE4  3C 80 80 64 */	lis r4, lit_640@ha /* 0x80645CB4@ha */
/* 804A3DE8  C0 64 5C B4 */	lfs f3, lit_640@l(r4)  /* 0x80645CB4@l */
/* 804A3DEC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 804A3DF0  40 81 00 18 */	ble lbl_804A3E08
/* 804A3DF4  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A3DF8  C0 64 5C 8C */	lfs f3, data_80645C8C@l(r4)  /* 0x80645C8C@l */
/* 804A3DFC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 804A3E00  40 80 00 08 */	bge lbl_804A3E08
/* 804A3E04  FC 60 08 90 */	fmr f3, f1
lbl_804A3E08:
/* 804A3E08  3C 80 80 64 */	lis r4, lit_639@ha /* 0x80645CB0@ha */
/* 804A3E0C  C0 43 01 D0 */	lfs f2, 0x1d0(r3)
/* 804A3E10  C0 04 5C B0 */	lfs f0, lit_639@l(r4)  /* 0x80645CB0@l */
/* 804A3E14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804A3E18  40 80 00 28 */	bge lbl_804A3E40
/* 804A3E1C  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80645CD0@ha */
/* 804A3E20  C0 86 00 A8 */	lfs f4, 0xa8(r6)
/* 804A3E24  C0 06 00 AC */	lfs f0, 0xac(r6)
/* 804A3E28  C0 24 5C D0 */	lfs f1, lit_678@l(r4)  /* 0x80645CD0@l */
/* 804A3E2C  EC 00 20 28 */	fsubs f0, f0, f4
/* 804A3E30  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804A3E34  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A3E38  EC 24 00 2A */	fadds f1, f4, f0
/* 804A3E3C  48 00 00 30 */	b lbl_804A3E6C
lbl_804A3E40:
/* 804A3E40  3C A0 80 64 */	lis r5, lit_679@ha /* 0x80645CD4@ha */
/* 804A3E44  3C 80 80 64 */	lis r4, lit_680@ha /* 0x80645CD8@ha */
/* 804A3E48  C0 25 5C D4 */	lfs f1, lit_679@l(r5)  /* 0x80645CD4@l */
/* 804A3E4C  C0 86 00 AC */	lfs f4, 0xac(r6)
/* 804A3E50  EC 41 00 B2 */	fmuls f2, f1, f2
/* 804A3E54  C0 06 00 B0 */	lfs f0, 0xb0(r6)
/* 804A3E58  C0 24 5C D8 */	lfs f1, lit_680@l(r4)  /* 0x80645CD8@l */
/* 804A3E5C  EC 00 20 28 */	fsubs f0, f0, f4
/* 804A3E60  EC 22 08 28 */	fsubs f1, f2, f1
/* 804A3E64  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A3E68  EC 24 00 2A */	fadds f1, f4, f0
lbl_804A3E6C:
/* 804A3E6C  3C 80 80 64 */	lis r4, lit_681@ha /* 0x80645CDC@ha */
/* 804A3E70  3C A0 80 64 */	lis r5, lit_682@ha /* 0x80645CE4@ha */
/* 804A3E74  39 04 5C DC */	addi r8, r4, lit_681@l /* 0x80645CDC@l */
/* 804A3E78  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804A3E7C  C9 08 00 00 */	lfd f8, 0(r8)
/* 804A3E80  38 E5 5C E4 */	addi r7, r5, lit_682@l /* 0x80645CE4@l */
/* 804A3E84  3C 80 80 64 */	lis r4, lit_640@ha /* 0x80645CB4@ha */
/* 804A3E88  3C A0 80 64 */	lis r5, lit_683@ha /* 0x80645CEC@ha */
/* 804A3E8C  FC 00 40 34 */	frsqrte f0, f8
/* 804A3E90  C8 E8 00 00 */	lfd f7, 0(r8)
/* 804A3E94  38 C4 5C B4 */	addi r6, r4, lit_640@l /* 0x80645CB4@l */
/* 804A3E98  3C 80 80 64 */	lis r4, lit_684@ha /* 0x80645CF0@ha */
/* 804A3E9C  C8 C7 00 00 */	lfd f6, 0(r7)
/* 804A3EA0  FC 40 00 32 */	fmul f2, f0, f0
/* 804A3EA4  C0 65 5C EC */	lfs f3, lit_683@l(r5)  /* 0x80645CEC@l */
/* 804A3EA8  38 63 01 BC */	addi r3, r3, 0x1bc
/* 804A3EAC  FC A7 00 32 */	fmul f5, f7, f0
/* 804A3EB0  C0 06 00 00 */	lfs f0, 0(r6)
/* 804A3EB4  C0 84 5C F0 */	lfs f4, lit_684@l(r4)  /* 0x80645CF0@l */
/* 804A3EB8  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A3EBC  FC 46 10 28 */	fsub f2, f6, f2
/* 804A3EC0  FC A5 00 B2 */	fmul f5, f5, f2
/* 804A3EC4  FC 45 01 72 */	fmul f2, f5, f5
/* 804A3EC8  FC A7 01 72 */	fmul f5, f7, f5
/* 804A3ECC  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A3ED0  FC 46 10 28 */	fsub f2, f6, f2
/* 804A3ED4  FC A5 00 B2 */	fmul f5, f5, f2
/* 804A3ED8  FC 45 01 72 */	fmul f2, f5, f5
/* 804A3EDC  FC A7 01 72 */	fmul f5, f7, f5
/* 804A3EE0  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A3EE4  FC 46 10 28 */	fsub f2, f6, f2
/* 804A3EE8  FC 45 00 B2 */	fmul f2, f5, f2
/* 804A3EEC  FC 48 00 B2 */	fmul f2, f8, f2
/* 804A3EF0  FC 40 10 18 */	frsp f2, f2
/* 804A3EF4  D0 41 00 08 */	stfs f2, 8(r1)
/* 804A3EF8  C0 41 00 08 */	lfs f2, 8(r1)
/* 804A3EFC  EC 40 10 28 */	fsubs f2, f0, f2
/* 804A3F00  4B F1 72 B1 */	bl add_calc
/* 804A3F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3F08  7C 08 03 A6 */	mtlr r0
/* 804A3F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A3F10  4E 80 00 20 */	blr 
