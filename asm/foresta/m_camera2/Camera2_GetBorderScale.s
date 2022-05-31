lbl_8037E120:
/* 8037E120  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8037E124  7C 08 02 A6 */	mflr r0
/* 8037E128  90 01 00 74 */	stw r0, 0x74(r1)
/* 8037E12C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8037E130  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8037E134  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8037E138  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8037E13C  39 61 00 50 */	addi r11, r1, 0x50
/* 8037E140  4B D1 CD 89 */	bl func_8009AEC8
/* 8037E144  FF C0 08 90 */	fmr f30, f1
/* 8037E148  7C 7A 1B 78 */	mr r26, r3
/* 8037E14C  7C 9B 23 78 */	mr r27, r4
/* 8037E150  7C BC 2B 78 */	mr r28, r5
/* 8037E154  7C DD 33 78 */	mr r29, r6
/* 8037E158  7C FE 3B 78 */	mr r30, r7
/* 8037E15C  48 05 B4 E5 */	bl get_player_actor_withoutCheck
/* 8037E160  7C 7F 1B 78 */	mr r31, r3
/* 8037E164  38 61 00 28 */	addi r3, r1, 0x28
/* 8037E168  48 06 8E F9 */	bl mRmTp_GetEntranceBasePosition
/* 8037E16C  2C 03 00 00 */	cmpwi r3, 0
/* 8037E170  40 82 00 60 */	bne lbl_8037E1D0
/* 8037E174  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8037E178  38 61 00 0C */	addi r3, r1, 0xc
/* 8037E17C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8037E180  38 81 00 08 */	addi r4, r1, 8
/* 8037E184  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8037E188  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8037E18C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8037E190  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8037E194  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037E198  48 02 75 C9 */	bl mFI_Wpos2BlockNum
/* 8037E19C  3C 60 80 65 */	lis r3, data_8064F718@ha /* 0x8064F718@ha */
/* 8037E1A0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8037E1A4  39 23 F7 18 */	addi r9, r3, data_8064F718@l /* 0x8064F718@l */
/* 8037E1A8  80 C1 00 08 */	lwz r6, 8(r1)
/* 8037E1AC  81 09 00 00 */	lwz r8, 0(r9)
/* 8037E1B0  38 61 00 28 */	addi r3, r1, 0x28
/* 8037E1B4  80 E9 00 04 */	lwz r7, 4(r9)
/* 8037E1B8  38 81 00 10 */	addi r4, r1, 0x10
/* 8037E1BC  80 09 00 08 */	lwz r0, 8(r9)
/* 8037E1C0  91 01 00 10 */	stw r8, 0x10(r1)
/* 8037E1C4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8037E1C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8037E1CC  48 02 78 49 */	bl mFI_LposInBKtoWpos
lbl_8037E1D0:
/* 8037E1D0  7F 43 D3 78 */	mr r3, r26
/* 8037E1D4  4B FF FF 05 */	bl Camera2_BorderSize
/* 8037E1D8  EF FE 00 72 */	fmuls f31, f30, f1
/* 8037E1DC  48 02 6C 45 */	bl mFI_GetBlockWidth
/* 8037E1E0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8037E1E4  7F 43 D3 78 */	mr r3, r26
/* 8037E1E8  EC 00 08 2A */	fadds f0, f0, f1
/* 8037E1EC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8037E1F0  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8037E1F4  4B FF FE E5 */	bl Camera2_BorderSize
/* 8037E1F8  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8037E1FC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8037E200  EC 00 08 2A */	fadds f0, f0, f1
/* 8037E204  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8037E208  4B FF F8 DD */	bl Camera2_GetUnderBorderAdjust
/* 8037E20C  FF E0 08 90 */	fmr f31, f1
/* 8037E210  7F 43 D3 78 */	mr r3, r26
/* 8037E214  4B FF FE C5 */	bl Camera2_BorderSize
/* 8037E218  EC 21 F8 2A */	fadds f1, f1, f31
/* 8037E21C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8037E220  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8037E224  EF E0 08 28 */	fsubs f31, f0, f1
/* 8037E228  48 02 6D C5 */	bl mFI_GetBlockHeight
/* 8037E22C  EC 01 F8 2A */	fadds f0, f1, f31
/* 8037E230  7F 43 D3 78 */	mr r3, r26
/* 8037E234  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8037E238  4B FF FE A1 */	bl Camera2_BorderSize
/* 8037E23C  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80641390@ha */
/* 8037E240  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8037E244  C0 43 13 90 */	lfs f2, lit_587@l(r3)  /* 0x80641390@l */
/* 8037E248  EC 22 08 2A */	fadds f1, f2, f1
/* 8037E24C  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8037E250  EC 00 08 2A */	fadds f0, f0, f1
/* 8037E254  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8037E258  4B FF F8 0D */	bl Camera2_InDoorCheck
/* 8037E25C  2C 03 00 00 */	cmpwi r3, 0
/* 8037E260  41 82 00 18 */	beq lbl_8037E278
/* 8037E264  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80641394@ha */
/* 8037E268  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8037E26C  C0 03 13 94 */	lfs f0, lit_588@l(r3)  /* 0x80641394@l */
/* 8037E270  EC 01 00 2A */	fadds f0, f1, f0
/* 8037E274  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_8037E278:
/* 8037E278  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8037E27C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8037E280  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8037E284  39 61 00 50 */	addi r11, r1, 0x50
/* 8037E288  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8037E28C  4B D1 CC 89 */	bl func_8009AF14
/* 8037E290  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8037E294  7C 08 03 A6 */	mtlr r0
/* 8037E298  38 21 00 70 */	addi r1, r1, 0x70
/* 8037E29C  4E 80 00 20 */	blr 
