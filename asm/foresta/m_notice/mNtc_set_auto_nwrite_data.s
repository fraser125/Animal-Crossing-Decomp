lbl_803CB094:
/* 803CB094  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803CB098  7C 08 02 A6 */	mflr r0
/* 803CB09C  90 01 00 84 */	stw r0, 0x84(r1)
/* 803CB0A0  39 61 00 80 */	addi r11, r1, 0x80
/* 803CB0A4  4B CC FE 2D */	bl func_8009AED0
/* 803CB0A8  4B FC FE 11 */	bl mEv_CheckTitleDemo
/* 803CB0AC  2C 03 00 00 */	cmpwi r3, 0
/* 803CB0B0  40 82 01 90 */	bne lbl_803CB240
/* 803CB0B4  4B FD 9C 19 */	bl mFI_GetFieldId
/* 803CB0B8  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803CB0BC  40 82 01 84 */	bne lbl_803CB240
/* 803CB0C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CB0C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CB0C8  3F E3 00 03 */	addis r31, r3, 3
/* 803CB0CC  A3 BF 88 7A */	lhz r29, -0x7786(r31)
/* 803CB0D0  28 1D 00 00 */	cmplwi r29, 0
/* 803CB0D4  41 82 01 6C */	beq lbl_803CB240
/* 803CB0D8  3F C3 00 02 */	addis r30, r3, 2
/* 803CB0DC  38 A0 00 05 */	li r5, 5
/* 803CB0E0  80 7E 61 20 */	lwz r3, 0x6120(r30)
/* 803CB0E4  38 80 00 00 */	li r4, 0
/* 803CB0E8  80 1E 61 24 */	lwz r0, 0x6124(r30)
/* 803CB0EC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 803CB0F0  90 81 00 20 */	stw r4, 0x20(r1)
/* 803CB0F4  90 61 00 30 */	stw r3, 0x30(r1)
/* 803CB0F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CB0FC  8B 9F 88 79 */	lbz r28, -0x7787(r31)
/* 803CB100  4B FF EF 1D */	bl mNtc_make_auto_nwrite_data_list
/* 803CB104  38 61 00 1E */	addi r3, r1, 0x1e
/* 803CB108  38 81 00 1C */	addi r4, r1, 0x1c
/* 803CB10C  4B FF FB 79 */	bl mNtc_set_fishing_term
/* 803CB110  38 61 00 50 */	addi r3, r1, 0x50
/* 803CB114  38 81 00 44 */	addi r4, r1, 0x44
/* 803CB118  38 A1 00 30 */	addi r5, r1, 0x30
/* 803CB11C  38 C1 00 1E */	addi r6, r1, 0x1e
/* 803CB120  4B FF F9 E5 */	bl mNtc_get_fishing_day
/* 803CB124  90 61 00 20 */	stw r3, 0x20(r1)
/* 803CB128  38 61 00 30 */	addi r3, r1, 0x30
/* 803CB12C  38 81 00 1A */	addi r4, r1, 0x1a
/* 803CB130  38 A1 00 18 */	addi r5, r1, 0x18
/* 803CB134  4B FF F6 21 */	bl mNtc_set_near_old_nwrite_data
/* 803CB138  A0 61 00 1E */	lhz r3, 0x1e(r1)
/* 803CB13C  39 61 00 50 */	addi r11, r1, 0x50
/* 803CB140  38 01 00 44 */	addi r0, r1, 0x44
/* 803CB144  7F A6 EB 78 */	mr r6, r29
/* 803CB148  90 61 00 08 */	stw r3, 8(r1)
/* 803CB14C  7F 87 E3 78 */	mr r7, r28
/* 803CB150  38 61 00 24 */	addi r3, r1, 0x24
/* 803CB154  38 81 00 1A */	addi r4, r1, 0x1a
/* 803CB158  A1 41 00 1C */	lhz r10, 0x1c(r1)
/* 803CB15C  38 A1 00 18 */	addi r5, r1, 0x18
/* 803CB160  39 01 00 38 */	addi r8, r1, 0x38
/* 803CB164  39 21 00 28 */	addi r9, r1, 0x28
/* 803CB168  91 41 00 0C */	stw r10, 0xc(r1)
/* 803CB16C  39 41 00 20 */	addi r10, r1, 0x20
/* 803CB170  91 61 00 10 */	stw r11, 0x10(r1)
/* 803CB174  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB178  4B FF FB ED */	bl mNtc_decide_nwrite_data
/* 803CB17C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 803CB180  2C 03 00 05 */	cmpwi r3, 5
/* 803CB184  41 82 00 20 */	beq lbl_803CB1A4
/* 803CB188  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 803CB18C  38 81 00 28 */	addi r4, r1, 0x28
/* 803CB190  38 A1 00 38 */	addi r5, r1, 0x38
/* 803CB194  38 E1 00 50 */	addi r7, r1, 0x50
/* 803CB198  39 01 00 44 */	addi r8, r1, 0x44
/* 803CB19C  4B FF FD 65 */	bl mNtc_set_auto_nwrite
/* 803CB1A0  48 00 00 20 */	b lbl_803CB1C0
lbl_803CB1A4:
/* 803CB1A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CB1A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CB1AC  3C 63 00 03 */	addis r3, r3, 3
/* 803CB1B0  88 03 88 7E */	lbz r0, -0x7782(r3)
/* 803CB1B4  28 00 00 00 */	cmplwi r0, 0
/* 803CB1B8  40 82 00 08 */	bne lbl_803CB1C0
/* 803CB1BC  4B FF F2 39 */	bl mNtc_check_treasure
lbl_803CB1C0:
/* 803CB1C0  38 61 00 30 */	addi r3, r1, 0x30
/* 803CB1C4  38 81 00 1A */	addi r4, r1, 0x1a
/* 803CB1C8  38 A1 00 18 */	addi r5, r1, 0x18
/* 803CB1CC  4B FF F5 89 */	bl mNtc_set_near_old_nwrite_data
/* 803CB1D0  A0 81 00 1A */	lhz r4, 0x1a(r1)
/* 803CB1D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CB1D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CB1DC  38 00 00 01 */	li r0, 1
/* 803CB1E0  B0 9F 88 7A */	sth r4, -0x7786(r31)
/* 803CB1E4  3C A3 00 03 */	addis r5, r3, 3
/* 803CB1E8  3C 83 00 02 */	addis r4, r3, 2
/* 803CB1EC  88 61 00 18 */	lbz r3, 0x18(r1)
/* 803CB1F0  98 7F 88 79 */	stb r3, -0x7787(r31)
/* 803CB1F4  98 05 DB 40 */	stb r0, -0x24c0(r5)
/* 803CB1F8  80 7E 61 20 */	lwz r3, 0x6120(r30)
/* 803CB1FC  80 1E 61 24 */	lwz r0, 0x6124(r30)
/* 803CB200  90 65 DB D8 */	stw r3, -0x2428(r5)
/* 803CB204  90 05 DB DC */	stw r0, -0x2424(r5)
/* 803CB208  80 7E 61 20 */	lwz r3, 0x6120(r30)
/* 803CB20C  80 1E 61 24 */	lwz r0, 0x6124(r30)
/* 803CB210  90 64 41 A0 */	stw r3, 0x41a0(r4)
/* 803CB214  90 04 41 A4 */	stw r0, 0x41a4(r4)
/* 803CB218  4B FE 12 79 */	bl mFR_fishmail
/* 803CB21C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CB220  38 00 00 01 */	li r0, 1
/* 803CB224  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CB228  38 81 00 30 */	addi r4, r1, 0x30
/* 803CB22C  3C A3 00 03 */	addis r5, r3, 3
/* 803CB230  3C 63 00 02 */	addis r3, r3, 2
/* 803CB234  98 05 88 7E */	stb r0, -0x7782(r5)
/* 803CB238  38 63 13 86 */	addi r3, r3, 0x1386
/* 803CB23C  48 03 BF F9 */	bl lbRTC_TimeCopy
lbl_803CB240:
/* 803CB240  39 61 00 80 */	addi r11, r1, 0x80
/* 803CB244  4B CC FC D9 */	bl func_8009AF1C
/* 803CB248  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803CB24C  7C 08 03 A6 */	mtlr r0
/* 803CB250  38 21 00 80 */	addi r1, r1, 0x80
/* 803CB254  4E 80 00 20 */	blr 
