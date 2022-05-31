lbl_8039F0F0:
/* 8039F0F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039F0F4  7C 08 02 A6 */	mflr r0
/* 8039F0F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039F0FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F100  4B CF BD D1 */	bl func_8009AED0
/* 8039F104  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F108  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F10C  3F C3 00 02 */	addis r30, r3, 2
/* 8039F110  A0 1E 41 60 */	lhz r0, 0x4160(r30)
/* 8039F114  3B A3 00 20 */	addi r29, r3, 0x20
/* 8039F118  28 00 00 00 */	cmplwi r0, 0
/* 8039F11C  41 82 00 D8 */	beq lbl_8039F1F4
/* 8039F120  88 1E 0F 1B */	lbz r0, 0xf1b(r30)
/* 8039F124  28 00 00 01 */	cmplwi r0, 1
/* 8039F128  40 82 00 0C */	bne lbl_8039F134
/* 8039F12C  4B FF FE A9 */	bl mGH_animal_return_init
/* 8039F130  48 00 00 C4 */	b lbl_8039F1F4
lbl_8039F134:
/* 8039F134  38 61 00 08 */	addi r3, r1, 8
/* 8039F138  38 9E 41 64 */	addi r4, r30, 0x4164
/* 8039F13C  48 06 80 F9 */	bl lbRTC_TimeCopy
/* 8039F140  38 61 00 08 */	addi r3, r1, 8
/* 8039F144  38 80 00 14 */	li r4, 0x14
/* 8039F148  48 06 7B DD */	bl lbRTC_Add_DD
/* 8039F14C  38 61 00 08 */	addi r3, r1, 8
/* 8039F150  38 80 00 14 */	li r4, 0x14
/* 8039F154  48 06 7B D1 */	bl lbRTC_Add_DD
/* 8039F158  38 61 00 08 */	addi r3, r1, 8
/* 8039F15C  38 80 00 14 */	li r4, 0x14
/* 8039F160  48 06 7B C5 */	bl lbRTC_Add_DD
/* 8039F164  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 8039F168  88 81 00 0D */	lbz r4, 0xd(r1)
/* 8039F16C  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 8039F170  A0 DE 61 26 */	lhz r6, 0x6126(r30)
/* 8039F174  88 FE 61 25 */	lbz r7, 0x6125(r30)
/* 8039F178  89 1E 61 23 */	lbz r8, 0x6123(r30)
/* 8039F17C  48 06 76 71 */	bl lbRTC_IsEqualDate
/* 8039F180  2C 03 00 01 */	cmpwi r3, 1
/* 8039F184  41 82 00 0C */	beq lbl_8039F190
/* 8039F188  4B FF FE 4D */	bl mGH_animal_return_init
/* 8039F18C  48 00 00 68 */	b lbl_8039F1F4
lbl_8039F190:
/* 8039F190  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F194  A0 9E 41 60 */	lhz r4, 0x4160(r30)
/* 8039F198  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F19C  38 A0 00 0F */	li r5, 0xf
/* 8039F1A0  3C 63 00 01 */	addis r3, r3, 1
/* 8039F1A4  38 63 74 38 */	addi r3, r3, 0x7438
/* 8039F1A8  48 02 D5 35 */	bl mNpc_SearchAnimalinfo
/* 8039F1AC  2C 03 FF FF */	cmpwi r3, -1
/* 8039F1B0  41 82 00 08 */	beq lbl_8039F1B8
/* 8039F1B4  4B FF FE 21 */	bl mGH_animal_return_init
lbl_8039F1B8:
/* 8039F1B8  3B 80 00 00 */	li r28, 0
/* 8039F1BC  3B E0 00 01 */	li r31, 1
lbl_8039F1C0:
/* 8039F1C0  7F A3 EB 78 */	mr r3, r29
/* 8039F1C4  48 04 0E 81 */	bl mPr_NullCheckPersonalID
/* 8039F1C8  2C 03 00 00 */	cmpwi r3, 0
/* 8039F1CC  40 82 00 14 */	bne lbl_8039F1E0
/* 8039F1D0  88 7E 41 62 */	lbz r3, 0x4162(r30)
/* 8039F1D4  7F E0 E0 30 */	slw r0, r31, r28
/* 8039F1D8  7C 60 00 39 */	and. r0, r3, r0
/* 8039F1DC  41 82 00 18 */	beq lbl_8039F1F4
lbl_8039F1E0:
/* 8039F1E0  3B 9C 00 01 */	addi r28, r28, 1
/* 8039F1E4  3B BD 24 40 */	addi r29, r29, 0x2440
/* 8039F1E8  2C 1C 00 04 */	cmpwi r28, 4
/* 8039F1EC  41 80 FF D4 */	blt lbl_8039F1C0
/* 8039F1F0  4B FF FD E5 */	bl mGH_animal_return_init
lbl_8039F1F4:
/* 8039F1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F1F8  4B CF BD 25 */	bl func_8009AF1C
/* 8039F1FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039F200  7C 08 03 A6 */	mtlr r0
/* 8039F204  38 21 00 20 */	addi r1, r1, 0x20
/* 8039F208  4E 80 00 20 */	blr 
