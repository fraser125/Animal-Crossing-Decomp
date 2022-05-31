lbl_805AA778:
/* 805AA778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AA77C  2C 05 00 01 */	cmpwi r5, 1
/* 805AA780  80 E3 00 00 */	lwz r7, 0(r3)
/* 805AA784  40 82 00 78 */	bne lbl_805AA7FC
/* 805AA788  3C 60 80 65 */	lis r3, lit_729@ha /* 0x8064A610@ha */
/* 805AA78C  3C 80 80 65 */	lis r4, lit_728@ha /* 0x8064A60C@ha */
/* 805AA790  C0 68 02 C8 */	lfs f3, 0x2c8(r8)
/* 805AA794  3C A0 80 65 */	lis r5, lit_727@ha /* 0x8064A608@ha */
/* 805AA798  C0 03 A6 10 */	lfs f0, lit_729@l(r3)  /* 0x8064A610@l */
/* 805AA79C  3C 00 FA 00 */	lis r0, 0xfa00
/* 805AA7A0  C0 24 A6 0C */	lfs f1, lit_728@l(r4)  /* 0x8064A60C@l */
/* 805AA7A4  C0 45 A6 08 */	lfs f2, lit_727@l(r5)  /* 0x8064A608@l */
/* 805AA7A8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805AA7AC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805AA7B0  80 A7 02 D0 */	lwz r5, 0x2d0(r7)
/* 805AA7B4  EC 02 00 2A */	fadds f0, f2, f0
/* 805AA7B8  90 05 00 00 */	stw r0, 0(r5)
/* 805AA7BC  EC 22 08 2A */	fadds f1, f2, f1
/* 805AA7C0  7C A6 2B 78 */	mr r6, r5
/* 805AA7C4  38 A5 00 08 */	addi r5, r5, 8
/* 805AA7C8  FC 00 00 1E */	fctiwz f0, f0
/* 805AA7CC  FC 20 08 1E */	fctiwz f1, f1
/* 805AA7D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805AA7D4  D8 21 00 08 */	stfd f1, 8(r1)
/* 805AA7D8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805AA7DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805AA7E0  54 60 82 1E */	rlwinm r0, r3, 0x10, 8, 0xf
/* 805AA7E4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805AA7E8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805AA7EC  60 00 00 FF */	ori r0, r0, 0xff
/* 805AA7F0  90 06 00 04 */	stw r0, 4(r6)
/* 805AA7F4  90 A7 02 D0 */	stw r5, 0x2d0(r7)
/* 805AA7F8  48 00 00 14 */	b lbl_805AA80C
lbl_805AA7FC:
/* 805AA7FC  2C 05 00 07 */	cmpwi r5, 7
/* 805AA800  40 82 00 0C */	bne lbl_805AA80C
/* 805AA804  38 00 00 00 */	li r0, 0
/* 805AA808  90 06 00 00 */	stw r0, 0(r6)
lbl_805AA80C:
/* 805AA80C  38 60 00 01 */	li r3, 1
/* 805AA810  38 21 00 20 */	addi r1, r1, 0x20
/* 805AA814  4E 80 00 20 */	blr 
