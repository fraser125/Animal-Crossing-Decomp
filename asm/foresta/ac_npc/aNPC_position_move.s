lbl_8052F988:
/* 8052F988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052F98C  7C 08 02 A6 */	mflr r0
/* 8052F990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052F994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052F998  7C 7F 1B 78 */	mr r31, r3
/* 8052F99C  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8052F9A0  C0 23 08 F8 */	lfs f1, 0x8f8(r3)
/* 8052F9A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8052F9A8  40 80 00 0C */	bge lbl_8052F9B4
/* 8052F9AC  C0 5F 08 FC */	lfs f2, 0x8fc(r31)
/* 8052F9B0  48 00 00 08 */	b lbl_8052F9B8
lbl_8052F9B4:
/* 8052F9B4  C0 5F 09 00 */	lfs f2, 0x900(r31)
lbl_8052F9B8:
/* 8052F9B8  3C 60 80 65 */	lis r3, lit_802@ha /* 0x80649278@ha */
/* 8052F9BC  38 83 92 78 */	addi r4, r3, lit_802@l /* 0x80649278@l */
/* 8052F9C0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8052F9C4  38 7F 00 74 */	addi r3, r31, 0x74
/* 8052F9C8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8052F9CC  4B E8 B2 9D */	bl chase_f
/* 8052F9D0  7F E3 FB 78 */	mr r3, r31
/* 8052F9D4  4B E4 48 D1 */	bl Actor_position_speed_set
/* 8052F9D8  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8052F9DC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8052F9E0  41 82 00 10 */	beq lbl_8052F9F0
/* 8052F9E4  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8052F9E8  C0 03 92 74 */	lfs f0, data_80649274@l(r3)  /* 0x80649274@l */
/* 8052F9EC  D0 1F 00 6C */	stfs f0, 0x6c(r31)
lbl_8052F9F0:
/* 8052F9F0  7F E3 FB 78 */	mr r3, r31
/* 8052F9F4  4B E4 48 15 */	bl Actor_position_move
/* 8052F9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052F9FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FA00  7C 08 03 A6 */	mtlr r0
/* 8052FA04  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FA08  4E 80 00 20 */	blr 
