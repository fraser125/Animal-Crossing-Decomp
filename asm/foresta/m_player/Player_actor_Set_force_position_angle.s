lbl_804D7D70:
/* 804D7D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D7D74  7C 08 02 A6 */	mflr r0
/* 804D7D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D7D7C  39 61 00 20 */	addi r11, r1, 0x20
/* 804D7D80  4B BC 31 55 */	bl func_8009AED4
/* 804D7D84  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 804D7D88  7C DF 33 78 */	mr r31, r6
/* 804D7D8C  7C 9D 23 78 */	mr r29, r4
/* 804D7D90  7C BE 2B 78 */	mr r30, r5
/* 804D7D94  41 82 00 8C */	beq lbl_804D7E20
/* 804D7D98  4B F0 18 A9 */	bl get_player_actor_withoutCheck
/* 804D7D9C  28 1D 00 00 */	cmplwi r29, 0
/* 804D7DA0  41 82 00 38 */	beq lbl_804D7DD8
/* 804D7DA4  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 804D7DA8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 804D7DAC  41 82 00 0C */	beq lbl_804D7DB8
/* 804D7DB0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 804D7DB4  D0 03 11 A0 */	stfs f0, 0x11a0(r3)
lbl_804D7DB8:
/* 804D7DB8  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 804D7DBC  41 82 00 0C */	beq lbl_804D7DC8
/* 804D7DC0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804D7DC4  D0 03 11 A4 */	stfs f0, 0x11a4(r3)
lbl_804D7DC8:
/* 804D7DC8  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 804D7DCC  41 82 00 0C */	beq lbl_804D7DD8
/* 804D7DD0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804D7DD4  D0 03 11 A8 */	stfs f0, 0x11a8(r3)
lbl_804D7DD8:
/* 804D7DD8  28 1E 00 00 */	cmplwi r30, 0
/* 804D7DDC  41 82 00 38 */	beq lbl_804D7E14
/* 804D7DE0  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 804D7DE4  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 804D7DE8  41 82 00 0C */	beq lbl_804D7DF4
/* 804D7DEC  A8 1E 00 00 */	lha r0, 0(r30)
/* 804D7DF0  B0 03 11 AC */	sth r0, 0x11ac(r3)
lbl_804D7DF4:
/* 804D7DF4  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 804D7DF8  41 82 00 0C */	beq lbl_804D7E04
/* 804D7DFC  A8 1E 00 02 */	lha r0, 2(r30)
/* 804D7E00  B0 03 11 AE */	sth r0, 0x11ae(r3)
lbl_804D7E04:
/* 804D7E04  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 804D7E08  41 82 00 0C */	beq lbl_804D7E14
/* 804D7E0C  A8 1E 00 04 */	lha r0, 4(r30)
/* 804D7E10  B0 03 11 B0 */	sth r0, 0x11b0(r3)
lbl_804D7E14:
/* 804D7E14  88 03 11 B2 */	lbz r0, 0x11b2(r3)
/* 804D7E18  7C 00 FB 78 */	or r0, r0, r31
/* 804D7E1C  98 03 11 B2 */	stb r0, 0x11b2(r3)
lbl_804D7E20:
/* 804D7E20  39 61 00 20 */	addi r11, r1, 0x20
/* 804D7E24  4B BC 30 FD */	bl func_8009AF20
/* 804D7E28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D7E2C  7C 08 03 A6 */	mtlr r0
/* 804D7E30  38 21 00 20 */	addi r1, r1, 0x20
/* 804D7E34  4E 80 00 20 */	blr 
