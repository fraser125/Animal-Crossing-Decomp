lbl_8046A8DC:
/* 8046A8DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046A8E0  7C 08 02 A6 */	mflr r0
/* 8046A8E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046A8E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046A8EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046A8F0  7C 7E 1B 78 */	mr r30, r3
/* 8046A8F4  7C 83 23 78 */	mr r3, r4
/* 8046A8F8  4B F6 ED 49 */	bl get_player_actor_withoutCheck
/* 8046A8FC  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8046A900  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 8046A904  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 8046A908  7C 7F 1B 78 */	mr r31, r3
/* 8046A90C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046A910  40 81 00 7C */	ble lbl_8046A98C
/* 8046A914  38 7F 00 28 */	addi r3, r31, 0x28
/* 8046A918  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8046A91C  4B F5 07 71 */	bl search_position_distanceXZ
/* 8046A920  3C 60 80 64 */	lis r3, lit_502@ha /* 0x806445D8@ha */
/* 8046A924  C0 03 45 D8 */	lfs f0, lit_502@l(r3)  /* 0x806445D8@l */
/* 8046A928  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046A92C  40 80 00 60 */	bge lbl_8046A98C
/* 8046A930  38 7F 00 28 */	addi r3, r31, 0x28
/* 8046A934  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8046A938  4B F5 07 F9 */	bl search_position_angleY
/* 8046A93C  B0 7E 00 6A */	sth r3, 0x6a(r30)
/* 8046A940  4B BF 23 ED */	bl fqrand2
/* 8046A944  3C 80 80 64 */	lis r4, lit_3945@ha /* 0x8064489C@ha */
/* 8046A948  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046A94C  C0 44 48 9C */	lfs f2, lit_3945@l(r4)  /* 0x8064489C@l */
/* 8046A950  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046A954  38 60 00 01 */	li r3, 1
/* 8046A958  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046A95C  A8 1E 00 6A */	lha r0, 0x6a(r30)
/* 8046A960  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046A964  FC 00 00 1E */	fctiwz f0, f0
/* 8046A968  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046A96C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8046A970  7C 84 07 34 */	extsh r4, r4
/* 8046A974  7C 00 22 14 */	add r0, r0, r4
/* 8046A978  B0 1E 00 6A */	sth r0, 0x6a(r30)
/* 8046A97C  A8 1E 00 6A */	lha r0, 0x6a(r30)
/* 8046A980  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 8046A984  B0 1E 00 6A */	sth r0, 0x6a(r30)
/* 8046A988  48 00 00 08 */	b lbl_8046A990
lbl_8046A98C:
/* 8046A98C  38 60 00 00 */	li r3, 0
lbl_8046A990:
/* 8046A990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046A994  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046A998  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046A99C  7C 08 03 A6 */	mtlr r0
/* 8046A9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8046A9A4  4E 80 00 20 */	blr 
