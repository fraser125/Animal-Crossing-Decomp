lbl_805C726C:
/* 805C726C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C7270  7C 08 02 A6 */	mflr r0
/* 805C7274  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C7278  39 61 00 20 */	addi r11, r1, 0x20
/* 805C727C  4B AD 3C 51 */	bl func_8009AECC
/* 805C7280  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805C7284  7C 7F 1B 78 */	mr r31, r3
/* 805C7288  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805C728C  7C 9B 23 78 */	mr r27, r4
/* 805C7290  3F 83 00 02 */	addis r28, r3, 2
/* 805C7294  3B A0 00 00 */	li r29, 0
/* 805C7298  3B C0 00 00 */	li r30, 0
lbl_805C729C:
/* 805C729C  A0 7C 61 26 */	lhz r3, 0x6126(r28)
/* 805C72A0  38 1D FF FF */	addi r0, r29, -1
/* 805C72A4  7F 65 DB 78 */	mr r5, r27
/* 805C72A8  7C 9F F2 14 */	add r4, r31, r30
/* 805C72AC  7C 03 02 14 */	add r0, r3, r0
/* 805C72B0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805C72B4  4B FF FE FD */	bl mCD_make_calendar_data_year
/* 805C72B8  3B BD 00 01 */	addi r29, r29, 1
/* 805C72BC  3B DE 05 64 */	addi r30, r30, 0x564
/* 805C72C0  2C 1D 00 03 */	cmpwi r29, 3
/* 805C72C4  41 80 FF D8 */	blt lbl_805C729C
/* 805C72C8  88 9C 61 25 */	lbz r4, 0x6125(r28)
/* 805C72CC  7F E3 FB 78 */	mr r3, r31
/* 805C72D0  38 04 00 0B */	addi r0, r4, 0xb
/* 805C72D4  98 1F 10 56 */	stb r0, 0x1056(r31)
/* 805C72D8  88 1F 10 56 */	lbz r0, 0x1056(r31)
/* 805C72DC  98 1F 10 59 */	stb r0, 0x1059(r31)
/* 805C72E0  88 9C 61 23 */	lbz r4, 0x6123(r28)
/* 805C72E4  4B FF F9 71 */	bl mDC_get_calendar_day_position
/* 805C72E8  88 1F 10 56 */	lbz r0, 0x1056(r31)
/* 805C72EC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805C72F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C72F4  1C 00 00 73 */	mulli r0, r0, 0x73
/* 805C72F8  7C 60 1A 14 */	add r3, r0, r3
/* 805C72FC  7C 1F 18 AE */	lbzx r0, r31, r3
/* 805C7300  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805C7304  60 00 00 80 */	ori r0, r0, 0x80
/* 805C7308  7C 1F 19 AE */	stbx r0, r31, r3
/* 805C730C  4B AD 3C 0D */	bl func_8009AF18
/* 805C7310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C7314  7C 08 03 A6 */	mtlr r0
/* 805C7318  38 21 00 20 */	addi r1, r1, 0x20
/* 805C731C  4E 80 00 20 */	blr 
