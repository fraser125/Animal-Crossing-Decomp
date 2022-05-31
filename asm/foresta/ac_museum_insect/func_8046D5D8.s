lbl_8046D5D8:
/* 8046D5D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046D5DC  7C 08 02 A6 */	mflr r0
/* 8046D5E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046D5E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046D5E8  7C 7F 1B 78 */	mr r31, r3
/* 8046D5EC  7C 83 23 78 */	mr r3, r4
/* 8046D5F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046D5F4  4B F6 C0 4D */	bl get_player_actor_withoutCheck
/* 8046D5F8  7C 7E 1B 78 */	mr r30, r3
/* 8046D5FC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046D600  38 9E 00 28 */	addi r4, r30, 0x28
/* 8046D604  4B F4 D9 D1 */	bl search_position_distance
/* 8046D608  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8046D60C  C0 43 46 48 */	lfs f2, lit_675@l(r3)  /* 0x80644648@l */
/* 8046D610  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8046D614  40 80 00 7C */	bge lbl_8046D690
/* 8046D618  3C 60 80 64 */	lis r3, lit_824@ha /* 0x806446A0@ha */
/* 8046D61C  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 8046D620  C0 03 46 A0 */	lfs f0, lit_824@l(r3)  /* 0x806446A0@l */
/* 8046D624  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8046D628  40 81 00 30 */	ble lbl_8046D658
/* 8046D62C  EC 01 10 24 */	fdivs f0, f1, f2
/* 8046D630  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644614@ha */
/* 8046D634  C0 23 46 14 */	lfs f1, lit_531@l(r3)  /* 0x80644614@l */
/* 8046D638  A8 9F 00 7C */	lha r4, 0x7c(r31)
/* 8046D63C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046D640  FC 00 00 1E */	fctiwz f0, f0
/* 8046D644  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046D648  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046D64C  7C 04 02 14 */	add r0, r4, r0
/* 8046D650  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 8046D654  48 00 00 3C */	b lbl_8046D690
lbl_8046D658:
/* 8046D658  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8046D65C  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 8046D660  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8046D664  40 81 00 2C */	ble lbl_8046D690
/* 8046D668  EC 01 10 24 */	fdivs f0, f1, f2
/* 8046D66C  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8046D670  C0 23 45 DC */	lfs f1, lit_503@l(r3)  /* 0x806445DC@l */
/* 8046D674  A8 9F 00 7C */	lha r4, 0x7c(r31)
/* 8046D678  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046D67C  FC 00 00 1E */	fctiwz f0, f0
/* 8046D680  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046D684  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046D688  7C 04 02 14 */	add r0, r4, r0
/* 8046D68C  B0 1F 00 7C */	sth r0, 0x7c(r31)
lbl_8046D690:
/* 8046D690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046D694  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046D698  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046D69C  7C 08 03 A6 */	mtlr r0
/* 8046D6A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8046D6A4  4E 80 00 20 */	blr 
