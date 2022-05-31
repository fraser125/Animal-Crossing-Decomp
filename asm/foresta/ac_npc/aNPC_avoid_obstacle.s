lbl_80535A44:
/* 80535A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80535A48  7C 08 02 A6 */	mflr r0
/* 80535A4C  38 80 00 00 */	li r4, 0
/* 80535A50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80535A54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80535A58  7C 7F 1B 78 */	mr r31, r3
/* 80535A5C  80 03 07 D8 */	lwz r0, 0x7d8(r3)
/* 80535A60  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80535A64  41 82 00 F4 */	beq lbl_80535B58
/* 80535A68  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 80535A6C  2C 00 00 02 */	cmpwi r0, 2
/* 80535A70  41 82 00 CC */	beq lbl_80535B3C
/* 80535A74  40 80 00 10 */	bge lbl_80535A84
/* 80535A78  2C 00 00 01 */	cmpwi r0, 1
/* 80535A7C  40 80 00 A0 */	bge lbl_80535B1C
/* 80535A80  48 00 00 D8 */	b lbl_80535B58
lbl_80535A84:
/* 80535A84  2C 00 00 04 */	cmpwi r0, 4
/* 80535A88  40 80 00 D0 */	bge lbl_80535B58
/* 80535A8C  88 1F 09 16 */	lbz r0, 0x916(r31)
/* 80535A90  2C 00 00 01 */	cmpwi r0, 1
/* 80535A94  41 82 00 60 */	beq lbl_80535AF4
/* 80535A98  40 80 00 10 */	bge lbl_80535AA8
/* 80535A9C  2C 00 00 00 */	cmpwi r0, 0
/* 80535AA0  40 80 00 14 */	bge lbl_80535AB4
/* 80535AA4  48 00 00 B4 */	b lbl_80535B58
lbl_80535AA8:
/* 80535AA8  2C 00 00 03 */	cmpwi r0, 3
/* 80535AAC  40 80 00 AC */	bge lbl_80535B58
/* 80535AB0  48 00 00 58 */	b lbl_80535B08
lbl_80535AB4:
/* 80535AB4  4B B2 72 41 */	bl fqrand
/* 80535AB8  3C 60 80 65 */	lis r3, lit_1025@ha /* 0x806492A0@ha */
/* 80535ABC  3C 80 80 6A */	lis r4, turn_angl_table@ha /* 0x806A2878@ha */
/* 80535AC0  38 A3 92 A0 */	addi r5, r3, lit_1025@l /* 0x806492A0@l */
/* 80535AC4  7F E3 FB 78 */	mr r3, r31
/* 80535AC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80535ACC  38 84 28 78 */	addi r4, r4, turn_angl_table@l /* 0x806A2878@l */
/* 80535AD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80535AD4  FC 00 00 1E */	fctiwz f0, f0
/* 80535AD8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80535ADC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80535AE0  54 00 10 3A */	slwi r0, r0, 2
/* 80535AE4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80535AE8  4B FF FB C9 */	bl aNPC_turn_to_backward
/* 80535AEC  38 80 00 01 */	li r4, 1
/* 80535AF0  48 00 00 68 */	b lbl_80535B58
lbl_80535AF4:
/* 80535AF4  38 80 00 00 */	li r4, 0
/* 80535AF8  38 A0 00 00 */	li r5, 0
/* 80535AFC  4B FF FD 19 */	bl aNPC_avoid_wall
/* 80535B00  7C 64 1B 78 */	mr r4, r3
/* 80535B04  48 00 00 54 */	b lbl_80535B58
lbl_80535B08:
/* 80535B08  38 80 00 01 */	li r4, 1
/* 80535B0C  38 A0 00 00 */	li r5, 0
/* 80535B10  4B FF FD 05 */	bl aNPC_avoid_wall
/* 80535B14  7C 64 1B 78 */	mr r4, r3
/* 80535B18  48 00 00 40 */	b lbl_80535B58
lbl_80535B1C:
/* 80535B1C  88 1F 09 16 */	lbz r0, 0x916(r31)
/* 80535B20  28 00 00 03 */	cmplwi r0, 3
/* 80535B24  41 82 00 34 */	beq lbl_80535B58
/* 80535B28  38 80 00 01 */	li r4, 1
/* 80535B2C  38 A0 00 00 */	li r5, 0
/* 80535B30  4B FF FC E5 */	bl aNPC_avoid_wall
/* 80535B34  7C 64 1B 78 */	mr r4, r3
/* 80535B38  48 00 00 20 */	b lbl_80535B58
lbl_80535B3C:
/* 80535B3C  88 1F 09 16 */	lbz r0, 0x916(r31)
/* 80535B40  28 00 00 03 */	cmplwi r0, 3
/* 80535B44  41 82 00 14 */	beq lbl_80535B58
/* 80535B48  38 80 00 00 */	li r4, 0
/* 80535B4C  38 A0 00 00 */	li r5, 0
/* 80535B50  4B FF FC C5 */	bl aNPC_avoid_wall
/* 80535B54  7C 64 1B 78 */	mr r4, r3
lbl_80535B58:
/* 80535B58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80535B5C  7C 83 23 78 */	mr r3, r4
/* 80535B60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80535B64  7C 08 03 A6 */	mtlr r0
/* 80535B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80535B6C  4E 80 00 20 */	blr 
