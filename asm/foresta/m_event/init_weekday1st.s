lbl_8039B054:
/* 8039B054  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B058  7C 08 02 A6 */	mflr r0
/* 8039B05C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039B060  39 61 00 20 */	addi r11, r1, 0x20
/* 8039B064  4B CF FE 65 */	bl func_8009AEC8
/* 8039B068  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039B06C  3C 80 81 16 */	lis r4, weekday1st_year@ha /* 0x81167698@ha */
/* 8039B070  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8039B074  38 60 00 07 */	li r3, 7
/* 8039B078  3C C5 00 02 */	addis r6, r5, 2
/* 8039B07C  38 A4 76 98 */	addi r5, r4, weekday1st_year@l /* 0x81167698@l */
/* 8039B080  88 06 61 23 */	lbz r0, 0x6123(r6)
/* 8039B084  88 86 61 24 */	lbz r4, 0x6124(r6)
/* 8039B088  20 00 00 01 */	subfic r0, r0, 1
/* 8039B08C  88 E6 61 25 */	lbz r7, 0x6125(r6)
/* 8039B090  7C 84 02 14 */	add r4, r4, r0
/* 8039B094  A0 C6 61 26 */	lhz r6, 0x6126(r6)
/* 8039B098  7C 04 1B D6 */	divw r0, r4, r3
/* 8039B09C  54 E7 07 3E */	clrlwi r7, r7, 0x1c
/* 8039B0A0  B0 C5 00 00 */	sth r6, 0(r5)
/* 8039B0A4  7C FF 3B 78 */	mr r31, r7
/* 8039B0A8  7C 00 19 D6 */	mullw r0, r0, r3
/* 8039B0AC  7C 80 20 51 */	subf. r4, r0, r4
/* 8039B0B0  40 80 00 08 */	bge lbl_8039B0B8
/* 8039B0B4  38 84 00 07 */	addi r4, r4, 7
lbl_8039B0B8:
/* 8039B0B8  3C 60 81 16 */	lis r3, weekday1st@ha /* 0x8116769C@ha */
/* 8039B0BC  57 FC 06 3E */	clrlwi r28, r31, 0x18
/* 8039B0C0  3B A3 76 9C */	addi r29, r3, weekday1st@l /* 0x8116769C@l */
/* 8039B0C4  7F FA FB 78 */	mr r26, r31
/* 8039B0C8  38 1C 00 01 */	addi r0, r28, 1
/* 8039B0CC  7C 9D E1 AE */	stbx r4, r29, r28
/* 8039B0D0  3B C0 00 07 */	li r30, 7
/* 8039B0D4  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 8039B0D8  48 00 00 40 */	b lbl_8039B118
lbl_8039B0DC:
/* 8039B0DC  7F 43 D3 78 */	mr r3, r26
/* 8039B0E0  4B FF FE F9 */	bl last_day_of_month
/* 8039B0E4  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 8039B0E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8039B0EC  7C 7D 20 AE */	lbzx r3, r29, r4
/* 8039B0F0  7C 63 02 14 */	add r3, r3, r0
/* 8039B0F4  7C 03 F3 D6 */	divw r0, r3, r30
/* 8039B0F8  7C 00 F1 D6 */	mullw r0, r0, r30
/* 8039B0FC  7C 60 18 51 */	subf. r3, r0, r3
/* 8039B100  40 80 00 08 */	bge lbl_8039B108
/* 8039B104  38 63 00 07 */	addi r3, r3, 7
lbl_8039B108:
/* 8039B108  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8039B10C  3B 5A 00 01 */	addi r26, r26, 1
/* 8039B110  7C 7D 01 AE */	stbx r3, r29, r0
/* 8039B114  3B 7B 00 01 */	addi r27, r27, 1
lbl_8039B118:
/* 8039B118  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8039B11C  28 00 00 0C */	cmplwi r0, 0xc
/* 8039B120  40 81 FF BC */	ble lbl_8039B0DC
/* 8039B124  38 1C FF FF */	addi r0, r28, -1
/* 8039B128  3C 60 81 16 */	lis r3, weekday1st@ha /* 0x8116769C@ha */
/* 8039B12C  7F FC FB 78 */	mr r28, r31
/* 8039B130  3B E0 00 07 */	li r31, 7
/* 8039B134  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8039B138  3B C3 76 9C */	addi r30, r3, weekday1st@l /* 0x8116769C@l */
/* 8039B13C  48 00 00 40 */	b lbl_8039B17C
lbl_8039B140:
/* 8039B140  7F A3 EB 78 */	mr r3, r29
/* 8039B144  4B FF FE 95 */	bl last_day_of_month
/* 8039B148  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8039B14C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8039B150  7C 1E 00 AE */	lbzx r0, r30, r0
/* 8039B154  7C 63 00 50 */	subf r3, r3, r0
/* 8039B158  7C 03 FB D6 */	divw r0, r3, r31
/* 8039B15C  7C 00 F9 D6 */	mullw r0, r0, r31
/* 8039B160  7C 60 18 51 */	subf. r3, r0, r3
/* 8039B164  40 80 00 08 */	bge lbl_8039B16C
/* 8039B168  38 63 00 07 */	addi r3, r3, 7
lbl_8039B16C:
/* 8039B16C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8039B170  3B 9C FF FF */	addi r28, r28, -1
/* 8039B174  7C 7E 01 AE */	stbx r3, r30, r0
/* 8039B178  3B BD FF FF */	addi r29, r29, -1
lbl_8039B17C:
/* 8039B17C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8039B180  28 00 00 01 */	cmplwi r0, 1
/* 8039B184  40 80 FF BC */	bge lbl_8039B140
/* 8039B188  39 61 00 20 */	addi r11, r1, 0x20
/* 8039B18C  4B CF FD 89 */	bl func_8009AF14
/* 8039B190  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039B194  7C 08 03 A6 */	mtlr r0
/* 8039B198  38 21 00 20 */	addi r1, r1, 0x20
/* 8039B19C  4E 80 00 20 */	blr 
