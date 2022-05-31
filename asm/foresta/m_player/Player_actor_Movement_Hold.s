lbl_804EA044:
/* 804EA044  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EA048  7C 08 02 A6 */	mflr r0
/* 804EA04C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EA050  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804EA054  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804EA058  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804EA05C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804EA060  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EA064  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804EA068  7C 7F 1B 78 */	mr r31, r3
/* 804EA06C  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804EA070  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804EA074  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804EA078  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804EA07C  C8 86 00 00 */	lfd f4, 0(r6)
/* 804EA080  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EA084  FC 40 28 34 */	frsqrte f2, f5
/* 804EA088  C8 65 00 00 */	lfd f3, 0(r5)
/* 804EA08C  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804EA090  38 7F 00 DE */	addi r3, r31, 0xde
/* 804EA094  A8 9F 0D 1C */	lha r4, 0xd1c(r31)
/* 804EA098  38 A0 20 00 */	li r5, 0x2000
/* 804EA09C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EA0A0  C3 FF 0D 20 */	lfs f31, 0xd20(r31)
/* 804EA0A4  C3 DF 0D 28 */	lfs f30, 0xd28(r31)
/* 804EA0A8  38 C0 00 32 */	li r6, 0x32
/* 804EA0AC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EA0B0  FC 25 00 72 */	fmul f1, f5, f1
/* 804EA0B4  FC 23 08 28 */	fsub f1, f3, f1
/* 804EA0B8  FC 42 00 72 */	fmul f2, f2, f1
/* 804EA0BC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EA0C0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EA0C4  FC 25 00 72 */	fmul f1, f5, f1
/* 804EA0C8  FC 23 08 28 */	fsub f1, f3, f1
/* 804EA0CC  FC 42 00 72 */	fmul f2, f2, f1
/* 804EA0D0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EA0D4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804EA0D8  FC 25 00 72 */	fmul f1, f5, f1
/* 804EA0DC  FC 23 08 28 */	fsub f1, f3, f1
/* 804EA0E0  FC 22 00 72 */	fmul f1, f2, f1
/* 804EA0E4  FC 25 00 72 */	fmul f1, f5, f1
/* 804EA0E8  FC 20 08 18 */	frsp f1, f1
/* 804EA0EC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804EA0F0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804EA0F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804EA0F8  4B ED 12 19 */	bl add_calc_short_angle2
/* 804EA0FC  3C 60 80 65 */	lis r3, lit_6690@ha /* 0x806480CC@ha */
/* 804EA100  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804EA104  38 A3 80 CC */	addi r5, r3, lit_6690@l /* 0x806480CC@l */
/* 804EA108  C8 E4 69 F4 */	lfd f7, lit_1027@l(r4)  /* 0x806469F4@l */
/* 804EA10C  C9 05 00 00 */	lfd f8, 0(r5)
/* 804EA110  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804EA114  38 E3 69 FC */	addi r7, r3, lit_1028@l /* 0x806469FC@l */
/* 804EA118  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804EA11C  FC 00 40 34 */	frsqrte f0, f8
/* 804EA120  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EA124  38 C3 65 64 */	addi r6, r3, lit_603@l /* 0x80646564@l */
/* 804EA128  3C 80 80 65 */	lis r4, lit_8758@ha /* 0x806484A8@ha */
/* 804EA12C  38 A4 84 A8 */	addi r5, r4, lit_8758@l /* 0x806484A8@l */
/* 804EA130  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804EA134  FC 20 00 32 */	fmul f1, f0, f0
/* 804EA138  38 83 6C 4C */	addi r4, r3, lit_2671@l /* 0x80646C4C@l */
/* 804EA13C  C8 C7 00 00 */	lfd f6, 0(r7)
/* 804EA140  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EA144  FC A7 00 32 */	fmul f5, f7, f0
/* 804EA148  C0 06 00 00 */	lfs f0, 0(r6)
/* 804EA14C  FC 48 00 72 */	fmul f2, f8, f1
/* 804EA150  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804EA154  C0 65 00 00 */	lfs f3, 0(r5)
/* 804EA158  FC 20 F8 90 */	fmr f1, f31
/* 804EA15C  C0 84 00 00 */	lfs f4, 0(r4)
/* 804EA160  FC 46 10 28 */	fsub f2, f6, f2
/* 804EA164  FC A5 00 B2 */	fmul f5, f5, f2
/* 804EA168  FC 45 01 72 */	fmul f2, f5, f5
/* 804EA16C  FC A7 01 72 */	fmul f5, f7, f5
/* 804EA170  FC 48 00 B2 */	fmul f2, f8, f2
/* 804EA174  FC 46 10 28 */	fsub f2, f6, f2
/* 804EA178  FC A5 00 B2 */	fmul f5, f5, f2
/* 804EA17C  FC 45 01 72 */	fmul f2, f5, f5
/* 804EA180  FC A7 01 72 */	fmul f5, f7, f5
/* 804EA184  FC 48 00 B2 */	fmul f2, f8, f2
/* 804EA188  FC 46 10 28 */	fsub f2, f6, f2
/* 804EA18C  FC 45 00 B2 */	fmul f2, f5, f2
/* 804EA190  FC 48 00 B2 */	fmul f2, f8, f2
/* 804EA194  FC 40 10 18 */	frsp f2, f2
/* 804EA198  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804EA19C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804EA1A0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804EA1A4  4B ED 10 0D */	bl add_calc
/* 804EA1A8  3C 60 80 65 */	lis r3, lit_6690@ha /* 0x806480CC@ha */
/* 804EA1AC  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804EA1B0  38 A3 80 CC */	addi r5, r3, lit_6690@l /* 0x806480CC@l */
/* 804EA1B4  C8 E4 69 F4 */	lfd f7, lit_1027@l(r4)  /* 0x806469F4@l */
/* 804EA1B8  C9 05 00 00 */	lfd f8, 0(r5)
/* 804EA1BC  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804EA1C0  38 C3 69 FC */	addi r6, r3, lit_1028@l /* 0x806469FC@l */
/* 804EA1C4  3C 80 80 65 */	lis r4, lit_8758@ha /* 0x806484A8@ha */
/* 804EA1C8  FC 40 40 34 */	frsqrte f2, f8
/* 804EA1CC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EA1D0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EA1D4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804EA1D8  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804EA1DC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804EA1E0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804EA1E4  C0 83 6C 4C */	lfs f4, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804EA1E8  C0 64 84 A8 */	lfs f3, lit_8758@l(r4)  /* 0x806484A8@l */
/* 804EA1EC  38 7F 00 30 */	addi r3, r31, 0x30
/* 804EA1F0  FC A7 00 B2 */	fmul f5, f7, f2
/* 804EA1F4  FC 48 00 72 */	fmul f2, f8, f1
/* 804EA1F8  FC 20 F0 90 */	fmr f1, f30
/* 804EA1FC  FC 46 10 28 */	fsub f2, f6, f2
/* 804EA200  FC A5 00 B2 */	fmul f5, f5, f2
/* 804EA204  FC 45 01 72 */	fmul f2, f5, f5
/* 804EA208  FC A7 01 72 */	fmul f5, f7, f5
/* 804EA20C  FC 48 00 B2 */	fmul f2, f8, f2
/* 804EA210  FC 46 10 28 */	fsub f2, f6, f2
/* 804EA214  FC A5 00 B2 */	fmul f5, f5, f2
/* 804EA218  FC 45 01 72 */	fmul f2, f5, f5
/* 804EA21C  FC A7 01 72 */	fmul f5, f7, f5
/* 804EA220  FC 48 00 B2 */	fmul f2, f8, f2
/* 804EA224  FC 46 10 28 */	fsub f2, f6, f2
/* 804EA228  FC 45 00 B2 */	fmul f2, f5, f2
/* 804EA22C  FC 48 00 B2 */	fmul f2, f8, f2
/* 804EA230  FC 40 10 18 */	frsp f2, f2
/* 804EA234  D0 41 00 08 */	stfs f2, 8(r1)
/* 804EA238  C0 41 00 08 */	lfs f2, 8(r1)
/* 804EA23C  EC 40 10 28 */	fsubs f2, f0, f2
/* 804EA240  4B ED 0F 71 */	bl add_calc
/* 804EA244  7F E3 FB 78 */	mr r3, r31
/* 804EA248  38 80 00 00 */	li r4, 0
/* 804EA24C  4B FE B8 71 */	bl Player_actor_Movement_Base_Stop
/* 804EA250  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804EA254  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804EA258  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804EA25C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804EA260  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EA264  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EA268  7C 08 03 A6 */	mtlr r0
/* 804EA26C  38 21 00 40 */	addi r1, r1, 0x40
/* 804EA270  4E 80 00 20 */	blr 
