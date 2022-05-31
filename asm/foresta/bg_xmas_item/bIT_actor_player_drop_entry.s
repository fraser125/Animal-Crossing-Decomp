lbl_804C8F90:
/* 804C8F90  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C8F94  7C 08 02 A6 */	mflr r0
/* 804C8F98  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C8F9C  39 61 00 60 */	addi r11, r1, 0x60
/* 804C8FA0  4B BD 1F 2D */	bl func_8009AECC
/* 804C8FA4  7C 9D 23 78 */	mr r29, r4
/* 804C8FA8  7C BF 2B 78 */	mr r31, r5
/* 804C8FAC  7C DC 33 78 */	mr r28, r6
/* 804C8FB0  7C FE 3B 78 */	mr r30, r7
/* 804C8FB4  4B F1 06 8D */	bl get_player_actor_withoutCheck
/* 804C8FB8  3C 80 80 64 */	lis r4, data_806461DC@ha /* 0x806461DC@ha */
/* 804C8FBC  7C 7B 1B 78 */	mr r27, r3
/* 804C8FC0  38 64 61 DC */	addi r3, r4, data_806461DC@l /* 0x806461DC@l */
/* 804C8FC4  7F E4 FB 78 */	mr r4, r31
/* 804C8FC8  C0 03 00 00 */	lfs f0, 0(r3)
/* 804C8FCC  7F 85 E3 78 */	mr r5, r28
/* 804C8FD0  38 61 00 2C */	addi r3, r1, 0x2c
/* 804C8FD4  3B E0 00 00 */	li r31, 0
/* 804C8FD8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C8FDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804C8FE0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C8FE4  4B ED C4 99 */	bl mFI_UtNum2CenterWpos
/* 804C8FE8  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804C8FEC  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C8FF0  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804C8FF4  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804C8FF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C8FFC  38 61 00 20 */	addi r3, r1, 0x20
/* 804C9000  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804C9004  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C9008  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804C900C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C9010  4B EC 69 89 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C9014  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804C9018  38 61 00 14 */	addi r3, r1, 0x14
/* 804C901C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804C9020  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804C9024  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C9028  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804C902C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C9030  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C9034  4B ED E3 FD */	bl mFI_GetUnitFG
/* 804C9038  7C 7C 1B 79 */	or. r28, r3, r3
/* 804C903C  41 82 01 18 */	beq lbl_804C9154
/* 804C9040  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804C9044  28 00 00 00 */	cmplwi r0, 0
/* 804C9048  41 82 00 1C */	beq lbl_804C9064
/* 804C904C  28 00 00 11 */	cmplwi r0, 0x11
/* 804C9050  41 80 00 0C */	blt lbl_804C905C
/* 804C9054  28 00 00 29 */	cmplwi r0, 0x29
/* 804C9058  40 81 00 0C */	ble lbl_804C9064
lbl_804C905C:
/* 804C905C  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C9060  40 82 00 F4 */	bne lbl_804C9154
lbl_804C9064:
/* 804C9064  38 61 00 38 */	addi r3, r1, 0x38
/* 804C9068  38 9B 00 28 */	addi r4, r27, 0x28
/* 804C906C  3B 60 00 00 */	li r27, 0
/* 804C9070  4B EF 1E 4D */	bl xyz_t_move
/* 804C9074  3C 60 80 64 */	lis r3, lit_1003@ha /* 0x80646218@ha */
/* 804C9078  57 A0 A7 3F */	rlwinm. r0, r29, 0x14, 0x1c, 0x1f
/* 804C907C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804C9080  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804C9084  C0 03 62 18 */	lfs f0, lit_1003@l(r3)  /* 0x80646218@l */
/* 804C9088  EC 01 00 2A */	fadds f0, f1, f0
/* 804C908C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804C9090  40 82 00 30 */	bne lbl_804C90C0
/* 804C9094  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804C9098  2C 00 00 08 */	cmpwi r0, 8
/* 804C909C  40 82 00 10 */	bne lbl_804C90AC
/* 804C90A0  63 60 00 03 */	ori r0, r27, 3
/* 804C90A4  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804C90A8  48 00 00 20 */	b lbl_804C90C8
lbl_804C90AC:
/* 804C90AC  2C 00 00 00 */	cmpwi r0, 0
/* 804C90B0  40 82 00 18 */	bne lbl_804C90C8
/* 804C90B4  63 60 00 01 */	ori r0, r27, 1
/* 804C90B8  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804C90BC  48 00 00 0C */	b lbl_804C90C8
lbl_804C90C0:
/* 804C90C0  63 60 00 01 */	ori r0, r27, 1
/* 804C90C4  54 1B 04 3E */	clrlwi r27, r0, 0x10
lbl_804C90C8:
/* 804C90C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C90CC  7F A4 EB 78 */	mr r4, r29
/* 804C90D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C90D4  7F 67 DB 78 */	mr r7, r27
/* 804C90D8  3C 63 00 02 */	addis r3, r3, 2
/* 804C90DC  7F C8 F3 78 */	mr r8, r30
/* 804C90E0  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C90E4  38 A1 00 38 */	addi r5, r1, 0x38
/* 804C90E8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804C90EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804C90F0  3C 63 00 01 */	addis r3, r3, 1
/* 804C90F4  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C90F8  48 00 03 D9 */	bl bIT_actor_drop_entry
/* 804C90FC  2C 03 00 00 */	cmpwi r3, 0
/* 804C9100  41 82 00 58 */	beq lbl_804C9158
/* 804C9104  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804C9108  28 00 00 11 */	cmplwi r0, 0x11
/* 804C910C  41 80 00 0C */	blt lbl_804C9118
/* 804C9110  28 00 00 29 */	cmplwi r0, 0x29
/* 804C9114  40 81 00 38 */	ble lbl_804C914C
lbl_804C9118:
/* 804C9118  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C911C  41 82 00 30 */	beq lbl_804C914C
/* 804C9120  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804C9124  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C9128  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 804C912C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C9130  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C9134  38 81 00 08 */	addi r4, r1, 8
/* 804C9138  90 A1 00 08 */	stw r5, 8(r1)
/* 804C913C  38 A0 00 00 */	li r5, 0
/* 804C9140  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804C9144  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C9148  4B ED E6 E9 */	bl mFI_SetFG_common
lbl_804C914C:
/* 804C914C  3B E0 00 01 */	li r31, 1
/* 804C9150  48 00 00 08 */	b lbl_804C9158
lbl_804C9154:
/* 804C9154  3B E0 FF FF */	li r31, -1
lbl_804C9158:
/* 804C9158  7F E3 FB 78 */	mr r3, r31
/* 804C915C  39 61 00 60 */	addi r11, r1, 0x60
/* 804C9160  4B BD 1D B9 */	bl func_8009AF18
/* 804C9164  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C9168  7C 08 03 A6 */	mtlr r0
/* 804C916C  38 21 00 60 */	addi r1, r1, 0x60
/* 804C9170  4E 80 00 20 */	blr 
