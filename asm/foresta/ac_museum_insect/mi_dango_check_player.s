lbl_8046CA70:
/* 8046CA70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046CA74  7C 08 02 A6 */	mflr r0
/* 8046CA78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046CA7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046CA80  7C 7F 1B 78 */	mr r31, r3
/* 8046CA84  7C 83 23 78 */	mr r3, r4
/* 8046CA88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046CA8C  4B F6 CB B5 */	bl get_player_actor_withoutCheck
/* 8046CA90  7C 7E 1B 78 */	mr r30, r3
/* 8046CA94  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046CA98  38 9E 00 28 */	addi r4, r30, 0x28
/* 8046CA9C  4B F4 E5 39 */	bl search_position_distance
/* 8046CAA0  3C 60 80 64 */	lis r3, lit_949@ha /* 0x806446CC@ha */
/* 8046CAA4  C0 43 46 CC */	lfs f2, lit_949@l(r3)  /* 0x806446CC@l */
/* 8046CAA8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8046CAAC  40 80 00 7C */	bge lbl_8046CB28
/* 8046CAB0  3C 60 80 64 */	lis r3, lit_824@ha /* 0x806446A0@ha */
/* 8046CAB4  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 8046CAB8  C0 03 46 A0 */	lfs f0, lit_824@l(r3)  /* 0x806446A0@l */
/* 8046CABC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8046CAC0  40 81 00 30 */	ble lbl_8046CAF0
/* 8046CAC4  EC 01 10 24 */	fdivs f0, f1, f2
/* 8046CAC8  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644614@ha */
/* 8046CACC  C0 23 46 14 */	lfs f1, lit_531@l(r3)  /* 0x80644614@l */
/* 8046CAD0  A8 9F 00 7A */	lha r4, 0x7a(r31)
/* 8046CAD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046CAD8  FC 00 00 1E */	fctiwz f0, f0
/* 8046CADC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046CAE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046CAE4  7C 04 02 14 */	add r0, r4, r0
/* 8046CAE8  B0 1F 00 7A */	sth r0, 0x7a(r31)
/* 8046CAEC  48 00 00 3C */	b lbl_8046CB28
lbl_8046CAF0:
/* 8046CAF0  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8046CAF4  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 8046CAF8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8046CAFC  40 81 00 2C */	ble lbl_8046CB28
/* 8046CB00  EC 01 10 24 */	fdivs f0, f1, f2
/* 8046CB04  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8046CB08  C0 23 45 DC */	lfs f1, lit_503@l(r3)  /* 0x806445DC@l */
/* 8046CB0C  A8 9F 00 7A */	lha r4, 0x7a(r31)
/* 8046CB10  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046CB14  FC 00 00 1E */	fctiwz f0, f0
/* 8046CB18  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046CB1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046CB20  7C 04 02 14 */	add r0, r4, r0
/* 8046CB24  B0 1F 00 7A */	sth r0, 0x7a(r31)
lbl_8046CB28:
/* 8046CB28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046CB2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046CB30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046CB34  7C 08 03 A6 */	mtlr r0
/* 8046CB38  38 21 00 20 */	addi r1, r1, 0x20
/* 8046CB3C  4E 80 00 20 */	blr 
