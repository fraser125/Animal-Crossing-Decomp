lbl_8059AFF8:
/* 8059AFF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059AFFC  7C 08 02 A6 */	mflr r0
/* 8059B000  38 A0 00 00 */	li r5, 0
/* 8059B004  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059B008  38 00 00 50 */	li r0, 0x50
/* 8059B00C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059B010  7C 7F 1B 78 */	mr r31, r3
/* 8059B014  90 A3 02 20 */	stw r5, 0x220(r3)
/* 8059B018  3C 60 80 65 */	lis r3, lit_578@ha /* 0x8064A00C@ha */
/* 8059B01C  C0 03 A0 0C */	lfs f0, lit_578@l(r3)  /* 0x8064A00C@l */
/* 8059B020  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8059B024  B0 BF 00 DC */	sth r5, 0xdc(r31)
/* 8059B028  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8059B02C  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059B030  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8059B034  40 82 00 54 */	bne lbl_8059B088
/* 8059B038  7C 83 23 78 */	mr r3, r4
/* 8059B03C  4B E3 E6 05 */	bl get_player_actor_withoutCheck
/* 8059B040  28 03 00 00 */	cmplwi r3, 0
/* 8059B044  41 82 00 44 */	beq lbl_8059B088
/* 8059B048  A8 03 00 DE */	lha r0, 0xde(r3)
/* 8059B04C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059B050  4B AC 1C A5 */	bl fqrand
/* 8059B054  3C 60 80 65 */	lis r3, lit_579@ha /* 0x8064A010@ha */
/* 8059B058  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8059B05C  C0 03 A0 10 */	lfs f0, lit_579@l(r3)  /* 0x8064A010@l */
/* 8059B060  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059B064  FC 00 00 1E */	fctiwz f0, f0
/* 8059B068  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059B06C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059B070  20 63 2A AA */	subfic r3, r3, 0x2aaa
/* 8059B074  7C 63 07 34 */	extsh r3, r3
/* 8059B078  7C 00 1A 14 */	add r0, r0, r3
/* 8059B07C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059B080  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059B084  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_8059B088:
/* 8059B088  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059B08C  38 80 00 01 */	li r4, 1
/* 8059B090  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 8059B094  38 00 00 00 */	li r0, 0
/* 8059B098  98 7F 02 1E */	stb r3, 0x21e(r31)
/* 8059B09C  90 1F 02 40 */	stw r0, 0x240(r31)
/* 8059B0A0  98 9F 01 08 */	stb r4, 0x108(r31)
/* 8059B0A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059B0A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059B0AC  7C 08 03 A6 */	mtlr r0
/* 8059B0B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8059B0B4  4E 80 00 20 */	blr 
