lbl_804966BC:
/* 804966BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804966C0  7C 08 02 A6 */	mflr r0
/* 804966C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804966C8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804966CC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804966D0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804966D4  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804966D8  38 81 00 14 */	addi r4, r1, 0x14
/* 804966DC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804966E0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804966E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804966E8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804966EC  38 61 00 20 */	addi r3, r1, 0x20
/* 804966F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804966F4  4B F0 EE 49 */	bl mFI_Wpos2UtCenterWpos
/* 804966F8  3C 60 80 64 */	lis r3, data_80644CC4@ha /* 0x80644CC4@ha */
/* 804966FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80496700  C3 E3 4C C4 */	lfs f31, data_80644CC4@l(r3)  /* 0x80644CC4@l */
/* 80496704  3B E0 00 00 */	li r31, 0
/* 80496708  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8049670C  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_80496710:
/* 80496710  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 80496714  38 61 00 08 */	addi r3, r1, 8
/* 80496718  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8049671C  38 80 00 02 */	li r4, 2
/* 80496720  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80496724  38 A0 00 64 */	li r5, 0x64
/* 80496728  90 E1 00 08 */	stw r7, 8(r1)
/* 8049672C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80496730  90 01 00 10 */	stw r0, 0x10(r1)
/* 80496734  4B EF B3 69 */	bl mCoBG_SetPlussOffset
/* 80496738  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8049673C  3B FF 00 01 */	addi r31, r31, 1
/* 80496740  2C 1F 00 03 */	cmpwi r31, 3
/* 80496744  EC 00 F8 2A */	fadds f0, f0, f31
/* 80496748  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8049674C  41 80 FF C4 */	blt lbl_80496710
/* 80496750  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80496754  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80496758  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8049675C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80496760  7C 08 03 A6 */	mtlr r0
/* 80496764  38 21 00 50 */	addi r1, r1, 0x50
/* 80496768  4E 80 00 20 */	blr 
