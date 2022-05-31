lbl_803911D4:
/* 803911D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803911D8  7C 08 02 A6 */	mflr r0
/* 803911DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803911E0  39 61 00 40 */	addi r11, r1, 0x40
/* 803911E4  4B D0 9C F1 */	bl func_8009AED4
/* 803911E8  7C 7D 1B 78 */	mr r29, r3
/* 803911EC  3C 60 80 65 */	lis r3, data_80650860@ha /* 0x80650860@ha */
/* 803911F0  7F A0 07 34 */	extsh r0, r29
/* 803911F4  7C 9E 23 78 */	mr r30, r4
/* 803911F8  2C 00 FF FF */	cmpwi r0, -1
/* 803911FC  3B E3 08 60 */	addi r31, r3, data_80650860@l /* 0x80650860@l */
/* 80391200  41 82 01 44 */	beq lbl_80391344
/* 80391204  80 DE 00 00 */	lwz r6, 0(r30)
/* 80391208  38 61 00 20 */	addi r3, r1, 0x20
/* 8039120C  80 BE 00 04 */	lwz r5, 4(r30)
/* 80391210  38 81 00 08 */	addi r4, r1, 8
/* 80391214  80 1E 00 08 */	lwz r0, 8(r30)
/* 80391218  90 C1 00 08 */	stw r6, 8(r1)
/* 8039121C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80391220  90 01 00 10 */	stw r0, 0x10(r1)
/* 80391224  48 01 43 19 */	bl mFI_Wpos2UtCenterWpos
/* 80391228  2C 03 00 00 */	cmpwi r3, 0
/* 8039122C  41 82 01 18 */	beq lbl_80391344
/* 80391230  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80391234  7F A0 07 35 */	extsh. r0, r29
/* 80391238  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8039123C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80391240  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80391244  EC 81 00 28 */	fsubs f4, f1, f0
/* 80391248  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8039124C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80391250  EC 43 10 28 */	fsubs f2, f3, f2
/* 80391254  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80391258  EC 01 00 28 */	fsubs f0, f1, f0
/* 8039125C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80391260  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80391264  40 82 00 18 */	bne lbl_8039127C
/* 80391268  38 61 00 14 */	addi r3, r1, 0x14
/* 8039126C  38 9F 06 B4 */	addi r4, r31, 0x6b4
/* 80391270  38 BF 06 C0 */	addi r5, r31, 0x6c0
/* 80391274  4B FF FD 59 */	bl mCoBG_CheckBallRollingAreaRate
/* 80391278  48 00 00 D4 */	b lbl_8039134C
lbl_8039127C:
/* 8039127C  7F A0 07 34 */	extsh r0, r29
/* 80391280  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80391284  40 82 00 18 */	bne lbl_8039129C
/* 80391288  38 61 00 14 */	addi r3, r1, 0x14
/* 8039128C  38 9F 06 CC */	addi r4, r31, 0x6cc
/* 80391290  38 BF 06 D8 */	addi r5, r31, 0x6d8
/* 80391294  4B FF FD 39 */	bl mCoBG_CheckBallRollingAreaRate
/* 80391298  48 00 00 B4 */	b lbl_8039134C
lbl_8039129C:
/* 8039129C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803912A0  40 82 00 18 */	bne lbl_803912B8
/* 803912A4  38 61 00 14 */	addi r3, r1, 0x14
/* 803912A8  38 9F 06 E4 */	addi r4, r31, 0x6e4
/* 803912AC  38 BF 06 F0 */	addi r5, r31, 0x6f0
/* 803912B0  4B FF FD 1D */	bl mCoBG_CheckBallRollingAreaRate
/* 803912B4  48 00 00 98 */	b lbl_8039134C
lbl_803912B8:
/* 803912B8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803912BC  40 82 00 18 */	bne lbl_803912D4
/* 803912C0  38 61 00 14 */	addi r3, r1, 0x14
/* 803912C4  38 9F 06 FC */	addi r4, r31, 0x6fc
/* 803912C8  38 BF 07 08 */	addi r5, r31, 0x708
/* 803912CC  4B FF FD 01 */	bl mCoBG_CheckBallRollingAreaRate
/* 803912D0  48 00 00 7C */	b lbl_8039134C
lbl_803912D4:
/* 803912D4  2C 00 80 00 */	cmpwi r0, -32768
/* 803912D8  40 82 00 18 */	bne lbl_803912F0
/* 803912DC  38 61 00 14 */	addi r3, r1, 0x14
/* 803912E0  38 9F 07 14 */	addi r4, r31, 0x714
/* 803912E4  38 BF 07 20 */	addi r5, r31, 0x720
/* 803912E8  4B FF FC E5 */	bl mCoBG_CheckBallRollingAreaRate
/* 803912EC  48 00 00 60 */	b lbl_8039134C
lbl_803912F0:
/* 803912F0  2C 00 A0 00 */	cmpwi r0, -24576
/* 803912F4  40 82 00 18 */	bne lbl_8039130C
/* 803912F8  38 61 00 14 */	addi r3, r1, 0x14
/* 803912FC  38 9F 07 2C */	addi r4, r31, 0x72c
/* 80391300  38 BF 07 38 */	addi r5, r31, 0x738
/* 80391304  4B FF FC C9 */	bl mCoBG_CheckBallRollingAreaRate
/* 80391308  48 00 00 44 */	b lbl_8039134C
lbl_8039130C:
/* 8039130C  2C 00 C0 00 */	cmpwi r0, -16384
/* 80391310  40 82 00 18 */	bne lbl_80391328
/* 80391314  38 61 00 14 */	addi r3, r1, 0x14
/* 80391318  38 9F 07 44 */	addi r4, r31, 0x744
/* 8039131C  38 BF 07 50 */	addi r5, r31, 0x750
/* 80391320  4B FF FC AD */	bl mCoBG_CheckBallRollingAreaRate
/* 80391324  48 00 00 28 */	b lbl_8039134C
lbl_80391328:
/* 80391328  2C 00 E0 00 */	cmpwi r0, -8192
/* 8039132C  40 82 00 18 */	bne lbl_80391344
/* 80391330  38 61 00 14 */	addi r3, r1, 0x14
/* 80391334  38 9F 07 5C */	addi r4, r31, 0x75c
/* 80391338  38 BF 07 68 */	addi r5, r31, 0x768
/* 8039133C  4B FF FC 91 */	bl mCoBG_CheckBallRollingAreaRate
/* 80391340  48 00 00 0C */	b lbl_8039134C
lbl_80391344:
/* 80391344  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 80391348  C0 23 19 B0 */	lfs f1, lit_522@l(r3)  /* 0x806419B0@l */
lbl_8039134C:
/* 8039134C  39 61 00 40 */	addi r11, r1, 0x40
/* 80391350  4B D0 9B D1 */	bl func_8009AF20
/* 80391354  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80391358  7C 08 03 A6 */	mtlr r0
/* 8039135C  38 21 00 40 */	addi r1, r1, 0x40
/* 80391360  4E 80 00 20 */	blr 
