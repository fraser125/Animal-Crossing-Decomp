lbl_80431758:
/* 80431758  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043175C  7C 08 02 A6 */	mflr r0
/* 80431760  90 01 00 34 */	stw r0, 0x34(r1)
/* 80431764  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80431768  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8043176C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80431770  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80431774  FF E0 08 90 */	fmr f31, f1
/* 80431778  4B C2 B5 B5 */	bl fqrand2
/* 8043177C  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 80431780  C0 03 42 44 */	lfs f0, data_80644244@l(r3)  /* 0x80644244@l */
/* 80431784  EF C0 00 72 */	fmuls f30, f0, f1
/* 80431788  4B C2 B5 6D */	bl fqrand
/* 8043178C  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80431790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80431794  40 81 00 F8 */	ble lbl_8043188C
/* 80431798  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043179C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804317A0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804317A4  40 81 00 78 */	ble lbl_8043181C
/* 804317A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804317AC  40 81 00 68 */	ble lbl_80431814
/* 804317B0  FC 40 08 34 */	frsqrte f2, f1
/* 804317B4  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 804317B8  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 804317BC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 804317C0  C8 84 00 00 */	lfd f4, 0(r4)
/* 804317C4  FC 02 00 B2 */	fmul f0, f2, f2
/* 804317C8  C8 63 42 54 */	lfd f3, lit_470@l(r3)  /* 0x80644254@l */
/* 804317CC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804317D0  FC 01 00 32 */	fmul f0, f1, f0
/* 804317D4  FC 03 00 28 */	fsub f0, f3, f0
/* 804317D8  FC 42 00 32 */	fmul f2, f2, f0
/* 804317DC  FC 02 00 B2 */	fmul f0, f2, f2
/* 804317E0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804317E4  FC 01 00 32 */	fmul f0, f1, f0
/* 804317E8  FC 03 00 28 */	fsub f0, f3, f0
/* 804317EC  FC 42 00 32 */	fmul f2, f2, f0
/* 804317F0  FC 02 00 B2 */	fmul f0, f2, f2
/* 804317F4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804317F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804317FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80431800  FC 02 00 32 */	fmul f0, f2, f0
/* 80431804  FC 01 00 32 */	fmul f0, f1, f0
/* 80431808  FC 00 00 18 */	frsp f0, f0
/* 8043180C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80431810  C0 21 00 0C */	lfs f1, 0xc(r1)
lbl_80431814:
/* 80431814  FF C0 08 90 */	fmr f30, f1
/* 80431818  48 00 00 74 */	b lbl_8043188C
lbl_8043181C:
/* 8043181C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80431820  40 81 00 68 */	ble lbl_80431888
/* 80431824  FC 40 08 34 */	frsqrte f2, f1
/* 80431828  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043182C  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80431830  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80431834  C8 84 00 00 */	lfd f4, 0(r4)
/* 80431838  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043183C  C8 63 42 54 */	lfd f3, lit_470@l(r3)  /* 0x80644254@l */
/* 80431840  FC 44 00 B2 */	fmul f2, f4, f2
/* 80431844  FC 01 00 32 */	fmul f0, f1, f0
/* 80431848  FC 03 00 28 */	fsub f0, f3, f0
/* 8043184C  FC 42 00 32 */	fmul f2, f2, f0
/* 80431850  FC 02 00 B2 */	fmul f0, f2, f2
/* 80431854  FC 44 00 B2 */	fmul f2, f4, f2
/* 80431858  FC 01 00 32 */	fmul f0, f1, f0
/* 8043185C  FC 03 00 28 */	fsub f0, f3, f0
/* 80431860  FC 42 00 32 */	fmul f2, f2, f0
/* 80431864  FC 02 00 B2 */	fmul f0, f2, f2
/* 80431868  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043186C  FC 01 00 32 */	fmul f0, f1, f0
/* 80431870  FC 03 00 28 */	fsub f0, f3, f0
/* 80431874  FC 02 00 32 */	fmul f0, f2, f0
/* 80431878  FC 01 00 32 */	fmul f0, f1, f0
/* 8043187C  FC 00 00 18 */	frsp f0, f0
/* 80431880  D0 01 00 08 */	stfs f0, 8(r1)
/* 80431884  C0 21 00 08 */	lfs f1, 8(r1)
lbl_80431888:
/* 80431888  FF C0 08 50 */	fneg f30, f1
lbl_8043188C:
/* 8043188C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80431890  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 80431894  EF DE 00 32 */	fmuls f30, f30, f0
/* 80431898  EC 3F 07 B2 */	fmuls f1, f31, f30
/* 8043189C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804318A0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804318A4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 804318A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804318AC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 804318B0  7C 08 03 A6 */	mtlr r0
/* 804318B4  38 21 00 30 */	addi r1, r1, 0x30
/* 804318B8  4E 80 00 20 */	blr 
