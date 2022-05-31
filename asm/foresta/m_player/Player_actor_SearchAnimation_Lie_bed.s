lbl_804EC00C:
/* 804EC00C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804EC010  7C 08 02 A6 */	mflr r0
/* 804EC014  90 01 00 54 */	stw r0, 0x54(r1)
/* 804EC018  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804EC01C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804EC020  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 804EC024  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 804EC028  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804EC02C  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804EC030  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804EC034  FF C0 08 90 */	fmr f30, f1
/* 804EC038  C0 44 6E 54 */	lfs f2, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804EC03C  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804EC040  7C 7F 1B 78 */	mr r31, r3
/* 804EC044  4B FE BA E9 */	bl Player_actor_DisappearShadow_fromAnimationFrame
/* 804EC048  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EC04C  C3 FF 01 84 */	lfs f31, 0x184(r31)
/* 804EC050  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804EC054  3C 80 80 65 */	lis r4, lit_7410@ha /* 0x80648358@ha */
/* 804EC058  3C 60 80 64 */	lis r3, lit_5641@ha /* 0x80647D6C@ha */
/* 804EC05C  FC 20 F8 90 */	fmr f1, f31
/* 804EC060  FC A0 20 90 */	fmr f5, f4
/* 804EC064  C0 44 83 58 */	lfs f2, lit_7410@l(r4)  /* 0x80648358@l */
/* 804EC068  C0 63 7D 6C */	lfs f3, lit_5641@l(r3)  /* 0x80647D6C@l */
/* 804EC06C  4B EC F5 91 */	bl get_percent_forAccelBrake
/* 804EC070  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EC074  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EC078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EC07C  40 81 00 68 */	ble lbl_804EC0E4
/* 804EC080  FC 40 08 34 */	frsqrte f2, f1
/* 804EC084  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804EC088  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804EC08C  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804EC090  C8 84 00 00 */	lfd f4, 0(r4)
/* 804EC094  FC 02 00 B2 */	fmul f0, f2, f2
/* 804EC098  C8 63 69 FC */	lfd f3, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804EC09C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC0A0  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC0A4  FC 03 00 28 */	fsub f0, f3, f0
/* 804EC0A8  FC 42 00 32 */	fmul f2, f2, f0
/* 804EC0AC  FC 02 00 B2 */	fmul f0, f2, f2
/* 804EC0B0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC0B4  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC0B8  FC 03 00 28 */	fsub f0, f3, f0
/* 804EC0BC  FC 42 00 32 */	fmul f2, f2, f0
/* 804EC0C0  FC 02 00 B2 */	fmul f0, f2, f2
/* 804EC0C4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC0C8  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC0CC  FC 03 00 28 */	fsub f0, f3, f0
/* 804EC0D0  FC 02 00 32 */	fmul f0, f2, f0
/* 804EC0D4  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC0D8  FC 00 00 18 */	frsp f0, f0
/* 804EC0DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804EC0E0  C0 21 00 14 */	lfs f1, 0x14(r1)
lbl_804EC0E4:
/* 804EC0E4  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804EC0E8  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804EC0EC  38 C3 69 F4 */	addi r6, r3, lit_1027@l /* 0x806469F4@l */
/* 804EC0F0  3C 60 80 65 */	lis r3, lit_9234@ha /* 0x806484BC@ha */
/* 804EC0F4  C8 E6 00 00 */	lfd f7, 0(r6)
/* 804EC0F8  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804EC0FC  38 83 84 BC */	addi r4, r3, lit_9234@l /* 0x806484BC@l */
/* 804EC100  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EC104  FC A0 38 34 */	frsqrte f5, f7
/* 804EC108  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804EC10C  C0 44 00 00 */	lfs f2, 0(r4)
/* 804EC110  38 83 65 64 */	addi r4, r3, lit_603@l /* 0x80646564@l */
/* 804EC114  C8 85 00 00 */	lfd f4, 0(r5)
/* 804EC118  38 7F 00 DC */	addi r3, r31, 0xdc
/* 804EC11C  FC 65 01 72 */	fmul f3, f5, f5
/* 804EC120  C0 04 00 00 */	lfs f0, 0(r4)
/* 804EC124  38 A0 07 1C */	li r5, 0x71c
/* 804EC128  38 C0 00 32 */	li r6, 0x32
/* 804EC12C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804EC130  FC A6 01 72 */	fmul f5, f6, f5
/* 804EC134  FC 47 00 F2 */	fmul f2, f7, f3
/* 804EC138  FC 20 08 1E */	fctiwz f1, f1
/* 804EC13C  FC 44 10 28 */	fsub f2, f4, f2
/* 804EC140  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 804EC144  FC 45 00 B2 */	fmul f2, f5, f2
/* 804EC148  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804EC14C  7C 04 07 34 */	extsh r4, r0
/* 804EC150  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EC154  FC 46 00 B2 */	fmul f2, f6, f2
/* 804EC158  FC 27 00 72 */	fmul f1, f7, f1
/* 804EC15C  FC 24 08 28 */	fsub f1, f4, f1
/* 804EC160  FC 42 00 72 */	fmul f2, f2, f1
/* 804EC164  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EC168  FC 46 00 B2 */	fmul f2, f6, f2
/* 804EC16C  FC 27 00 72 */	fmul f1, f7, f1
/* 804EC170  FC 24 08 28 */	fsub f1, f4, f1
/* 804EC174  FC 22 00 72 */	fmul f1, f2, f1
/* 804EC178  FC 27 00 72 */	fmul f1, f7, f1
/* 804EC17C  FC 20 08 18 */	frsp f1, f1
/* 804EC180  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804EC184  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804EC188  EC 20 08 28 */	fsubs f1, f0, f1
/* 804EC18C  4B EC F1 85 */	bl add_calc_short_angle2
/* 804EC190  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EC194  3C A0 80 65 */	lis r5, lit_7410@ha /* 0x80648358@ha */
/* 804EC198  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804EC19C  3C 80 80 64 */	lis r4, lit_5641@ha /* 0x80647D6C@ha */
/* 804EC1A0  FC 20 F8 90 */	fmr f1, f31
/* 804EC1A4  C0 45 83 58 */	lfs f2, lit_7410@l(r5)  /* 0x80648358@l */
/* 804EC1A8  FC A0 20 90 */	fmr f5, f4
/* 804EC1AC  C0 64 7D 6C */	lfs f3, lit_5641@l(r4)  /* 0x80647D6C@l */
/* 804EC1B0  4B EC F4 4D */	bl get_percent_forAccelBrake
/* 804EC1B4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EC1B8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EC1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EC1C0  40 81 00 68 */	ble lbl_804EC228
/* 804EC1C4  FC 40 08 34 */	frsqrte f2, f1
/* 804EC1C8  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 804EC1CC  38 83 69 F4 */	addi r4, r3, lit_1027@l /* 0x806469F4@l */
/* 804EC1D0  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804EC1D4  C8 84 00 00 */	lfd f4, 0(r4)
/* 804EC1D8  FC 02 00 B2 */	fmul f0, f2, f2
/* 804EC1DC  C8 63 69 FC */	lfd f3, lit_1028@l(r3)  /* 0x806469FC@l */
/* 804EC1E0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC1E4  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC1E8  FC 03 00 28 */	fsub f0, f3, f0
/* 804EC1EC  FC 42 00 32 */	fmul f2, f2, f0
/* 804EC1F0  FC 02 00 B2 */	fmul f0, f2, f2
/* 804EC1F4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC1F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC1FC  FC 03 00 28 */	fsub f0, f3, f0
/* 804EC200  FC 42 00 32 */	fmul f2, f2, f0
/* 804EC204  FC 02 00 B2 */	fmul f0, f2, f2
/* 804EC208  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC20C  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC210  FC 03 00 28 */	fsub f0, f3, f0
/* 804EC214  FC 02 00 32 */	fmul f0, f2, f0
/* 804EC218  FC 01 00 32 */	fmul f0, f1, f0
/* 804EC21C  FC 00 00 18 */	frsp f0, f0
/* 804EC220  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804EC224  C0 21 00 0C */	lfs f1, 0xc(r1)
lbl_804EC228:
/* 804EC228  80 1F 0D B4 */	lwz r0, 0xdb4(r31)
/* 804EC22C  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 804EC230  2C 00 00 29 */	cmpwi r0, 0x29
/* 804EC234  40 82 00 10 */	bne lbl_804EC244
/* 804EC238  3C 60 80 65 */	lis r3, lit_9235@ha /* 0x806484C0@ha */
/* 804EC23C  C0 03 84 C0 */	lfs f0, lit_9235@l(r3)  /* 0x806484C0@l */
/* 804EC240  48 00 00 0C */	b lbl_804EC24C
lbl_804EC244:
/* 804EC244  3C 60 80 65 */	lis r3, lit_9234@ha /* 0x806484BC@ha */
/* 804EC248  C0 03 84 BC */	lfs f0, lit_9234@l(r3)  /* 0x806484BC@l */
lbl_804EC24C:
/* 804EC24C  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804EC250  CC A5 69 F4 */	lfdu f5, lit_1027@l(r5)  /* 0x806469F4@l */
/* 804EC254  EC 00 00 72 */	fmuls f0, f0, f1
/* 804EC258  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804EC25C  FC 40 28 34 */	frsqrte f2, f5
/* 804EC260  38 C3 69 FC */	addi r6, r3, lit_1028@l /* 0x806469FC@l */
/* 804EC264  C8 66 00 00 */	lfd f3, 0(r6)
/* 804EC268  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EC26C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EC270  C8 85 00 00 */	lfd f4, 0(r5)
/* 804EC274  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EC278  38 7F 00 DE */	addi r3, r31, 0xde
/* 804EC27C  FC 00 00 1E */	fctiwz f0, f0
/* 804EC280  38 C0 00 32 */	li r6, 0x32
/* 804EC284  FC 25 00 72 */	fmul f1, f5, f1
/* 804EC288  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804EC28C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804EC290  38 A0 07 1C */	li r5, 0x71c
/* 804EC294  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC298  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804EC29C  FC 23 08 28 */	fsub f1, f3, f1
/* 804EC2A0  7C 04 02 14 */	add r0, r4, r0
/* 804EC2A4  7C 04 07 34 */	extsh r4, r0
/* 804EC2A8  FC 42 00 72 */	fmul f2, f2, f1
/* 804EC2AC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EC2B0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC2B4  FC 25 00 72 */	fmul f1, f5, f1
/* 804EC2B8  FC 23 08 28 */	fsub f1, f3, f1
/* 804EC2BC  FC 42 00 72 */	fmul f2, f2, f1
/* 804EC2C0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EC2C4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EC2C8  FC 25 00 72 */	fmul f1, f5, f1
/* 804EC2CC  FC 23 08 28 */	fsub f1, f3, f1
/* 804EC2D0  FC 22 00 72 */	fmul f1, f2, f1
/* 804EC2D4  FC 25 00 72 */	fmul f1, f5, f1
/* 804EC2D8  FC 20 08 18 */	frsp f1, f1
/* 804EC2DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804EC2E0  C0 21 00 08 */	lfs f1, 8(r1)
/* 804EC2E4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804EC2E8  4B EC F0 29 */	bl add_calc_short_angle2
/* 804EC2EC  FC 20 F0 90 */	fmr f1, f30
/* 804EC2F0  7F E3 FB 78 */	mr r3, r31
/* 804EC2F4  4B FE B1 E9 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804EC2F8  2C 03 00 00 */	cmpwi r3, 0
/* 804EC2FC  40 82 00 0C */	bne lbl_804EC308
/* 804EC300  7F E3 FB 78 */	mr r3, r31
/* 804EC304  4B FF FC C1 */	bl Player_actor_SetSound_Lie_bed
lbl_804EC308:
/* 804EC308  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804EC30C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804EC310  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 804EC314  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 804EC318  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804EC31C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804EC320  7C 08 03 A6 */	mtlr r0
/* 804EC324  38 21 00 50 */	addi r1, r1, 0x50
/* 804EC328  4E 80 00 20 */	blr 
