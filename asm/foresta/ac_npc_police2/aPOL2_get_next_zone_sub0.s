lbl_8056B380:
/* 8056B380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056B384  7C 08 02 A6 */	mflr r0
/* 8056B388  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8056B38C  54 86 F0 02 */	slwi r6, r4, 0x1e
/* 8056B390  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056B394  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8056B398  54 07 0F FE */	srwi r7, r0, 0x1f
/* 8056B39C  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 8056B3A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056B3A4  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 8056B3A8  7C C7 30 50 */	subf r6, r7, r6
/* 8056B3AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8056B3B0  54 9E F6 BE */	rlwinm r30, r4, 0x1e, 0x1a, 0x1f
/* 8056B3B4  54 64 F6 BE */	rlwinm r4, r3, 0x1e, 0x1a, 0x1f
/* 8056B3B8  7C 05 00 50 */	subf r0, r5, r0
/* 8056B3BC  54 C6 10 3E */	rotlwi r6, r6, 2
/* 8056B3C0  54 00 10 3E */	rotlwi r0, r0, 2
/* 8056B3C4  7C 1E 20 00 */	cmpw r30, r4
/* 8056B3C8  7F E6 3A 14 */	add r31, r6, r7
/* 8056B3CC  7C 00 2A 14 */	add r0, r0, r5
/* 8056B3D0  41 82 00 18 */	beq lbl_8056B3E8
/* 8056B3D4  7C 03 03 78 */	mr r3, r0
/* 8056B3D8  7F E5 FB 78 */	mr r5, r31
/* 8056B3DC  7F C6 F3 78 */	mr r6, r30
/* 8056B3E0  4B FF FE FD */	bl aPOL2_get_next_zone_move_z
/* 8056B3E4  48 00 00 3C */	b lbl_8056B420
lbl_8056B3E8:
/* 8056B3E8  7C 1F 00 00 */	cmpw r31, r0
/* 8056B3EC  40 82 00 08 */	bne lbl_8056B3F4
/* 8056B3F0  48 00 00 30 */	b lbl_8056B420
lbl_8056B3F4:
/* 8056B3F4  4B AF 19 01 */	bl fqrand
/* 8056B3F8  3C 60 80 65 */	lis r3, lit_555@ha /* 0x80649864@ha */
/* 8056B3FC  C0 03 98 64 */	lfs f0, lit_555@l(r3)  /* 0x80649864@l */
/* 8056B400  EC 00 00 72 */	fmuls f0, f0, f1
/* 8056B404  FC 00 00 1E */	fctiwz f0, f0
/* 8056B408  D8 01 00 08 */	stfd f0, 8(r1)
/* 8056B40C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8056B410  7C 1E 02 14 */	add r0, r30, r0
/* 8056B414  54 00 10 3A */	slwi r0, r0, 2
/* 8056B418  7C 1F 02 14 */	add r0, r31, r0
/* 8056B41C  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8056B420:
/* 8056B420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056B424  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056B428  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8056B42C  7C 08 03 A6 */	mtlr r0
/* 8056B430  38 21 00 20 */	addi r1, r1, 0x20
/* 8056B434  4E 80 00 20 */	blr 
