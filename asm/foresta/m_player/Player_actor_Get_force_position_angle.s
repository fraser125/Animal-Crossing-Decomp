lbl_804D7E44:
/* 804D7E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7E48  7C 08 02 A6 */	mflr r0
/* 804D7E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7E54  7C BF 2B 78 */	mr r31, r5
/* 804D7E58  93 C1 00 08 */	stw r30, 8(r1)
/* 804D7E5C  7C 9E 23 78 */	mr r30, r4
/* 804D7E60  4B F0 17 E1 */	bl get_player_actor_withoutCheck
/* 804D7E64  88 83 11 B2 */	lbz r4, 0x11b2(r3)
/* 804D7E68  28 04 00 00 */	cmplwi r4, 0
/* 804D7E6C  41 82 00 74 */	beq lbl_804D7EE0
/* 804D7E70  28 1E 00 00 */	cmplwi r30, 0
/* 804D7E74  41 82 00 34 */	beq lbl_804D7EA8
/* 804D7E78  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 804D7E7C  41 82 00 0C */	beq lbl_804D7E88
/* 804D7E80  C0 03 11 A0 */	lfs f0, 0x11a0(r3)
/* 804D7E84  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_804D7E88:
/* 804D7E88  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 804D7E8C  41 82 00 0C */	beq lbl_804D7E98
/* 804D7E90  C0 03 11 A4 */	lfs f0, 0x11a4(r3)
/* 804D7E94  D0 1E 00 04 */	stfs f0, 4(r30)
lbl_804D7E98:
/* 804D7E98  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 804D7E9C  41 82 00 0C */	beq lbl_804D7EA8
/* 804D7EA0  C0 03 11 A8 */	lfs f0, 0x11a8(r3)
/* 804D7EA4  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_804D7EA8:
/* 804D7EA8  28 1F 00 00 */	cmplwi r31, 0
/* 804D7EAC  41 82 00 34 */	beq lbl_804D7EE0
/* 804D7EB0  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 804D7EB4  41 82 00 0C */	beq lbl_804D7EC0
/* 804D7EB8  A8 03 11 AC */	lha r0, 0x11ac(r3)
/* 804D7EBC  B0 1F 00 00 */	sth r0, 0(r31)
lbl_804D7EC0:
/* 804D7EC0  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 804D7EC4  41 82 00 0C */	beq lbl_804D7ED0
/* 804D7EC8  A8 03 11 AE */	lha r0, 0x11ae(r3)
/* 804D7ECC  B0 1F 00 02 */	sth r0, 2(r31)
lbl_804D7ED0:
/* 804D7ED0  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 804D7ED4  41 82 00 0C */	beq lbl_804D7EE0
/* 804D7ED8  A8 03 11 B0 */	lha r0, 0x11b0(r3)
/* 804D7EDC  B0 1F 00 04 */	sth r0, 4(r31)
lbl_804D7EE0:
/* 804D7EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7EE4  7C 83 23 78 */	mr r3, r4
/* 804D7EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7EEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D7EF0  7C 08 03 A6 */	mtlr r0
/* 804D7EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7EF8  4E 80 00 20 */	blr 
