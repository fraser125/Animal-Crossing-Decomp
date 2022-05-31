lbl_8045E960:
/* 8045E960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045E964  7C 08 02 A6 */	mflr r0
/* 8045E968  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045E96C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045E970  7C 7F 1B 78 */	mr r31, r3
/* 8045E974  7C 83 23 78 */	mr r3, r4
/* 8045E978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045E97C  4B F7 AC C5 */	bl get_player_actor_withoutCheck
/* 8045E980  7C 7E 1B 78 */	mr r30, r3
/* 8045E984  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8045E988  38 9E 00 28 */	addi r4, r30, 0x28
/* 8045E98C  4B F5 C6 49 */	bl search_position_distance
/* 8045E990  3C 60 80 64 */	lis r3, lit_949@ha /* 0x806446CC@ha */
/* 8045E994  C0 43 46 CC */	lfs f2, lit_949@l(r3)  /* 0x806446CC@l */
/* 8045E998  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8045E99C  40 80 00 7C */	bge lbl_8045EA18
/* 8045E9A0  3C 60 80 64 */	lis r3, lit_824@ha /* 0x806446A0@ha */
/* 8045E9A4  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 8045E9A8  C0 03 46 A0 */	lfs f0, lit_824@l(r3)  /* 0x806446A0@l */
/* 8045E9AC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045E9B0  40 81 00 30 */	ble lbl_8045E9E0
/* 8045E9B4  EC 01 10 24 */	fdivs f0, f1, f2
/* 8045E9B8  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644614@ha */
/* 8045E9BC  C0 23 46 14 */	lfs f1, lit_531@l(r3)  /* 0x80644614@l */
/* 8045E9C0  A8 9F 00 82 */	lha r4, 0x82(r31)
/* 8045E9C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045E9C8  FC 00 00 1E */	fctiwz f0, f0
/* 8045E9CC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045E9D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045E9D4  7C 04 02 14 */	add r0, r4, r0
/* 8045E9D8  B0 1F 00 82 */	sth r0, 0x82(r31)
/* 8045E9DC  48 00 00 3C */	b lbl_8045EA18
lbl_8045E9E0:
/* 8045E9E0  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8045E9E4  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 8045E9E8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045E9EC  40 81 00 2C */	ble lbl_8045EA18
/* 8045E9F0  EC 01 10 24 */	fdivs f0, f1, f2
/* 8045E9F4  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8045E9F8  C0 23 45 DC */	lfs f1, lit_503@l(r3)  /* 0x806445DC@l */
/* 8045E9FC  A8 9F 00 82 */	lha r4, 0x82(r31)
/* 8045EA00  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045EA04  FC 00 00 1E */	fctiwz f0, f0
/* 8045EA08  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045EA0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045EA10  7C 04 02 14 */	add r0, r4, r0
/* 8045EA14  B0 1F 00 82 */	sth r0, 0x82(r31)
lbl_8045EA18:
/* 8045EA18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045EA1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045EA20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045EA24  7C 08 03 A6 */	mtlr r0
/* 8045EA28  38 21 00 20 */	addi r1, r1, 0x20
/* 8045EA2C  4E 80 00 20 */	blr 
