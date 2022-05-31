lbl_805E06EC:
/* 805E06EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E06F0  7C 08 02 A6 */	mflr r0
/* 805E06F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E06F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E06FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E0700  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E0704  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E0708  39 61 00 20 */	addi r11, r1, 0x20
/* 805E070C  4B AB A7 C5 */	bl func_8009AED0
/* 805E0710  7C 7C 1B 78 */	mr r28, r3
/* 805E0714  7C BE 2B 78 */	mr r30, r5
/* 805E0718  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 805E071C  7C 9D 23 78 */	mr r29, r4
/* 805E0720  C3 C3 00 1C */	lfs f30, 0x1c(r3)
/* 805E0724  7F A3 EB 78 */	mr r3, r29
/* 805E0728  83 E5 00 00 */	lwz r31, 0(r5)
/* 805E072C  FC 20 F8 90 */	fmr f1, f31
/* 805E0730  FC 40 F0 90 */	fmr f2, f30
/* 805E0734  7F E4 FB 78 */	mr r4, r31
/* 805E0738  4B FF FC 4D */	bl mHW_set_frame_dl
/* 805E073C  FC 20 F8 90 */	fmr f1, f31
/* 805E0740  7F A3 EB 78 */	mr r3, r29
/* 805E0744  FC 40 F0 90 */	fmr f2, f30
/* 805E0748  7F E4 FB 78 */	mr r4, r31
/* 805E074C  7F 85 E3 78 */	mr r5, r28
/* 805E0750  4B FF FD 89 */	bl mHW_set_item
/* 805E0754  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805E0758  3C A0 80 65 */	lis r5, lit_633@ha /* 0x8064B38C@ha */
/* 805E075C  38 E5 B3 8C */	addi r7, r5, lit_633@l /* 0x8064B38C@l */
/* 805E0760  3C C0 80 65 */	lis r6, lit_634@ha /* 0x8064B390@ha */
/* 805E0764  80 A4 09 84 */	lwz r5, 0x984(r4)
/* 805E0768  7F A3 EB 78 */	mr r3, r29
/* 805E076C  C0 06 B3 90 */	lfs f0, lit_634@l(r6)  /* 0x8064B390@l */
/* 805E0770  7F 84 E3 78 */	mr r4, r28
/* 805E0774  C0 27 00 00 */	lfs f1, 0(r7)
/* 805E0778  7F C6 F3 78 */	mr r6, r30
/* 805E077C  81 85 01 18 */	lwz r12, 0x118(r5)
/* 805E0780  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805E0784  EC 21 F8 2A */	fadds f1, f1, f31
/* 805E0788  7F E5 FB 78 */	mr r5, r31
/* 805E078C  7D 89 03 A6 */	mtctr r12
/* 805E0790  4E 80 04 21 */	bctrl 
/* 805E0794  7F A3 EB 78 */	mr r3, r29
/* 805E0798  7F C4 F3 78 */	mr r4, r30
/* 805E079C  7F 85 E3 78 */	mr r5, r28
/* 805E07A0  4B FF FE 5D */	bl mHW_set_message
/* 805E07A4  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 805E07A8  7F A3 EB 78 */	mr r3, r29
/* 805E07AC  7F C4 F3 78 */	mr r4, r30
/* 805E07B0  38 A0 00 0E */	li r5, 0xe
/* 805E07B4  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805E07B8  7D 89 03 A6 */	mtctr r12
/* 805E07BC  4E 80 04 21 */	bctrl 
/* 805E07C0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E07C4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E07C8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E07CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805E07D0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E07D4  4B AB A7 49 */	bl func_8009AF1C
/* 805E07D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E07DC  7C 08 03 A6 */	mtlr r0
/* 805E07E0  38 21 00 40 */	addi r1, r1, 0x40
/* 805E07E4  4E 80 00 20 */	blr 
