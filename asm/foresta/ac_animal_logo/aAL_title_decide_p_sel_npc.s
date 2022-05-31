lbl_80410590:
/* 80410590  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80410594  7C 08 02 A6 */	mflr r0
/* 80410598  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041059C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804105A0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804105A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804105A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804105AC  3C 80 80 64 */	lis r4, data_8064382C@ha /* 0x8064382C@ha */
/* 804105B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804105B4  C3 E4 38 2C */	lfs f31, data_8064382C@l(r4)  /* 0x8064382C@l */
/* 804105B8  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
lbl_804105BC:
/* 804105BC  4B C4 C7 39 */	bl fqrand
/* 804105C0  EC 1F 00 72 */	fmuls f0, f31, f1
/* 804105C4  FC 00 00 1E */	fctiwz f0, f0
/* 804105C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 804105CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804105D0  1F C0 09 88 */	mulli r30, r0, 0x988
/* 804105D4  7C 7F F2 14 */	add r3, r31, r30
/* 804105D8  3C 63 00 01 */	addis r3, r3, 1
/* 804105DC  38 63 74 38 */	addi r3, r3, 0x7438
/* 804105E0  4B FB AD FD */	bl mNpc_CheckFreeAnimalPersonalID
/* 804105E4  2C 03 00 00 */	cmpwi r3, 0
/* 804105E8  40 82 FF D4 */	bne lbl_804105BC
/* 804105EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804105F0  38 A0 00 0F */	li r5, 0xf
/* 804105F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804105F8  3C 63 00 01 */	addis r3, r3, 1
/* 804105FC  7C 83 F2 14 */	add r4, r3, r30
/* 80410600  A3 C4 74 38 */	lhz r30, 0x7438(r4)
/* 80410604  38 63 74 38 */	addi r3, r3, 0x7438
/* 80410608  7F C4 F3 78 */	mr r4, r30
/* 8041060C  4B FB C0 D1 */	bl mNpc_SearchAnimalinfo
/* 80410610  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80410614  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000D01F@ha */
/* 80410618  1C 03 09 88 */	mulli r0, r3, 0x988
/* 8041061C  7F C5 F3 78 */	mr r5, r30
/* 80410620  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80410624  7F C4 F3 78 */	mr r4, r30
/* 80410628  3C 63 00 01 */	addis r3, r3, 1
/* 8041062C  7C C3 02 14 */	add r6, r3, r0
/* 80410630  A0 C6 7D 1C */	lhz r6, 0x7d1c(r6)
/* 80410634  38 67 D0 1F */	addi r3, r7, 0xD01F /* 0x0000D01F@l */
/* 80410638  4B FB E4 6D */	bl mNpc_RegistEventNpc
/* 8041063C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80410640  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80410644  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80410648  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041064C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80410650  7C 08 03 A6 */	mtlr r0
/* 80410654  38 21 00 30 */	addi r1, r1, 0x30
/* 80410658  4E 80 00 20 */	blr 
