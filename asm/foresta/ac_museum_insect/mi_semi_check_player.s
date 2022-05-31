lbl_8045E1D8:
/* 8045E1D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045E1DC  7C 08 02 A6 */	mflr r0
/* 8045E1E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045E1E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045E1E8  7C 7F 1B 78 */	mr r31, r3
/* 8045E1EC  7C 83 23 78 */	mr r3, r4
/* 8045E1F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045E1F4  4B F7 B4 4D */	bl get_player_actor_withoutCheck
/* 8045E1F8  7C 7E 1B 78 */	mr r30, r3
/* 8045E1FC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8045E200  38 9E 00 28 */	addi r4, r30, 0x28
/* 8045E204  4B F5 CD D1 */	bl search_position_distance
/* 8045E208  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8045E20C  C0 43 46 9C */	lfs f2, lit_823@l(r3)  /* 0x8064469C@l */
/* 8045E210  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8045E214  40 80 00 7C */	bge lbl_8045E290
/* 8045E218  3C 60 80 64 */	lis r3, lit_824@ha /* 0x806446A0@ha */
/* 8045E21C  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 8045E220  C0 03 46 A0 */	lfs f0, lit_824@l(r3)  /* 0x806446A0@l */
/* 8045E224  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045E228  40 81 00 30 */	ble lbl_8045E258
/* 8045E22C  EC 01 10 24 */	fdivs f0, f1, f2
/* 8045E230  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644614@ha */
/* 8045E234  C0 23 46 14 */	lfs f1, lit_531@l(r3)  /* 0x80644614@l */
/* 8045E238  A8 9F 00 76 */	lha r4, 0x76(r31)
/* 8045E23C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045E240  FC 00 00 1E */	fctiwz f0, f0
/* 8045E244  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045E248  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045E24C  7C 04 02 14 */	add r0, r4, r0
/* 8045E250  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 8045E254  48 00 00 3C */	b lbl_8045E290
lbl_8045E258:
/* 8045E258  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8045E25C  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 8045E260  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8045E264  40 81 00 2C */	ble lbl_8045E290
/* 8045E268  EC 01 10 24 */	fdivs f0, f1, f2
/* 8045E26C  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8045E270  C0 23 45 DC */	lfs f1, lit_503@l(r3)  /* 0x806445DC@l */
/* 8045E274  A8 9F 00 76 */	lha r4, 0x76(r31)
/* 8045E278  EC 01 00 32 */	fmuls f0, f1, f0
/* 8045E27C  FC 00 00 1E */	fctiwz f0, f0
/* 8045E280  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045E284  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045E288  7C 04 02 14 */	add r0, r4, r0
/* 8045E28C  B0 1F 00 76 */	sth r0, 0x76(r31)
lbl_8045E290:
/* 8045E290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045E294  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045E298  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045E29C  7C 08 03 A6 */	mtlr r0
/* 8045E2A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8045E2A4  4E 80 00 20 */	blr 
