lbl_803920C0:
/* 803920C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803920C4  7C 08 02 A6 */	mflr r0
/* 803920C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 803920CC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 803920D0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 803920D4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 803920D8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 803920DC  39 61 00 50 */	addi r11, r1, 0x50
/* 803920E0  4B D0 8D F1 */	bl func_8009AED0
/* 803920E4  3C C0 80 64 */	lis r6, lit_4228@ha /* 0x80641B38@ha */
/* 803920E8  3C A0 81 13 */	lis r5, l_ActorInf@ha /* 0x81135560@ha */
/* 803920EC  39 06 1B 38 */	addi r8, r6, lit_4228@l /* 0x80641B38@l */
/* 803920F0  FF C0 08 90 */	fmr f30, f1
/* 803920F4  80 E8 00 00 */	lwz r7, 0(r8)
/* 803920F8  38 A5 55 60 */	addi r5, r5, l_ActorInf@l /* 0x81135560@l */
/* 803920FC  80 C8 00 04 */	lwz r6, 4(r8)
/* 80392100  FF E0 10 90 */	fmr f31, f2
/* 80392104  80 08 00 08 */	lwz r0, 8(r8)
/* 80392108  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8039210C  3B E5 00 34 */	addi r31, r5, 0x34
/* 80392110  7C 7D 1B 78 */	mr r29, r3
/* 80392114  7C 9E 23 78 */	mr r30, r4
/* 80392118  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8039211C  7F E3 FB 78 */	mr r3, r31
/* 80392120  90 01 00 30 */	stw r0, 0x30(r1)
/* 80392124  4B FF 44 89 */	bl mCoBG_InitRevpos
/* 80392128  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 8039212C  7F C4 F3 78 */	mr r4, r30
/* 80392130  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80392134  38 63 00 1C */	addi r3, r3, 0x1c
/* 80392138  4B FF 68 B1 */	bl mCoBG_GetCurrentCenterPosition
/* 8039213C  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80392140  7F C4 F3 78 */	mr r4, r30
/* 80392144  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80392148  3B 83 00 28 */	addi r28, r3, 0x28
/* 8039214C  7F 83 E3 78 */	mr r3, r28
/* 80392150  4B FF 68 B5 */	bl mCoBG_GetOldCenterPosition
/* 80392154  3C 60 81 13 */	lis r3, l_ActorInf@ha /* 0x81135560@ha */
/* 80392158  7F C4 F3 78 */	mr r4, r30
/* 8039215C  38 63 55 60 */	addi r3, r3, l_ActorInf@l /* 0x81135560@l */
/* 80392160  38 63 00 0C */	addi r3, r3, 0xc
/* 80392164  4B FF 43 39 */	bl mCoBG_GetSpeedByWpos
/* 80392168  80 FC 00 00 */	lwz r7, 0(r28)
/* 8039216C  38 61 00 0C */	addi r3, r1, 0xc
/* 80392170  80 DC 00 04 */	lwz r6, 4(r28)
/* 80392174  38 81 00 08 */	addi r4, r1, 8
/* 80392178  80 1C 00 08 */	lwz r0, 8(r28)
/* 8039217C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80392180  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80392184  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80392188  90 01 00 18 */	stw r0, 0x18(r1)
/* 8039218C  48 01 35 D5 */	bl mFI_Wpos2BlockNum
/* 80392190  2C 03 00 00 */	cmpwi r3, 0
/* 80392194  41 82 00 E4 */	beq lbl_80392278
/* 80392198  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8039219C  3C A0 80 64 */	lis r5, lit_4232@ha /* 0x80641B44@ha */
/* 803921A0  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 803921A4  7F E3 FB 78 */	mr r3, r31
/* 803921A8  38 C5 1B 44 */	addi r6, r5, lit_4232@l /* 0x80641B44@l */
/* 803921AC  C0 24 00 00 */	lfs f1, 0(r4)
/* 803921B0  80 A6 00 00 */	lwz r5, 0(r6)
/* 803921B4  80 86 00 04 */	lwz r4, 4(r6)
/* 803921B8  FC 40 08 90 */	fmr f2, f1
/* 803921BC  80 06 00 08 */	lwz r0, 8(r6)
/* 803921C0  FC 60 08 90 */	fmr f3, f1
/* 803921C4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803921C8  90 81 00 20 */	stw r4, 0x20(r1)
/* 803921CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803921D0  4B FF 38 25 */	bl mCoBG_SetXyz_t
/* 803921D4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803921D8  38 81 00 24 */	addi r4, r1, 0x24
/* 803921DC  80 C1 00 08 */	lwz r6, 8(r1)
/* 803921E0  38 61 00 1C */	addi r3, r1, 0x1c
/* 803921E4  48 01 39 95 */	bl mFI_BkNum2WposXZ
/* 803921E8  4B FF FE C9 */	bl mCoBG_GetBlockBgCheckMode
/* 803921EC  2C 03 00 01 */	cmpwi r3, 1
/* 803921F0  40 82 00 60 */	bne lbl_80392250
/* 803921F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803921F8  80 81 00 08 */	lwz r4, 8(r1)
/* 803921FC  48 01 40 ED */	bl mFI_BkNum2BlockKind
/* 80392200  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80392204  41 82 00 4C */	beq lbl_80392250
/* 80392208  3C 80 80 64 */	lis r4, lit_789@ha /* 0x806419D0@ha */
/* 8039220C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80392210  C0 44 19 D0 */	lfs f2, lit_789@l(r4)  /* 0x806419D0@l */
/* 80392214  3C 60 80 64 */	lis r3, lit_4243@ha /* 0x80641B50@ha */
/* 80392218  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8039221C  FC 60 F0 90 */	fmr f3, f30
/* 80392220  EC A1 10 2A */	fadds f5, f1, f2
/* 80392224  C0 23 1B 50 */	lfs f1, lit_4243@l(r3)  /* 0x80641B50@l */
/* 80392228  EC 00 10 2A */	fadds f0, f0, f2
/* 8039222C  7F A3 EB 78 */	mr r3, r29
/* 80392230  FC 40 08 90 */	fmr f2, f1
/* 80392234  FC 80 F8 90 */	fmr f4, f31
/* 80392238  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 8039223C  7F C4 F3 78 */	mr r4, r30
/* 80392240  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80392244  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80392248  48 00 00 71 */	bl mCoBG_ScopeWallCheck
/* 8039224C  48 00 00 44 */	b lbl_80392290
lbl_80392250:
/* 80392250  3C 60 80 64 */	lis r3, lit_4244@ha /* 0x80641B54@ha */
/* 80392254  FC 60 F0 90 */	fmr f3, f30
/* 80392258  C0 23 1B 54 */	lfs f1, lit_4244@l(r3)  /* 0x80641B54@l */
/* 8039225C  FC 80 F8 90 */	fmr f4, f31
/* 80392260  7F A3 EB 78 */	mr r3, r29
/* 80392264  7F C4 F3 78 */	mr r4, r30
/* 80392268  FC 40 08 90 */	fmr f2, f1
/* 8039226C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80392270  48 00 00 49 */	bl mCoBG_ScopeWallCheck
/* 80392274  48 00 00 1C */	b lbl_80392290
lbl_80392278:
/* 80392278  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8039227C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80392280  90 1D 00 00 */	stw r0, 0(r29)
/* 80392284  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80392288  90 7D 00 04 */	stw r3, 4(r29)
/* 8039228C  90 1D 00 08 */	stw r0, 8(r29)
lbl_80392290:
/* 80392290  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80392294  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80392298  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8039229C  39 61 00 50 */	addi r11, r1, 0x50
/* 803922A0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 803922A4  4B D0 8C 79 */	bl func_8009AF1C
/* 803922A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803922AC  7C 08 03 A6 */	mtlr r0
/* 803922B0  38 21 00 70 */	addi r1, r1, 0x70
/* 803922B4  4E 80 00 20 */	blr 