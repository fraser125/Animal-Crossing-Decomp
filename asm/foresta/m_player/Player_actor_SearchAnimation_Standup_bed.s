lbl_804ED008:
/* 804ED008  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804ED00C  7C 08 02 A6 */	mflr r0
/* 804ED010  90 01 00 54 */	stw r0, 0x54(r1)
/* 804ED014  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804ED018  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804ED01C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 804ED020  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 804ED024  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804ED028  3C 80 80 64 */	lis r4, lit_4467@ha /* 0x80647B18@ha */
/* 804ED02C  3C A0 80 64 */	lis r5, lit_2697@ha /* 0x80646C50@ha */
/* 804ED030  FF C0 08 90 */	fmr f30, f1
/* 804ED034  C0 44 7B 18 */	lfs f2, lit_4467@l(r4)  /* 0x80647B18@l */
/* 804ED038  C0 25 6C 50 */	lfs f1, lit_2697@l(r5)  /* 0x80646C50@l */
/* 804ED03C  7C 7F 1B 78 */	mr r31, r3
/* 804ED040  4B FE AB 6D */	bl Player_actor_AppearShadow_fromAnimationFrame
/* 804ED044  3C 60 80 65 */	lis r3, lit_7572@ha /* 0x80648360@ha */
/* 804ED048  C3 FF 01 84 */	lfs f31, 0x184(r31)
/* 804ED04C  C0 83 83 60 */	lfs f4, lit_7572@l(r3)  /* 0x80648360@l */
/* 804ED050  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804ED054  3C 60 80 65 */	lis r3, lit_9522@ha /* 0x806484D0@ha */
/* 804ED058  FC 20 F8 90 */	fmr f1, f31
/* 804ED05C  FC A0 20 90 */	fmr f5, f4
/* 804ED060  C0 44 65 64 */	lfs f2, lit_603@l(r4)  /* 0x80646564@l */
/* 804ED064  C0 63 84 D0 */	lfs f3, lit_9522@l(r3)  /* 0x806484D0@l */
/* 804ED068  4B EC E5 95 */	bl get_percent_forAccelBrake
/* 804ED06C  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804ED070  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804ED074  38 C3 69 F4 */	addi r6, r3, lit_1027@l /* 0x806469F4@l */
/* 804ED078  C9 06 00 00 */	lfd f8, 0(r6)
/* 804ED07C  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804ED080  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804ED084  C8 E6 00 00 */	lfd f7, 0(r6)
/* 804ED088  FC C0 40 34 */	frsqrte f6, f8
/* 804ED08C  C0 43 65 64 */	lfs f2, lit_603@l(r3)  /* 0x80646564@l */
/* 804ED090  3C 80 80 65 */	lis r4, lit_9234@ha /* 0x806484BC@ha */
/* 804ED094  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804ED098  EC 02 08 28 */	fsubs f0, f2, f1
/* 804ED09C  C0 64 84 BC */	lfs f3, lit_9234@l(r4)  /* 0x806484BC@l */
/* 804ED0A0  FC 86 01 B2 */	fmul f4, f6, f6
/* 804ED0A4  38 7F 00 DC */	addi r3, r31, 0xdc
/* 804ED0A8  38 A0 07 1C */	li r5, 0x71c
/* 804ED0AC  38 C0 00 32 */	li r6, 0x32
/* 804ED0B0  EC 03 00 32 */	fmuls f0, f3, f0
/* 804ED0B4  FC C7 01 B2 */	fmul f6, f7, f6
/* 804ED0B8  FC 28 01 32 */	fmul f1, f8, f4
/* 804ED0BC  FC 00 00 1E */	fctiwz f0, f0
/* 804ED0C0  FC 25 08 28 */	fsub f1, f5, f1
/* 804ED0C4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804ED0C8  FC 26 00 72 */	fmul f1, f6, f1
/* 804ED0CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED0D0  7C 04 07 34 */	extsh r4, r0
/* 804ED0D4  FC 01 00 72 */	fmul f0, f1, f1
/* 804ED0D8  FC 27 00 72 */	fmul f1, f7, f1
/* 804ED0DC  FC 08 00 32 */	fmul f0, f8, f0
/* 804ED0E0  FC 05 00 28 */	fsub f0, f5, f0
/* 804ED0E4  FC 21 00 32 */	fmul f1, f1, f0
/* 804ED0E8  FC 01 00 72 */	fmul f0, f1, f1
/* 804ED0EC  FC 27 00 72 */	fmul f1, f7, f1
/* 804ED0F0  FC 08 00 32 */	fmul f0, f8, f0
/* 804ED0F4  FC 05 00 28 */	fsub f0, f5, f0
/* 804ED0F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804ED0FC  FC 08 00 32 */	fmul f0, f8, f0
/* 804ED100  FC 00 00 18 */	frsp f0, f0
/* 804ED104  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804ED108  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804ED10C  EC 22 00 28 */	fsubs f1, f2, f0
/* 804ED110  4B EC E2 01 */	bl add_calc_short_angle2
/* 804ED114  3C 60 80 65 */	lis r3, lit_7572@ha /* 0x80648360@ha */
/* 804ED118  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804ED11C  C0 83 83 60 */	lfs f4, lit_7572@l(r3)  /* 0x80648360@l */
/* 804ED120  3C 80 80 64 */	lis r4, lit_1077@ha /* 0x80646A1C@ha */
/* 804ED124  FC 20 F8 90 */	fmr f1, f31
/* 804ED128  C0 45 65 64 */	lfs f2, lit_603@l(r5)  /* 0x80646564@l */
/* 804ED12C  FC A0 20 90 */	fmr f5, f4
/* 804ED130  C0 64 6A 1C */	lfs f3, lit_1077@l(r4)  /* 0x80646A1C@l */
/* 804ED134  4B EC E4 C9 */	bl get_percent_forAccelBrake
/* 804ED138  80 1F 0D B4 */	lwz r0, 0xdb4(r31)
/* 804ED13C  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 804ED140  2C 00 00 31 */	cmpwi r0, 0x31
/* 804ED144  40 82 00 10 */	bne lbl_804ED154
/* 804ED148  3C 60 80 65 */	lis r3, lit_9235@ha /* 0x806484C0@ha */
/* 804ED14C  C0 03 84 C0 */	lfs f0, lit_9235@l(r3)  /* 0x806484C0@l */
/* 804ED150  48 00 00 0C */	b lbl_804ED15C
lbl_804ED154:
/* 804ED154  3C 60 80 65 */	lis r3, lit_9234@ha /* 0x806484BC@ha */
/* 804ED158  C0 03 84 BC */	lfs f0, lit_9234@l(r3)  /* 0x806484BC@l */
lbl_804ED15C:
/* 804ED15C  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804ED160  CC A5 69 F4 */	lfdu f5, lit_1027@l(r5)  /* 0x806469F4@l */
/* 804ED164  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ED168  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804ED16C  FC 40 28 34 */	frsqrte f2, f5
/* 804ED170  38 C3 69 FC */	addi r6, r3, lit_1028@l /* 0x806469FC@l */
/* 804ED174  C8 66 00 00 */	lfd f3, 0(r6)
/* 804ED178  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804ED17C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804ED180  C8 85 00 00 */	lfd f4, 0(r5)
/* 804ED184  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804ED188  38 7F 00 DE */	addi r3, r31, 0xde
/* 804ED18C  FC 00 00 1E */	fctiwz f0, f0
/* 804ED190  38 C0 00 32 */	li r6, 0x32
/* 804ED194  FC 25 00 72 */	fmul f1, f5, f1
/* 804ED198  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804ED19C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804ED1A0  38 A0 07 1C */	li r5, 0x71c
/* 804ED1A4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804ED1A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804ED1AC  FC 23 08 28 */	fsub f1, f3, f1
/* 804ED1B0  7C 00 07 34 */	extsh r0, r0
/* 804ED1B4  7C 84 02 14 */	add r4, r4, r0
/* 804ED1B8  FC 42 00 72 */	fmul f2, f2, f1
/* 804ED1BC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804ED1C0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804ED1C4  FC 25 00 72 */	fmul f1, f5, f1
/* 804ED1C8  FC 23 08 28 */	fsub f1, f3, f1
/* 804ED1CC  FC 42 00 72 */	fmul f2, f2, f1
/* 804ED1D0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804ED1D4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804ED1D8  FC 25 00 72 */	fmul f1, f5, f1
/* 804ED1DC  FC 23 08 28 */	fsub f1, f3, f1
/* 804ED1E0  FC 22 00 72 */	fmul f1, f2, f1
/* 804ED1E4  FC 25 00 72 */	fmul f1, f5, f1
/* 804ED1E8  FC 20 08 18 */	frsp f1, f1
/* 804ED1EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804ED1F0  C0 21 00 08 */	lfs f1, 8(r1)
/* 804ED1F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804ED1F8  4B EC E1 19 */	bl add_calc_short_angle2
/* 804ED1FC  FC 20 F0 90 */	fmr f1, f30
/* 804ED200  7F E3 FB 78 */	mr r3, r31
/* 804ED204  4B FE A2 D9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804ED208  2C 03 00 00 */	cmpwi r3, 0
/* 804ED20C  40 82 00 0C */	bne lbl_804ED218
/* 804ED210  7F E3 FB 78 */	mr r3, r31
/* 804ED214  4B FF FD AD */	bl Player_actor_SetSound_Standup_bed
lbl_804ED218:
/* 804ED218  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804ED21C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804ED220  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 804ED224  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 804ED228  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804ED22C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804ED230  7C 08 03 A6 */	mtlr r0
/* 804ED234  38 21 00 50 */	addi r1, r1, 0x50
/* 804ED238  4E 80 00 20 */	blr 
