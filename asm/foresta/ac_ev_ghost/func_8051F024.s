lbl_8051F024:
/* 8051F024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051F028  7C 08 02 A6 */	mflr r0
/* 8051F02C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051F030  39 61 00 30 */	addi r11, r1, 0x30
/* 8051F034  4B B7 BE 99 */	bl func_8009AECC
/* 8051F038  7C 7D 1B 78 */	mr r29, r3
/* 8051F03C  7C 9B 23 78 */	mr r27, r4
/* 8051F040  38 60 00 72 */	li r3, 0x72
/* 8051F044  38 80 00 36 */	li r4, 0x36
/* 8051F048  4B E7 ED 85 */	bl mEv_get_save_area
/* 8051F04C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051F050  7C 7F 1B 78 */	mr r31, r3
/* 8051F054  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051F058  7F A3 EB 78 */	mr r3, r29
/* 8051F05C  3F C4 00 02 */	addis r30, r4, 2
/* 8051F060  7F 64 DB 78 */	mr r4, r27
/* 8051F064  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 8051F068  7F DC F3 78 */	mr r28, r30
/* 8051F06C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051F070  7D 89 03 A6 */	mtctr r12
/* 8051F074  3B DE 61 20 */	addi r30, r30, 0x6120
/* 8051F078  4E 80 04 21 */	bctrl 
/* 8051F07C  2C 03 00 01 */	cmpwi r3, 1
/* 8051F080  40 82 01 9C */	bne lbl_8051F21C
/* 8051F084  3C 60 80 52 */	lis r3, aEGH_schedule_proc@ha /* 0x80520C50@ha */
/* 8051F088  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A05C4@ha */
/* 8051F08C  38 03 0C 50 */	addi r0, r3, aEGH_schedule_proc@l /* 0x80520C50@l */
/* 8051F090  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8051F094  38 A4 05 C4 */	addi r5, r4, ct_data@l /* 0x806A05C4@l */
/* 8051F098  7F A3 EB 78 */	mr r3, r29
/* 8051F09C  7F 64 DB 78 */	mr r4, r27
/* 8051F0A0  80 DC 60 4C */	lwz r6, 0x604c(r28)
/* 8051F0A4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8051F0A8  7D 89 03 A6 */	mtctr r12
/* 8051F0AC  4E 80 04 21 */	bctrl 
/* 8051F0B0  38 60 FF FF */	li r3, -1
/* 8051F0B4  38 00 00 00 */	li r0, 0
/* 8051F0B8  90 7D 08 F4 */	stw r3, 0x8f4(r29)
/* 8051F0BC  28 1F 00 00 */	cmplwi r31, 0
/* 8051F0C0  98 1D 09 A7 */	stb r0, 0x9a7(r29)
/* 8051F0C4  98 1D 09 A8 */	stb r0, 0x9a8(r29)
/* 8051F0C8  B0 1D 09 78 */	sth r0, 0x978(r29)
/* 8051F0CC  40 82 00 60 */	bne lbl_8051F12C
/* 8051F0D0  38 60 00 72 */	li r3, 0x72
/* 8051F0D4  38 80 00 36 */	li r4, 0x36
/* 8051F0D8  4B E7 EB 4D */	bl mEv_reserve_save_area
/* 8051F0DC  38 60 00 72 */	li r3, 0x72
/* 8051F0E0  38 80 00 36 */	li r4, 0x36
/* 8051F0E4  4B E7 EC E9 */	bl mEv_get_save_area
/* 8051F0E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051F0EC  41 82 00 BC */	beq lbl_8051F1A8
/* 8051F0F0  38 00 00 00 */	li r0, 0
/* 8051F0F4  B0 1F 00 02 */	sth r0, 2(r31)
/* 8051F0F8  4B B3 DB FD */	bl fqrand
/* 8051F0FC  3C 60 80 65 */	lis r3, data_806490FC@ha /* 0x806490FC@ha */
/* 8051F100  7F C4 F3 78 */	mr r4, r30
/* 8051F104  38 A3 90 FC */	addi r5, r3, data_806490FC@l /* 0x806490FC@l */
/* 8051F108  38 7F 00 04 */	addi r3, r31, 4
/* 8051F10C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8051F110  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051F114  FC 00 00 1E */	fctiwz f0, f0
/* 8051F118  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051F11C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051F120  B0 1F 00 00 */	sth r0, 0(r31)
/* 8051F124  4B ED 43 3D */	bl mTM_set_renew_time
/* 8051F128  48 00 00 80 */	b lbl_8051F1A8
lbl_8051F12C:
/* 8051F12C  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8051F130  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8051F134  7C 03 00 40 */	cmplw r3, r0
/* 8051F138  40 82 00 24 */	bne lbl_8051F15C
/* 8051F13C  88 7E 00 05 */	lbz r3, 5(r30)
/* 8051F140  88 1F 00 06 */	lbz r0, 6(r31)
/* 8051F144  7C 03 00 40 */	cmplw r3, r0
/* 8051F148  40 82 00 14 */	bne lbl_8051F15C
/* 8051F14C  88 7E 00 03 */	lbz r3, 3(r30)
/* 8051F150  88 1F 00 07 */	lbz r0, 7(r31)
/* 8051F154  7C 03 00 40 */	cmplw r3, r0
/* 8051F158  41 82 00 3C */	beq lbl_8051F194
lbl_8051F15C:
/* 8051F15C  38 00 00 00 */	li r0, 0
/* 8051F160  B0 1F 00 02 */	sth r0, 2(r31)
/* 8051F164  4B B3 DB 91 */	bl fqrand
/* 8051F168  3C 60 80 65 */	lis r3, data_806490FC@ha /* 0x806490FC@ha */
/* 8051F16C  7F C4 F3 78 */	mr r4, r30
/* 8051F170  38 A3 90 FC */	addi r5, r3, data_806490FC@l /* 0x806490FC@l */
/* 8051F174  38 7F 00 04 */	addi r3, r31, 4
/* 8051F178  C0 05 00 00 */	lfs f0, 0(r5)
/* 8051F17C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051F180  FC 00 00 1E */	fctiwz f0, f0
/* 8051F184  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051F188  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051F18C  B0 1F 00 00 */	sth r0, 0(r31)
/* 8051F190  4B ED 42 D1 */	bl mTM_set_renew_time
lbl_8051F194:
/* 8051F194  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8051F198  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 8051F19C  41 82 00 0C */	beq lbl_8051F1A8
/* 8051F1A0  7F A3 EB 78 */	mr r3, r29
/* 8051F1A4  4B E5 52 9D */	bl Actor_delete
lbl_8051F1A8:
/* 8051F1A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051F1AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051F1B0  3C 63 00 02 */	addis r3, r3, 2
/* 8051F1B4  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8051F1B8  28 00 00 04 */	cmplwi r0, 4
/* 8051F1BC  40 82 00 0C */	bne lbl_8051F1C8
/* 8051F1C0  7F A3 EB 78 */	mr r3, r29
/* 8051F1C4  4B E5 52 7D */	bl Actor_delete
lbl_8051F1C8:
/* 8051F1C8  38 80 00 00 */	li r4, 0
/* 8051F1CC  38 00 00 7E */	li r0, 0x7e
/* 8051F1D0  98 9D 09 AA */	stb r4, 0x9aa(r29)
/* 8051F1D4  38 60 00 01 */	li r3, 1
/* 8051F1D8  B0 1D 09 74 */	sth r0, 0x974(r29)
/* 8051F1DC  98 9D 09 AC */	stb r4, 0x9ac(r29)
/* 8051F1E0  48 00 11 B9 */	bl aEGH_bitcheck_func
/* 8051F1E4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8051F1E8  41 82 00 10 */	beq lbl_8051F1F8
/* 8051F1EC  38 00 00 8C */	li r0, 0x8c
/* 8051F1F0  98 1D 09 A9 */	stb r0, 0x9a9(r29)
/* 8051F1F4  48 00 00 28 */	b lbl_8051F21C
lbl_8051F1F8:
/* 8051F1F8  38 60 00 08 */	li r3, 8
/* 8051F1FC  38 80 00 0A */	li r4, 0xa
/* 8051F200  4B E8 8F 61 */	bl mFI_GetItemNumField_BCT
/* 8051F204  2C 03 00 08 */	cmpwi r3, 8
/* 8051F208  40 80 00 0C */	bge lbl_8051F214
/* 8051F20C  7F A3 EB 78 */	mr r3, r29
/* 8051F210  4B E5 52 31 */	bl Actor_delete
lbl_8051F214:
/* 8051F214  38 00 00 00 */	li r0, 0
/* 8051F218  98 1D 09 A9 */	stb r0, 0x9a9(r29)
lbl_8051F21C:
/* 8051F21C  39 61 00 30 */	addi r11, r1, 0x30
/* 8051F220  4B B7 BC F9 */	bl func_8009AF18
/* 8051F224  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051F228  7C 08 03 A6 */	mtlr r0
/* 8051F22C  38 21 00 30 */	addi r1, r1, 0x30
/* 8051F230  4E 80 00 20 */	blr 
