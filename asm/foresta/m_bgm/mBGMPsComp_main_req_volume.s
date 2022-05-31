lbl_8037B140:
/* 8037B140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037B144  7C 08 02 A6 */	mflr r0
/* 8037B148  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037B14C  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B150  4B D1 FD 85 */	bl func_8009AED4
/* 8037B154  7C 7D 1B 78 */	mr r29, r3
/* 8037B158  80 03 01 18 */	lwz r0, 0x118(r3)
/* 8037B15C  2C 00 00 00 */	cmpwi r0, 0
/* 8037B160  40 81 00 14 */	ble lbl_8037B174
/* 8037B164  88 7D 00 00 */	lbz r3, 0(r29)
/* 8037B168  4B FF D7 E1 */	bl mBGM_check_ignore_talk_volume
/* 8037B16C  7C 7E 1B 78 */	mr r30, r3
/* 8037B170  48 00 00 08 */	b lbl_8037B178
lbl_8037B174:
/* 8037B174  3B C0 00 00 */	li r30, 0
lbl_8037B178:
/* 8037B178  80 1D 01 18 */	lwz r0, 0x118(r29)
/* 8037B17C  2C 00 00 00 */	cmpwi r0, 0
/* 8037B180  40 81 00 14 */	ble lbl_8037B194
/* 8037B184  88 7D 00 00 */	lbz r3, 0(r29)
/* 8037B188  4B FF D7 F9 */	bl mBGM_check_ignore_collect_insects_volume
/* 8037B18C  7C 7F 1B 78 */	mr r31, r3
/* 8037B190  48 00 00 08 */	b lbl_8037B198
lbl_8037B194:
/* 8037B194  3B E0 00 00 */	li r31, 0
lbl_8037B198:
/* 8037B198  7F A3 EB 78 */	mr r3, r29
/* 8037B19C  4B FF FB 81 */	bl mBGMPsComp_main_req_volume_ps
/* 8037B1A0  7F A3 EB 78 */	mr r3, r29
/* 8037B1A4  4B FF FC 29 */	bl mBGMPsComp_main_req_volume_fishing
/* 8037B1A8  7F A3 EB 78 */	mr r3, r29
/* 8037B1AC  4B FF FC C5 */	bl mBGMPsComp_main_req_volume_collect_insects
/* 8037B1B0  7F A3 EB 78 */	mr r3, r29
/* 8037B1B4  4B FF FD 61 */	bl mBGMPsComp_main_req_volume_talk
/* 8037B1B8  7F A3 EB 78 */	mr r3, r29
/* 8037B1BC  4B FF FD ED */	bl mBGMPsComp_main_req_volume_boat
/* 8037B1C0  7F A3 EB 78 */	mr r3, r29
/* 8037B1C4  4B FF FE 79 */	bl mBGMPsComp_main_req_volume_pause
/* 8037B1C8  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B1CC  C0 7D 01 44 */	lfs f3, 0x144(r29)
/* 8037B1D0  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B1D4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8037B1D8  40 80 00 20 */	bge lbl_8037B1F8
/* 8037B1DC  3C 60 80 64 */	lis r3, lit_1325@ha /* 0x80641338@ha */
/* 8037B1E0  C0 C3 13 38 */	lfs f6, lit_1325@l(r3)  /* 0x80641338@l */
/* 8037B1E4  FC A0 30 90 */	fmr f5, f6
/* 8037B1E8  FC 80 30 90 */	fmr f4, f6
/* 8037B1EC  FC E0 30 90 */	fmr f7, f6
/* 8037B1F0  FC 20 30 90 */	fmr f1, f6
/* 8037B1F4  48 00 01 24 */	b lbl_8037B318
lbl_8037B1F8:
/* 8037B1F8  C0 3D 01 4C */	lfs f1, 0x14c(r29)
/* 8037B1FC  38 00 00 00 */	li r0, 0
/* 8037B200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037B204  41 80 00 14 */	blt lbl_8037B218
/* 8037B208  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8037B20C  41 81 00 0C */	bgt lbl_8037B218
/* 8037B210  2C 1F 00 00 */	cmpwi r31, 0
/* 8037B214  41 82 00 08 */	beq lbl_8037B21C
lbl_8037B218:
/* 8037B218  38 00 00 01 */	li r0, 1
lbl_8037B21C:
/* 8037B21C  2C 00 00 00 */	cmpwi r0, 0
/* 8037B220  41 82 00 08 */	beq lbl_8037B228
/* 8037B224  FC 20 18 90 */	fmr f1, f3
lbl_8037B228:
/* 8037B228  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B22C  C0 5D 01 54 */	lfs f2, 0x154(r29)
/* 8037B230  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B234  FC C0 08 90 */	fmr f6, f1
/* 8037B238  38 00 00 00 */	li r0, 0
/* 8037B23C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B240  41 80 00 14 */	blt lbl_8037B254
/* 8037B244  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8037B248  41 81 00 0C */	bgt lbl_8037B254
/* 8037B24C  2C 1F 00 00 */	cmpwi r31, 0
/* 8037B250  41 82 00 08 */	beq lbl_8037B258
lbl_8037B254:
/* 8037B254  38 00 00 01 */	li r0, 1
lbl_8037B258:
/* 8037B258  2C 00 00 00 */	cmpwi r0, 0
/* 8037B25C  41 82 00 08 */	beq lbl_8037B264
/* 8037B260  48 00 00 08 */	b lbl_8037B268
lbl_8037B264:
/* 8037B264  FC 20 10 90 */	fmr f1, f2
lbl_8037B268:
/* 8037B268  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B26C  C0 5D 01 5C */	lfs f2, 0x15c(r29)
/* 8037B270  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B274  FC A0 08 90 */	fmr f5, f1
/* 8037B278  38 00 00 00 */	li r0, 0
/* 8037B27C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B280  41 80 00 14 */	blt lbl_8037B294
/* 8037B284  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8037B288  41 81 00 0C */	bgt lbl_8037B294
/* 8037B28C  2C 1E 00 00 */	cmpwi r30, 0
/* 8037B290  41 82 00 08 */	beq lbl_8037B298
lbl_8037B294:
/* 8037B294  38 00 00 01 */	li r0, 1
lbl_8037B298:
/* 8037B298  2C 00 00 00 */	cmpwi r0, 0
/* 8037B29C  41 82 00 08 */	beq lbl_8037B2A4
/* 8037B2A0  48 00 00 08 */	b lbl_8037B2A8
lbl_8037B2A4:
/* 8037B2A4  FC 20 10 90 */	fmr f1, f2
lbl_8037B2A8:
/* 8037B2A8  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B2AC  C0 5D 01 64 */	lfs f2, 0x164(r29)
/* 8037B2B0  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B2B4  FC 80 08 90 */	fmr f4, f1
/* 8037B2B8  38 00 00 00 */	li r0, 0
/* 8037B2BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B2C0  41 80 00 0C */	blt lbl_8037B2CC
/* 8037B2C4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8037B2C8  40 81 00 08 */	ble lbl_8037B2D0
lbl_8037B2CC:
/* 8037B2CC  38 00 00 01 */	li r0, 1
lbl_8037B2D0:
/* 8037B2D0  2C 00 00 00 */	cmpwi r0, 0
/* 8037B2D4  41 82 00 08 */	beq lbl_8037B2DC
/* 8037B2D8  48 00 00 08 */	b lbl_8037B2E0
lbl_8037B2DC:
/* 8037B2DC  FC 20 10 90 */	fmr f1, f2
lbl_8037B2E0:
/* 8037B2E0  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B2E4  C0 5D 01 6C */	lfs f2, 0x16c(r29)
/* 8037B2E8  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B2EC  FC E0 08 90 */	fmr f7, f1
/* 8037B2F0  38 00 00 00 */	li r0, 0
/* 8037B2F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B2F8  41 80 00 0C */	blt lbl_8037B304
/* 8037B2FC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8037B300  40 81 00 08 */	ble lbl_8037B308
lbl_8037B304:
/* 8037B304  38 00 00 01 */	li r0, 1
lbl_8037B308:
/* 8037B308  2C 00 00 00 */	cmpwi r0, 0
/* 8037B30C  41 82 00 08 */	beq lbl_8037B314
/* 8037B310  48 00 00 08 */	b lbl_8037B318
lbl_8037B314:
/* 8037B314  FC 20 10 90 */	fmr f1, f2
lbl_8037B318:
/* 8037B318  88 7D 01 4A */	lbz r3, 0x14a(r29)
/* 8037B31C  3C 80 80 64 */	lis r4, lit_1325@ha /* 0x80641338@ha */
/* 8037B320  C0 44 13 38 */	lfs f2, lit_1325@l(r4)  /* 0x80641338@l */
/* 8037B324  38 00 00 00 */	li r0, 0
/* 8037B328  28 03 00 00 */	cmplwi r3, 0
/* 8037B32C  41 82 00 0C */	beq lbl_8037B338
/* 8037B330  FC 40 18 90 */	fmr f2, f3
/* 8037B334  A0 1D 01 48 */	lhz r0, 0x148(r29)
lbl_8037B338:
/* 8037B338  88 7D 01 52 */	lbz r3, 0x152(r29)
/* 8037B33C  28 03 00 00 */	cmplwi r3, 0
/* 8037B340  41 82 00 14 */	beq lbl_8037B354
/* 8037B344  2C 1F 00 00 */	cmpwi r31, 0
/* 8037B348  40 82 00 0C */	bne lbl_8037B354
/* 8037B34C  FC 40 30 90 */	fmr f2, f6
/* 8037B350  A0 1D 01 50 */	lhz r0, 0x150(r29)
lbl_8037B354:
/* 8037B354  88 7D 01 5A */	lbz r3, 0x15a(r29)
/* 8037B358  28 03 00 00 */	cmplwi r3, 0
/* 8037B35C  41 82 00 14 */	beq lbl_8037B370
/* 8037B360  2C 1F 00 00 */	cmpwi r31, 0
/* 8037B364  40 82 00 0C */	bne lbl_8037B370
/* 8037B368  FC 40 28 90 */	fmr f2, f5
/* 8037B36C  A0 1D 01 58 */	lhz r0, 0x158(r29)
lbl_8037B370:
/* 8037B370  88 7D 01 60 */	lbz r3, 0x160(r29)
/* 8037B374  28 03 00 00 */	cmplwi r3, 0
/* 8037B378  41 82 00 14 */	beq lbl_8037B38C
/* 8037B37C  2C 1E 00 00 */	cmpwi r30, 0
/* 8037B380  40 82 00 0C */	bne lbl_8037B38C
/* 8037B384  FC 40 20 90 */	fmr f2, f4
/* 8037B388  38 00 00 1E */	li r0, 0x1e
lbl_8037B38C:
/* 8037B38C  88 7D 01 68 */	lbz r3, 0x168(r29)
/* 8037B390  28 03 00 00 */	cmplwi r3, 0
/* 8037B394  41 82 00 0C */	beq lbl_8037B3A0
/* 8037B398  FC 40 38 90 */	fmr f2, f7
/* 8037B39C  38 00 00 1E */	li r0, 0x1e
lbl_8037B3A0:
/* 8037B3A0  88 7D 01 72 */	lbz r3, 0x172(r29)
/* 8037B3A4  28 03 00 00 */	cmplwi r3, 0
/* 8037B3A8  41 82 00 0C */	beq lbl_8037B3B4
/* 8037B3AC  FC 40 08 90 */	fmr f2, f1
/* 8037B3B0  A0 1D 01 70 */	lhz r0, 0x170(r29)
lbl_8037B3B4:
/* 8037B3B4  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 8037B3B8  2C 03 00 04 */	cmpwi r3, 4
/* 8037B3BC  40 82 00 24 */	bne lbl_8037B3E0
/* 8037B3C0  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B3C4  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B3C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B3CC  7C 60 00 26 */	mfcr r3
/* 8037B3D0  54 63 0F FF */	rlwinm. r3, r3, 1, 0x1f, 0x1f
/* 8037B3D4  40 82 00 B8 */	bne lbl_8037B48C
/* 8037B3D8  FC 40 08 90 */	fmr f2, f1
/* 8037B3DC  48 00 00 B0 */	b lbl_8037B48C
lbl_8037B3E0:
/* 8037B3E0  80 7D 01 28 */	lwz r3, 0x128(r29)
/* 8037B3E4  2C 03 00 02 */	cmpwi r3, 2
/* 8037B3E8  40 82 00 24 */	bne lbl_8037B40C
/* 8037B3EC  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B3F0  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B3F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B3F8  7C 60 00 26 */	mfcr r3
/* 8037B3FC  54 63 0F FF */	rlwinm. r3, r3, 1, 0x1f, 0x1f
/* 8037B400  40 82 00 8C */	bne lbl_8037B48C
/* 8037B404  FC 40 38 90 */	fmr f2, f7
/* 8037B408  48 00 00 84 */	b lbl_8037B48C
lbl_8037B40C:
/* 8037B40C  80 7D 01 24 */	lwz r3, 0x124(r29)
/* 8037B410  2C 03 00 02 */	cmpwi r3, 2
/* 8037B414  40 82 00 24 */	bne lbl_8037B438
/* 8037B418  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B41C  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B420  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B424  7C 60 00 26 */	mfcr r3
/* 8037B428  54 63 0F FF */	rlwinm. r3, r3, 1, 0x1f, 0x1f
/* 8037B42C  40 82 00 60 */	bne lbl_8037B48C
/* 8037B430  FC 40 20 90 */	fmr f2, f4
/* 8037B434  48 00 00 58 */	b lbl_8037B48C
lbl_8037B438:
/* 8037B438  80 7D 01 20 */	lwz r3, 0x120(r29)
/* 8037B43C  2C 03 00 02 */	cmpwi r3, 2
/* 8037B440  40 82 00 24 */	bne lbl_8037B464
/* 8037B444  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B448  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B44C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B450  7C 60 00 26 */	mfcr r3
/* 8037B454  54 63 0F FF */	rlwinm. r3, r3, 1, 0x1f, 0x1f
/* 8037B458  40 82 00 34 */	bne lbl_8037B48C
/* 8037B45C  FC 40 28 90 */	fmr f2, f5
/* 8037B460  48 00 00 2C */	b lbl_8037B48C
lbl_8037B464:
/* 8037B464  80 7D 01 1C */	lwz r3, 0x11c(r29)
/* 8037B468  2C 03 00 02 */	cmpwi r3, 2
/* 8037B46C  40 82 00 20 */	bne lbl_8037B48C
/* 8037B470  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B474  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B478  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B47C  7C 60 00 26 */	mfcr r3
/* 8037B480  54 63 0F FF */	rlwinm. r3, r3, 1, 0x1f, 0x1f
/* 8037B484  40 82 00 08 */	bne lbl_8037B48C
/* 8037B488  FC 40 30 90 */	fmr f2, f6
lbl_8037B48C:
/* 8037B48C  3C 60 80 64 */	lis r3, lit_1400@ha /* 0x80641348@ha */
/* 8037B490  C0 03 13 48 */	lfs f0, lit_1400@l(r3)  /* 0x80641348@l */
/* 8037B494  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037B498  7C 60 00 26 */	mfcr r3
/* 8037B49C  54 63 0F FF */	rlwinm. r3, r3, 1, 0x1f, 0x1f
/* 8037B4A0  40 82 00 14 */	bne lbl_8037B4B4
/* 8037B4A4  D0 5D 01 3C */	stfs f2, 0x13c(r29)
/* 8037B4A8  38 60 00 01 */	li r3, 1
/* 8037B4AC  B0 1D 01 40 */	sth r0, 0x140(r29)
/* 8037B4B0  98 7D 01 42 */	stb r3, 0x142(r29)
lbl_8037B4B4:
/* 8037B4B4  38 00 00 00 */	li r0, 0
/* 8037B4B8  98 1D 01 4A */	stb r0, 0x14a(r29)
/* 8037B4BC  98 1D 01 52 */	stb r0, 0x152(r29)
/* 8037B4C0  98 1D 01 5A */	stb r0, 0x15a(r29)
/* 8037B4C4  98 1D 01 60 */	stb r0, 0x160(r29)
/* 8037B4C8  98 1D 01 68 */	stb r0, 0x168(r29)
/* 8037B4CC  98 1D 01 72 */	stb r0, 0x172(r29)
/* 8037B4D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B4D4  4B D1 FA 4D */	bl func_8009AF20
/* 8037B4D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037B4DC  7C 08 03 A6 */	mtlr r0
/* 8037B4E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8037B4E4  4E 80 00 20 */	blr 
