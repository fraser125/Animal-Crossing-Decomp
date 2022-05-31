lbl_804BA080:
/* 804BA080  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804BA084  7C 08 02 A6 */	mflr r0
/* 804BA088  90 01 00 64 */	stw r0, 0x64(r1)
/* 804BA08C  39 61 00 60 */	addi r11, r1, 0x60
/* 804BA090  4B BE 0E 3D */	bl func_8009AECC
/* 804BA094  7C 9D 23 78 */	mr r29, r4
/* 804BA098  7C BF 2B 78 */	mr r31, r5
/* 804BA09C  7C DC 33 78 */	mr r28, r6
/* 804BA0A0  7C FE 3B 78 */	mr r30, r7
/* 804BA0A4  4B F1 F5 9D */	bl get_player_actor_withoutCheck
/* 804BA0A8  3C 80 80 64 */	lis r4, data_8064608C@ha /* 0x8064608C@ha */
/* 804BA0AC  7C 7B 1B 78 */	mr r27, r3
/* 804BA0B0  38 64 60 8C */	addi r3, r4, data_8064608C@l /* 0x8064608C@l */
/* 804BA0B4  7F E4 FB 78 */	mr r4, r31
/* 804BA0B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 804BA0BC  7F 85 E3 78 */	mr r5, r28
/* 804BA0C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 804BA0C4  3B E0 00 00 */	li r31, 0
/* 804BA0C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804BA0CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804BA0D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804BA0D4  4B EE B3 A9 */	bl mFI_UtNum2CenterWpos
/* 804BA0D8  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804BA0DC  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804BA0E0  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804BA0E4  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804BA0E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BA0EC  38 61 00 20 */	addi r3, r1, 0x20
/* 804BA0F0  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804BA0F4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BA0F8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804BA0FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804BA100  4B ED 58 99 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BA104  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804BA108  38 61 00 14 */	addi r3, r1, 0x14
/* 804BA10C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804BA110  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804BA114  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BA118  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804BA11C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804BA120  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BA124  4B EE D3 0D */	bl mFI_GetUnitFG
/* 804BA128  7C 7C 1B 79 */	or. r28, r3, r3
/* 804BA12C  41 82 01 18 */	beq lbl_804BA244
/* 804BA130  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804BA134  28 00 00 00 */	cmplwi r0, 0
/* 804BA138  41 82 00 1C */	beq lbl_804BA154
/* 804BA13C  28 00 00 11 */	cmplwi r0, 0x11
/* 804BA140  41 80 00 0C */	blt lbl_804BA14C
/* 804BA144  28 00 00 29 */	cmplwi r0, 0x29
/* 804BA148  40 81 00 0C */	ble lbl_804BA154
lbl_804BA14C:
/* 804BA14C  28 00 00 5D */	cmplwi r0, 0x5d
/* 804BA150  40 82 00 F4 */	bne lbl_804BA244
lbl_804BA154:
/* 804BA154  38 61 00 38 */	addi r3, r1, 0x38
/* 804BA158  38 9B 00 28 */	addi r4, r27, 0x28
/* 804BA15C  3B 60 00 00 */	li r27, 0
/* 804BA160  4B F0 0D 5D */	bl xyz_t_move
/* 804BA164  3C 60 80 64 */	lis r3, lit_1003@ha /* 0x806460C8@ha */
/* 804BA168  57 A0 A7 3F */	rlwinm. r0, r29, 0x14, 0x1c, 0x1f
/* 804BA16C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804BA170  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804BA174  C0 03 60 C8 */	lfs f0, lit_1003@l(r3)  /* 0x806460C8@l */
/* 804BA178  EC 01 00 2A */	fadds f0, f1, f0
/* 804BA17C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804BA180  40 82 00 30 */	bne lbl_804BA1B0
/* 804BA184  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804BA188  2C 00 00 08 */	cmpwi r0, 8
/* 804BA18C  40 82 00 10 */	bne lbl_804BA19C
/* 804BA190  63 60 00 03 */	ori r0, r27, 3
/* 804BA194  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804BA198  48 00 00 20 */	b lbl_804BA1B8
lbl_804BA19C:
/* 804BA19C  2C 00 00 00 */	cmpwi r0, 0
/* 804BA1A0  40 82 00 18 */	bne lbl_804BA1B8
/* 804BA1A4  63 60 00 01 */	ori r0, r27, 1
/* 804BA1A8  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804BA1AC  48 00 00 0C */	b lbl_804BA1B8
lbl_804BA1B0:
/* 804BA1B0  63 60 00 01 */	ori r0, r27, 1
/* 804BA1B4  54 1B 04 3E */	clrlwi r27, r0, 0x10
lbl_804BA1B8:
/* 804BA1B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BA1BC  7F A4 EB 78 */	mr r4, r29
/* 804BA1C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BA1C4  7F 67 DB 78 */	mr r7, r27
/* 804BA1C8  3C 63 00 02 */	addis r3, r3, 2
/* 804BA1CC  7F C8 F3 78 */	mr r8, r30
/* 804BA1D0  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804BA1D4  38 A1 00 38 */	addi r5, r1, 0x38
/* 804BA1D8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804BA1DC  80 63 00 00 */	lwz r3, 0(r3)
/* 804BA1E0  3C 63 00 01 */	addis r3, r3, 1
/* 804BA1E4  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804BA1E8  48 00 03 D9 */	bl bIT_actor_drop_entry
/* 804BA1EC  2C 03 00 00 */	cmpwi r3, 0
/* 804BA1F0  41 82 00 58 */	beq lbl_804BA248
/* 804BA1F4  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804BA1F8  28 00 00 11 */	cmplwi r0, 0x11
/* 804BA1FC  41 80 00 0C */	blt lbl_804BA208
/* 804BA200  28 00 00 29 */	cmplwi r0, 0x29
/* 804BA204  40 81 00 38 */	ble lbl_804BA23C
lbl_804BA208:
/* 804BA208  28 00 00 5D */	cmplwi r0, 0x5d
/* 804BA20C  41 82 00 30 */	beq lbl_804BA23C
/* 804BA210  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804BA214  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804BA218  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 804BA21C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804BA220  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BA224  38 81 00 08 */	addi r4, r1, 8
/* 804BA228  90 A1 00 08 */	stw r5, 8(r1)
/* 804BA22C  38 A0 00 00 */	li r5, 0
/* 804BA230  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804BA234  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BA238  4B EE D5 F9 */	bl mFI_SetFG_common
lbl_804BA23C:
/* 804BA23C  3B E0 00 01 */	li r31, 1
/* 804BA240  48 00 00 08 */	b lbl_804BA248
lbl_804BA244:
/* 804BA244  3B E0 FF FF */	li r31, -1
lbl_804BA248:
/* 804BA248  7F E3 FB 78 */	mr r3, r31
/* 804BA24C  39 61 00 60 */	addi r11, r1, 0x60
/* 804BA250  4B BE 0C C9 */	bl func_8009AF18
/* 804BA254  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804BA258  7C 08 03 A6 */	mtlr r0
/* 804BA25C  38 21 00 60 */	addi r1, r1, 0x60
/* 804BA260  4E 80 00 20 */	blr 
