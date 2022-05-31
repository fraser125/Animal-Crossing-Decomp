lbl_80419FC4:
/* 80419FC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80419FC8  7C 08 02 A6 */	mflr r0
/* 80419FCC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80419FD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80419FD4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80419FD8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80419FDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80419FE0  4B FB F6 61 */	bl get_player_actor_withoutCheck
/* 80419FE4  7C 7F 1B 78 */	mr r31, r3
/* 80419FE8  38 61 00 14 */	addi r3, r1, 0x14
/* 80419FEC  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 80419FF0  38 81 00 10 */	addi r4, r1, 0x10
/* 80419FF4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80419FF8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80419FFC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8041A000  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041A004  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8041A008  90 01 00 28 */	stw r0, 0x28(r1)
/* 8041A00C  4B F8 B7 55 */	bl mFI_Wpos2BlockNum
/* 8041A010  2C 03 00 00 */	cmpwi r3, 0
/* 8041A014  41 82 01 58 */	beq lbl_8041A16C
/* 8041A018  3C 60 81 1D */	lis r3, tpppp@ha /* 0x811CB968@ha */
/* 8041A01C  80 E3 B9 68 */	lwz r7, tpppp@l(r3)  /* 0x811CB968@l */
/* 8041A020  28 07 00 00 */	cmplwi r7, 0
/* 8041A024  41 82 01 48 */	beq lbl_8041A16C
/* 8041A028  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8041A02C  3C 60 80 64 */	lis r3, lit_576@ha /* 0x80643D44@ha */
/* 8041A030  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8041A034  C0 03 3D 44 */	lfs f0, lit_576@l(r3)  /* 0x80643D44@l */
/* 8041A038  38 61 00 2C */	addi r3, r1, 0x2c
/* 8041A03C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8041A040  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8041A044  90 81 00 38 */	stw r4, 0x38(r1)
/* 8041A048  EC 01 00 2A */	fadds f0, f1, f0
/* 8041A04C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8041A050  90 01 00 40 */	stw r0, 0x40(r1)
/* 8041A054  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8041A058  80 87 00 04 */	lwz r4, 4(r7)
/* 8041A05C  80 A7 00 00 */	lwz r5, 0(r7)
/* 8041A060  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 8041A064  80 E7 00 08 */	lwz r7, 8(r7)
/* 8041A068  4B F8 BC 8D */	bl mFI_BkandUtNum2CenterWpos
/* 8041A06C  38 61 00 38 */	addi r3, r1, 0x38
/* 8041A070  38 81 00 2C */	addi r4, r1, 0x2c
/* 8041A074  4B FB E8 29 */	bl sanglexy_by_2pos
/* 8041A078  3C A0 81 1D */	lis r5, tpppp@ha /* 0x811CB968@ha */
/* 8041A07C  54 80 84 3E */	srwi r0, r4, 0x10
/* 8041A080  38 85 B9 68 */	addi r4, r5, tpppp@l /* 0x811CB968@l */
/* 8041A084  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8041A088  80 84 00 00 */	lwz r4, 0(r4)
/* 8041A08C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8041A090  80 04 00 04 */	lwz r0, 4(r4)
/* 8041A094  90 61 00 18 */	stw r3, 0x18(r1)
/* 8041A098  7C 05 00 00 */	cmpw r5, r0
/* 8041A09C  40 82 00 14 */	bne lbl_8041A0B0
/* 8041A0A0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8041A0A4  80 04 00 00 */	lwz r0, 0(r4)
/* 8041A0A8  7C 03 00 00 */	cmpw r3, r0
/* 8041A0AC  41 82 00 64 */	beq lbl_8041A110
lbl_8041A0B0:
/* 8041A0B0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041A0B4  3C 80 80 64 */	lis r4, lit_556@ha /* 0x80643D38@ha */
/* 8041A0B8  38 A3 52 F0 */	addi r5, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8041A0BC  C0 84 3D 38 */	lfs f4, lit_556@l(r4)  /* 0x80643D38@l */
/* 8041A0C0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8041A0C4  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80643D3C@ha */
/* 8041A0C8  38 C3 3D 3C */	addi r6, r3, lit_557@l /* 0x80643D3C@l */
/* 8041A0CC  FC A0 20 90 */	fmr f5, f4
/* 8041A0D0  80 05 00 00 */	lwz r0, 0(r5)
/* 8041A0D4  38 60 00 00 */	li r3, 0
/* 8041A0D8  C0 C6 00 00 */	lfs f6, 0(r6)
/* 8041A0DC  38 A0 00 00 */	li r5, 0
/* 8041A0E0  90 01 00 08 */	stw r0, 8(r1)
/* 8041A0E4  A8 81 00 1A */	lha r4, 0x1a(r1)
/* 8041A0E8  38 C0 00 FA */	li r6, 0xfa
/* 8041A0EC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8041A0F0  38 E0 00 64 */	li r7, 0x64
/* 8041A0F4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8041A0F8  39 00 00 FF */	li r8, 0xff
/* 8041A0FC  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8041A100  39 20 00 80 */	li r9, 0x80
/* 8041A104  39 40 00 04 */	li r10, 4
/* 8041A108  4B F7 BF B9 */	bl Debug_Display_new
/* 8041A10C  48 00 00 60 */	b lbl_8041A16C
lbl_8041A110:
/* 8041A110  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041A114  3C 80 80 64 */	lis r4, lit_556@ha /* 0x80643D38@ha */
/* 8041A118  38 A3 52 F0 */	addi r5, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8041A11C  C0 84 3D 38 */	lfs f4, lit_556@l(r4)  /* 0x80643D38@l */
/* 8041A120  80 A5 00 00 */	lwz r5, 0(r5)
/* 8041A124  3C 60 80 64 */	lis r3, lit_558@ha /* 0x80643D40@ha */
/* 8041A128  38 C3 3D 40 */	addi r6, r3, lit_558@l /* 0x80643D40@l */
/* 8041A12C  FC A0 20 90 */	fmr f5, f4
/* 8041A130  80 05 00 00 */	lwz r0, 0(r5)
/* 8041A134  38 60 00 00 */	li r3, 0
/* 8041A138  C0 C6 00 00 */	lfs f6, 0(r6)
/* 8041A13C  38 A0 00 00 */	li r5, 0
/* 8041A140  90 01 00 08 */	stw r0, 8(r1)
/* 8041A144  A8 81 00 1A */	lha r4, 0x1a(r1)
/* 8041A148  38 C0 00 FA */	li r6, 0xfa
/* 8041A14C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8041A150  38 E0 00 64 */	li r7, 0x64
/* 8041A154  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8041A158  39 00 00 FF */	li r8, 0xff
/* 8041A15C  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8041A160  39 20 00 80 */	li r9, 0x80
/* 8041A164  39 40 00 04 */	li r10, 4
/* 8041A168  4B F7 BF 59 */	bl Debug_Display_new
lbl_8041A16C:
/* 8041A16C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8041A170  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8041A174  7C 08 03 A6 */	mtlr r0
/* 8041A178  38 21 00 50 */	addi r1, r1, 0x50
/* 8041A17C  4E 80 00 20 */	blr 
