lbl_80372250:
/* 80372250  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80372254  7C 08 02 A6 */	mflr r0
/* 80372258  90 01 00 94 */	stw r0, 0x94(r1)
/* 8037225C  39 61 00 90 */	addi r11, r1, 0x90
/* 80372260  4B D2 8C 65 */	bl func_8009AEC4
/* 80372264  7C DD 33 79 */	or. r29, r6, r6
/* 80372268  7C 7A 1B 78 */	mr r26, r3
/* 8037226C  7C 9B 23 78 */	mr r27, r4
/* 80372270  7C BC 2B 78 */	mr r28, r5
/* 80372274  7C FE 3B 78 */	mr r30, r7
/* 80372278  7D 1F 43 78 */	mr r31, r8
/* 8037227C  7D 39 4B 78 */	mr r25, r9
/* 80372280  41 82 02 58 */	beq lbl_803724D8
/* 80372284  28 1E 00 00 */	cmplwi r30, 0
/* 80372288  41 82 02 50 */	beq lbl_803724D8
/* 8037228C  28 1F 00 00 */	cmplwi r31, 0
/* 80372290  41 82 02 48 */	beq lbl_803724D8
/* 80372294  28 19 00 00 */	cmplwi r25, 0
/* 80372298  40 82 00 08 */	bne lbl_803722A0
/* 8037229C  48 00 02 3C */	b lbl_803724D8
lbl_803722A0:
/* 803722A0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 803722A4  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641184@ha */
/* 803722A8  FC 20 02 10 */	fabs f1, f0
/* 803722AC  C0 03 11 84 */	lfs f0, lit_536@l(r3)  /* 0x80641184@l */
/* 803722B0  FC 20 08 18 */	frsp f1, f1
/* 803722B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803722B8  40 80 00 0C */	bge lbl_803722C4
/* 803722BC  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 803722C0  48 00 00 08 */	b lbl_803722C8
lbl_803722C4:
/* 803722C4  80 1D 00 28 */	lwz r0, 0x28(r29)
lbl_803722C8:
/* 803722C8  28 1D 00 00 */	cmplwi r29, 0
/* 803722CC  90 01 00 08 */	stw r0, 8(r1)
/* 803722D0  41 82 00 10 */	beq lbl_803722E0
/* 803722D4  7F A4 EB 78 */	mr r4, r29
/* 803722D8  38 61 00 10 */	addi r3, r1, 0x10
/* 803722DC  4B FF F6 9D */	bl cKF_SkeletonInfo_R_combine_work_set
lbl_803722E0:
/* 803722E0  28 1E 00 00 */	cmplwi r30, 0
/* 803722E4  41 82 00 10 */	beq lbl_803722F4
/* 803722E8  7F C4 F3 78 */	mr r4, r30
/* 803722EC  38 61 00 30 */	addi r3, r1, 0x30
/* 803722F0  4B FF F6 89 */	bl cKF_SkeletonInfo_R_combine_work_set
lbl_803722F4:
/* 803722F4  28 1F 00 00 */	cmplwi r31, 0
/* 803722F8  41 82 00 10 */	beq lbl_80372308
/* 803722FC  7F E4 FB 78 */	mr r4, r31
/* 80372300  38 61 00 50 */	addi r3, r1, 0x50
/* 80372304  4B FF F6 75 */	bl cKF_SkeletonInfo_R_combine_work_set
lbl_80372308:
/* 80372308  38 00 00 20 */	li r0, 0x20
/* 8037230C  7F 26 CB 78 */	mr r6, r25
/* 80372310  90 01 00 0C */	stw r0, 0xc(r1)
/* 80372314  38 61 00 08 */	addi r3, r1, 8
/* 80372318  38 81 00 0C */	addi r4, r1, 0xc
/* 8037231C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80372320  4B FF F6 A1 */	bl cKF_SkeletonInfo_R_combine_translation
/* 80372324  7F 26 CB 78 */	mr r6, r25
/* 80372328  38 61 00 08 */	addi r3, r1, 8
/* 8037232C  38 81 00 0C */	addi r4, r1, 0xc
/* 80372330  38 A1 00 10 */	addi r5, r1, 0x10
/* 80372334  4B FF F9 29 */	bl cKF_SkeletonInfo_R_combine_rotation
/* 80372338  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8037233C  28 00 00 00 */	cmplwi r0, 0
/* 80372340  41 82 00 9C */	beq lbl_803723DC
/* 80372344  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80372348  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641184@ha */
/* 8037234C  FC 20 02 10 */	fabs f1, f0
/* 80372350  C0 03 11 84 */	lfs f0, lit_536@l(r3)  /* 0x80641184@l */
/* 80372354  FC 20 08 18 */	frsp f1, f1
/* 80372358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037235C  40 80 00 0C */	bge lbl_80372368
/* 80372360  81 1D 00 24 */	lwz r8, 0x24(r29)
/* 80372364  48 00 00 08 */	b lbl_8037236C
lbl_80372368:
/* 80372368  81 1D 00 28 */	lwz r8, 0x28(r29)
lbl_8037236C:
/* 8037236C  38 E0 00 00 */	li r7, 0
/* 80372370  38 60 00 00 */	li r3, 0
/* 80372374  39 08 00 06 */	addi r8, r8, 6
/* 80372378  48 00 00 54 */	b lbl_803723CC
lbl_8037237C:
/* 8037237C  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 80372380  38 83 00 02 */	addi r4, r3, 2
/* 80372384  A8 C8 00 00 */	lha r6, 0(r8)
/* 80372388  38 03 00 04 */	addi r0, r3, 4
/* 8037238C  7C A5 1A AE */	lhax r5, r5, r3
/* 80372390  38 E7 00 01 */	addi r7, r7, 1
/* 80372394  38 63 00 06 */	addi r3, r3, 6
/* 80372398  7C A6 2A 14 */	add r5, r6, r5
/* 8037239C  B0 A8 00 00 */	sth r5, 0(r8)
/* 803723A0  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 803723A4  A8 C8 00 02 */	lha r6, 2(r8)
/* 803723A8  7C 85 22 AE */	lhax r4, r5, r4
/* 803723AC  7C 86 22 14 */	add r4, r6, r4
/* 803723B0  B0 88 00 02 */	sth r4, 2(r8)
/* 803723B4  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 803723B8  A8 A8 00 04 */	lha r5, 4(r8)
/* 803723BC  7C 04 02 AE */	lhax r0, r4, r0
/* 803723C0  7C 05 02 14 */	add r0, r5, r0
/* 803723C4  B0 08 00 04 */	sth r0, 4(r8)
/* 803723C8  39 08 00 06 */	addi r8, r8, 6
lbl_803723CC:
/* 803723CC  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 803723D0  88 04 00 00 */	lbz r0, 0(r4)
/* 803723D4  7C 07 00 00 */	cmpw r7, r0
/* 803723D8  41 80 FF A4 */	blt lbl_8037237C
lbl_803723DC:
/* 803723DC  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 803723E0  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641184@ha */
/* 803723E4  C0 03 11 84 */	lfs f0, lit_536@l(r3)  /* 0x80641184@l */
/* 803723E8  FC 20 12 10 */	fabs f1, f2
/* 803723EC  FC 20 08 18 */	frsp f1, f1
/* 803723F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803723F4  40 80 00 2C */	bge lbl_80372420
/* 803723F8  7F A3 EB 78 */	mr r3, r29
/* 803723FC  4B FF E2 39 */	bl cKF_FrameControl_play
/* 80372400  90 7A 00 00 */	stw r3, 0(r26)
/* 80372404  7F C3 F3 78 */	mr r3, r30
/* 80372408  4B FF E2 2D */	bl cKF_FrameControl_play
/* 8037240C  90 7B 00 00 */	stw r3, 0(r27)
/* 80372410  7F E3 FB 78 */	mr r3, r31
/* 80372414  4B FF E2 21 */	bl cKF_FrameControl_play
/* 80372418  90 7C 00 00 */	stw r3, 0(r28)
/* 8037241C  48 00 00 BC */	b lbl_803724D8
lbl_80372420:
/* 80372420  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80641178@ha */
/* 80372424  C0 03 11 78 */	lfs f0, lit_449@l(r3)  /* 0x80641178@l */
/* 80372428  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037242C  40 81 00 50 */	ble lbl_8037247C
/* 80372430  7F A3 EB 78 */	mr r3, r29
/* 80372434  4B FF E9 1D */	bl cKF_SkeletonInfo_R_morphJoint
/* 80372438  3C 80 80 64 */	lis r4, lit_597@ha /* 0x806411A4@ha */
/* 8037243C  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80641178@ha */
/* 80372440  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 80372444  C0 24 11 A4 */	lfs f1, lit_597@l(r4)  /* 0x806411A4@l */
/* 80372448  C0 03 11 78 */	lfs f0, lit_449@l(r3)  /* 0x80641178@l */
/* 8037244C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80372450  D0 3D 00 20 */	stfs f1, 0x20(r29)
/* 80372454  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80372458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037245C  4C 40 13 82 */	cror 2, 0, 2
/* 80372460  40 82 00 08 */	bne lbl_80372468
/* 80372464  D0 1D 00 20 */	stfs f0, 0x20(r29)
lbl_80372468:
/* 80372468  38 00 00 00 */	li r0, 0
/* 8037246C  90 1A 00 00 */	stw r0, 0(r26)
/* 80372470  90 1B 00 00 */	stw r0, 0(r27)
/* 80372474  90 1C 00 00 */	stw r0, 0(r28)
/* 80372478  48 00 00 60 */	b lbl_803724D8
lbl_8037247C:
/* 8037247C  7F A3 EB 78 */	mr r3, r29
/* 80372480  4B FF E8 D1 */	bl cKF_SkeletonInfo_R_morphJoint
/* 80372484  3C 80 80 64 */	lis r4, lit_597@ha /* 0x806411A4@ha */
/* 80372488  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80641178@ha */
/* 8037248C  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 80372490  C0 24 11 A4 */	lfs f1, lit_597@l(r4)  /* 0x806411A4@l */
/* 80372494  C0 03 11 78 */	lfs f0, lit_449@l(r3)  /* 0x80641178@l */
/* 80372498  EC 22 08 2A */	fadds f1, f2, f1
/* 8037249C  D0 3D 00 20 */	stfs f1, 0x20(r29)
/* 803724A0  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 803724A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803724A8  4C 41 13 82 */	cror 2, 1, 2
/* 803724AC  40 82 00 08 */	bne lbl_803724B4
/* 803724B0  D0 1D 00 20 */	stfs f0, 0x20(r29)
lbl_803724B4:
/* 803724B4  7F A3 EB 78 */	mr r3, r29
/* 803724B8  4B FF E1 7D */	bl cKF_FrameControl_play
/* 803724BC  90 7A 00 00 */	stw r3, 0(r26)
/* 803724C0  7F C3 F3 78 */	mr r3, r30
/* 803724C4  4B FF E1 71 */	bl cKF_FrameControl_play
/* 803724C8  90 7B 00 00 */	stw r3, 0(r27)
/* 803724CC  7F E3 FB 78 */	mr r3, r31
/* 803724D0  4B FF E1 65 */	bl cKF_FrameControl_play
/* 803724D4  90 7C 00 00 */	stw r3, 0(r28)
lbl_803724D8:
/* 803724D8  39 61 00 90 */	addi r11, r1, 0x90
/* 803724DC  4B D2 8A 35 */	bl func_8009AF10
/* 803724E0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803724E4  7C 08 03 A6 */	mtlr r0
/* 803724E8  38 21 00 90 */	addi r1, r1, 0x90
/* 803724EC  4E 80 00 20 */	blr 
