lbl_8052CFF0:
/* 8052CFF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052CFF4  7C 08 02 A6 */	mflr r0
/* 8052CFF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052CFFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D000  4B B6 DE D1 */	bl func_8009AED0
/* 8052D004  7C 7F 1B 78 */	mr r31, r3
/* 8052D008  3C 60 80 6A */	lis r3, aNPC_part_tbl@ha /* 0x806A1CE8@ha */
/* 8052D00C  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 8052D010  3B DF 01 A8 */	addi r30, r31, 0x1a8
/* 8052D014  88 BF 07 51 */	lbz r5, 0x751(r31)
/* 8052D018  7C 9C 23 78 */	mr r28, r4
/* 8052D01C  FC 00 00 1E */	fctiwz f0, f0
/* 8052D020  88 1F 09 70 */	lbz r0, 0x970(r31)
/* 8052D024  30 85 FF FF */	addic r4, r5, -1
/* 8052D028  38 63 1C E8 */	addi r3, r3, aNPC_part_tbl@l /* 0x806A1CE8@l */
/* 8052D02C  7C 84 29 10 */	subfe r4, r4, r5
/* 8052D030  7F C6 F3 78 */	mr r6, r30
/* 8052D034  20 00 00 01 */	subfic r0, r0, 1
/* 8052D038  54 84 18 38 */	slwi r4, r4, 3
/* 8052D03C  7C 00 00 34 */	cntlzw r0, r0
/* 8052D040  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052D044  7C 83 22 14 */	add r4, r3, r4
/* 8052D048  38 7F 01 98 */	addi r3, r31, 0x198
/* 8052D04C  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 8052D050  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8052D054  7D 24 00 2E */	lwzx r9, r4, r0
/* 8052D058  38 9F 01 A0 */	addi r4, r31, 0x1a0
/* 8052D05C  38 BF 01 A4 */	addi r5, r31, 0x1a4
/* 8052D060  38 FF 03 64 */	addi r7, r31, 0x364
/* 8052D064  39 1F 05 20 */	addi r8, r31, 0x520
/* 8052D068  4B E4 51 E9 */	bl cKF_SkeletonInfo_R_T_combine_play
/* 8052D06C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8052D070  7F E3 FB 78 */	mr r3, r31
/* 8052D074  7F 84 E3 78 */	mr r4, r28
/* 8052D078  FC 00 00 1E */	fctiwz f0, f0
/* 8052D07C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8052D080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052D084  7C BD 00 50 */	subf r5, r29, r0
/* 8052D088  30 05 FF FF */	addic r0, r5, -1
/* 8052D08C  7C 00 29 10 */	subfe r0, r0, r5
/* 8052D090  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8052D094  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8052D098  FC 00 00 1E */	fctiwz f0, f0
/* 8052D09C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8052D0A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8052D0A4  90 1F 01 94 */	stw r0, 0x194(r31)
/* 8052D0A8  4B FF FE C1 */	bl aNPC_anime_se_proc
/* 8052D0AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D0B0  4B B6 DE 6D */	bl func_8009AF1C
/* 8052D0B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052D0B8  7C 08 03 A6 */	mtlr r0
/* 8052D0BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8052D0C0  4E 80 00 20 */	blr 
