lbl_80597158:
/* 80597158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059715C  7C 08 02 A6 */	mflr r0
/* 80597160  90 01 00 24 */	stw r0, 0x24(r1)
/* 80597164  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80597168  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059716C  7C 7E 1B 78 */	mr r30, r3
/* 80597170  7C 83 23 78 */	mr r3, r4
/* 80597174  4B E4 24 CD */	bl get_player_actor_withoutCheck
/* 80597178  3C 80 80 65 */	lis r4, data_80649DDC@ha /* 0x80649DDC@ha */
/* 8059717C  7C 65 1B 79 */	or. r5, r3, r3
/* 80597180  C0 04 9D DC */	lfs f0, data_80649DDC@l(r4)  /* 0x80649DDC@l */
/* 80597184  38 00 00 00 */	li r0, 0
/* 80597188  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8059718C  90 1E 02 28 */	stw r0, 0x228(r30)
/* 80597190  41 82 00 5C */	beq lbl_805971EC
/* 80597194  38 7E 00 28 */	addi r3, r30, 0x28
/* 80597198  38 85 00 28 */	addi r4, r5, 0x28
/* 8059719C  4B E2 3F 95 */	bl search_position_angleY
/* 805971A0  38 03 80 00 */	addi r0, r3, -32768
/* 805971A4  7C 1F 07 34 */	extsh r31, r0
/* 805971A8  4B AC 5B 4D */	bl fqrand
/* 805971AC  3C 60 80 65 */	lis r3, lit_622@ha /* 0x80649E2C@ha */
/* 805971B0  3C 80 80 65 */	lis r4, lit_450@ha /* 0x80649DF8@ha */
/* 805971B4  38 A3 9E 2C */	addi r5, r3, lit_622@l /* 0x80649E2C@l */
/* 805971B8  C0 44 9D F8 */	lfs f2, lit_450@l(r4)  /* 0x80649DF8@l */
/* 805971BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 805971C0  3C 60 80 65 */	lis r3, lit_687@ha /* 0x80649E50@ha */
/* 805971C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 805971C8  C0 03 9E 50 */	lfs f0, lit_687@l(r3)  /* 0x80649E50@l */
/* 805971CC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805971D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805971D4  FC 00 00 1E */	fctiwz f0, f0
/* 805971D8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805971DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805971E0  7F FF 02 14 */	add r31, r31, r0
/* 805971E4  B3 FE 00 DE */	sth r31, 0xde(r30)
/* 805971E8  B3 FE 00 36 */	sth r31, 0x36(r30)
lbl_805971EC:
/* 805971EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805971F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805971F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805971F8  7C 08 03 A6 */	mtlr r0
/* 805971FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80597200  4E 80 00 20 */	blr 
