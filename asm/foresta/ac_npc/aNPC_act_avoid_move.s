lbl_80531060:
/* 80531060  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80531064  7C 08 02 A6 */	mflr r0
/* 80531068  90 01 00 74 */	stw r0, 0x74(r1)
/* 8053106C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80531070  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80531074  39 61 00 60 */	addi r11, r1, 0x60
/* 80531078  4B B6 9E 49 */	bl func_8009AEC0
/* 8053107C  7C 7E 1B 78 */	mr r30, r3
/* 80531080  3B E0 00 01 */	li r31, 1
/* 80531084  83 43 09 2C */	lwz r26, 0x92c(r3)
/* 80531088  7F 43 D3 78 */	mr r3, r26
/* 8053108C  4B FF FD B5 */	bl aNPC_check_live_target
/* 80531090  2C 03 00 00 */	cmpwi r3, 0
/* 80531094  40 82 00 0C */	bne lbl_805310A0
/* 80531098  3B E0 00 00 */	li r31, 0
/* 8053109C  48 00 01 7C */	b lbl_80531218
lbl_805310A0:
/* 805310A0  C0 7A 00 30 */	lfs f3, 0x30(r26)
/* 805310A4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805310A8  C0 5A 00 28 */	lfs f2, 0x28(r26)
/* 805310AC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805310B0  EC 23 08 28 */	fsubs f1, f3, f1
/* 805310B4  EC 42 00 28 */	fsubs f2, f2, f0
/* 805310B8  4B ED AF 49 */	bl atans_table
/* 805310BC  3C 80 80 65 */	lis r4, lit_1583@ha /* 0x806492B4@ha */
/* 805310C0  3C A0 80 6A */	lis r5, offset_angl@ha /* 0x806A24B0@ha */
/* 805310C4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 805310C8  7C 7A 07 34 */	extsh r26, r3
/* 805310CC  C3 E4 92 B4 */	lfs f31, lit_1583@l(r4)  /* 0x806492B4@l */
/* 805310D0  3B 65 24 B0 */	addi r27, r5, offset_angl@l /* 0x806A24B0@l */
/* 805310D4  3B 00 00 00 */	li r24, 0
/* 805310D8  3B A0 00 00 */	li r29, 0
lbl_805310DC:
/* 805310DC  7C 1B EA AE */	lhax r0, r27, r29
/* 805310E0  7C 1A 02 14 */	add r0, r26, r0
/* 805310E4  7C 19 07 34 */	extsh r25, r0
/* 805310E8  7F 23 CB 78 */	mr r3, r25
/* 805310EC  4B E8 9A 05 */	bl sin_s
/* 805310F0  EC 3F 00 72 */	fmuls f1, f31, f1
/* 805310F4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805310F8  7F 23 CB 78 */	mr r3, r25
/* 805310FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80531100  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80531104  4B E8 99 99 */	bl cos_s
/* 80531108  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8053110C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80531110  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80531114  7F C3 F3 78 */	mr r3, r30
/* 80531118  93 81 00 18 */	stw r28, 0x18(r1)
/* 8053111C  38 81 00 20 */	addi r4, r1, 0x20
/* 80531120  EC 00 08 28 */	fsubs f0, f0, f1
/* 80531124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531128  38 A1 00 14 */	addi r5, r1, 0x14
/* 8053112C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80531130  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80531134  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80531138  88 DE 09 17 */	lbz r6, 0x917(r30)
/* 8053113C  4B FF E0 E9 */	bl aNPC_moveRangeCheck
/* 80531140  2C 03 00 01 */	cmpwi r3, 1
/* 80531144  40 82 00 4C */	bne lbl_80531190
/* 80531148  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8053114C  38 61 00 08 */	addi r3, r1, 8
/* 80531150  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80531154  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80531158  90 A1 00 08 */	stw r5, 8(r1)
/* 8053115C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80531160  90 01 00 10 */	stw r0, 0x10(r1)
/* 80531164  4B E7 62 CD */	bl mFI_GetUnitFG
/* 80531168  A0 03 00 00 */	lhz r0, 0(r3)
/* 8053116C  28 00 00 00 */	cmplwi r0, 0
/* 80531170  41 82 00 30 */	beq lbl_805311A0
/* 80531174  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80531178  2C 00 00 02 */	cmpwi r0, 2
/* 8053117C  41 82 00 24 */	beq lbl_805311A0
/* 80531180  2C 00 00 01 */	cmpwi r0, 1
/* 80531184  41 82 00 1C */	beq lbl_805311A0
/* 80531188  2C 00 00 03 */	cmpwi r0, 3
/* 8053118C  41 82 00 14 */	beq lbl_805311A0
lbl_80531190:
/* 80531190  3B 18 00 01 */	addi r24, r24, 1
/* 80531194  3B BD 00 02 */	addi r29, r29, 2
/* 80531198  2C 18 00 03 */	cmpwi r24, 3
/* 8053119C  41 80 FF 40 */	blt lbl_805310DC
lbl_805311A0:
/* 805311A0  2C 18 00 03 */	cmpwi r24, 3
/* 805311A4  41 80 00 14 */	blt lbl_805311B8
/* 805311A8  C0 3E 09 0C */	lfs f1, 0x90c(r30)
/* 805311AC  C0 1E 09 10 */	lfs f0, 0x910(r30)
/* 805311B0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805311B4  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_805311B8:
/* 805311B8  C0 3E 09 04 */	lfs f1, 0x904(r30)
/* 805311BC  C0 1E 09 0C */	lfs f0, 0x90c(r30)
/* 805311C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805311C4  40 82 00 28 */	bne lbl_805311EC
/* 805311C8  C0 3E 09 08 */	lfs f1, 0x908(r30)
/* 805311CC  C0 1E 09 10 */	lfs f0, 0x910(r30)
/* 805311D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805311D4  40 82 00 18 */	bne lbl_805311EC
/* 805311D8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 805311DC  7F C3 F3 78 */	mr r3, r30
/* 805311E0  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 805311E4  4B FF E6 75 */	bl aNPC_set_dst_pos
/* 805311E8  48 00 00 14 */	b lbl_805311FC
lbl_805311EC:
/* 805311EC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 805311F0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805311F4  D0 3E 09 04 */	stfs f1, 0x904(r30)
/* 805311F8  D0 1E 09 08 */	stfs f0, 0x908(r30)
lbl_805311FC:
/* 805311FC  7F C3 F3 78 */	mr r3, r30
/* 80531200  4B FF E5 E5 */	bl aNPC_set_mv_angl
/* 80531204  7F C3 F3 78 */	mr r3, r30
/* 80531208  4B FF F9 85 */	bl aNPC_check_arrive_destination
/* 8053120C  2C 03 00 01 */	cmpwi r3, 1
/* 80531210  40 82 00 08 */	bne lbl_80531218
/* 80531214  3B E0 00 00 */	li r31, 0
lbl_80531218:
/* 80531218  7F E3 FB 78 */	mr r3, r31
/* 8053121C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80531220  39 61 00 60 */	addi r11, r1, 0x60
/* 80531224  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80531228  4B B6 9C E5 */	bl func_8009AF0C
/* 8053122C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80531230  7C 08 03 A6 */	mtlr r0
/* 80531234  38 21 00 70 */	addi r1, r1, 0x70
/* 80531238  4E 80 00 20 */	blr 
