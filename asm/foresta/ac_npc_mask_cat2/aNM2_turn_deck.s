lbl_8056029C:
/* 8056029C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805602A0  7C 08 02 A6 */	mflr r0
/* 805602A4  38 A0 06 00 */	li r5, 0x600
/* 805602A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805602AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805602B0  7C 9F 23 78 */	mr r31, r4
/* 805602B4  38 80 00 00 */	li r4, 0
/* 805602B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805602BC  7C 7E 1B 78 */	mr r30, r3
/* 805602C0  38 7E 00 DE */	addi r3, r30, 0xde
/* 805602C4  4B E5 A8 81 */	bl chase_angle
/* 805602C8  2C 03 00 01 */	cmpwi r3, 1
/* 805602CC  40 82 00 20 */	bne lbl_805602EC
/* 805602D0  7F C3 F3 78 */	mr r3, r30
/* 805602D4  7F E4 FB 78 */	mr r4, r31
/* 805602D8  38 A0 00 0C */	li r5, 0xc
/* 805602DC  48 00 0B 15 */	bl aNM2_setupAction
/* 805602E0  3C 60 80 65 */	lis r3, lit_540@ha /* 0x80649720@ha */
/* 805602E4  C0 03 97 20 */	lfs f0, lit_540@l(r3)  /* 0x80649720@l */
/* 805602E8  D0 1E 01 C8 */	stfs f0, 0x1c8(r30)
lbl_805602EC:
/* 805602EC  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 805602F0  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805602F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805602F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805602FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80560300  7C 08 03 A6 */	mtlr r0
/* 80560304  38 21 00 10 */	addi r1, r1, 0x10
/* 80560308  4E 80 00 20 */	blr 
