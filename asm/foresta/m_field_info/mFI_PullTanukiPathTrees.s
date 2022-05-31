lbl_803AB450:
/* 803AB450  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AB454  3C 60 80 65 */	lis r3, ut_table@ha /* 0x80654074@ha */
/* 803AB458  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803AB45C  38 00 00 06 */	li r0, 6
/* 803AB460  3C A4 00 01 */	addis r5, r4, 1
/* 803AB464  38 63 40 74 */	addi r3, r3, ut_table@l /* 0x80654074@l */
/* 803AB468  7C 09 03 A6 */	mtctr r0
/* 803AB46C  38 A5 4F A8 */	addi r5, r5, 0x4fa8
lbl_803AB470:
/* 803AB470  88 03 00 00 */	lbz r0, 0(r3)
/* 803AB474  54 00 08 3C */	slwi r0, r0, 1
/* 803AB478  7C 85 02 2E */	lhzx r4, r5, r0
/* 803AB47C  28 04 08 01 */	cmplwi r4, 0x801
/* 803AB480  41 82 01 1C */	beq lbl_803AB59C
/* 803AB484  38 C4 F7 FE */	addi r6, r4, -2050
/* 803AB488  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB48C  28 06 00 02 */	cmplwi r6, 2
/* 803AB490  40 81 01 0C */	ble lbl_803AB59C
/* 803AB494  38 C4 F7 D2 */	addi r6, r4, -2094
/* 803AB498  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB49C  28 06 00 03 */	cmplwi r6, 3
/* 803AB4A0  40 81 00 FC */	ble lbl_803AB59C
/* 803AB4A4  38 C4 F7 CD */	addi r6, r4, -2099
/* 803AB4A8  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB4AC  28 06 00 03 */	cmplwi r6, 3
/* 803AB4B0  40 81 00 EC */	ble lbl_803AB59C
/* 803AB4B4  38 C4 F7 C8 */	addi r6, r4, -2104
/* 803AB4B8  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB4BC  28 06 00 03 */	cmplwi r6, 3
/* 803AB4C0  40 81 00 DC */	ble lbl_803AB59C
/* 803AB4C4  38 C4 F7 B0 */	addi r6, r4, -2128
/* 803AB4C8  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB4CC  28 06 00 03 */	cmplwi r6, 3
/* 803AB4D0  40 81 00 CC */	ble lbl_803AB59C
/* 803AB4D4  38 C4 F7 A2 */	addi r6, r4, -2142
/* 803AB4D8  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB4DC  28 06 00 03 */	cmplwi r6, 3
/* 803AB4E0  40 81 00 BC */	ble lbl_803AB59C
/* 803AB4E4  38 C4 F7 9C */	addi r6, r4, -2148
/* 803AB4E8  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB4EC  28 06 00 04 */	cmplwi r6, 4
/* 803AB4F0  40 81 00 AC */	ble lbl_803AB59C
/* 803AB4F4  38 C4 F7 FA */	addi r6, r4, -2054
/* 803AB4F8  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB4FC  28 06 00 06 */	cmplwi r6, 6
/* 803AB500  40 81 00 9C */	ble lbl_803AB59C
/* 803AB504  38 C4 F7 F2 */	addi r6, r4, -2062
/* 803AB508  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB50C  28 06 00 06 */	cmplwi r6, 6
/* 803AB510  40 81 00 8C */	ble lbl_803AB59C
/* 803AB514  38 C4 F7 EA */	addi r6, r4, -2070
/* 803AB518  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB51C  28 06 00 06 */	cmplwi r6, 6
/* 803AB520  40 81 00 7C */	ble lbl_803AB59C
/* 803AB524  38 C4 F7 E2 */	addi r6, r4, -2078
/* 803AB528  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB52C  28 06 00 06 */	cmplwi r6, 6
/* 803AB530  40 81 00 6C */	ble lbl_803AB59C
/* 803AB534  38 C4 F7 DA */	addi r6, r4, -2086
/* 803AB538  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB53C  28 06 00 06 */	cmplwi r6, 6
/* 803AB540  40 81 00 5C */	ble lbl_803AB59C
/* 803AB544  38 C4 F7 AB */	addi r6, r4, -2133
/* 803AB548  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB54C  28 06 00 06 */	cmplwi r6, 6
/* 803AB550  40 81 00 4C */	ble lbl_803AB59C
/* 803AB554  38 C4 FF A2 */	addi r6, r4, -94
/* 803AB558  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB55C  28 06 00 03 */	cmplwi r6, 3
/* 803AB560  40 81 00 3C */	ble lbl_803AB59C
/* 803AB564  28 04 00 69 */	cmplwi r4, 0x69
/* 803AB568  41 82 00 34 */	beq lbl_803AB59C
/* 803AB56C  38 C4 FF 88 */	addi r6, r4, -120
/* 803AB570  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB574  28 06 00 02 */	cmplwi r6, 2
/* 803AB578  40 81 00 24 */	ble lbl_803AB59C
/* 803AB57C  28 04 00 82 */	cmplwi r4, 0x82
/* 803AB580  41 82 00 1C */	beq lbl_803AB59C
/* 803AB584  38 C4 FF 81 */	addi r6, r4, -127
/* 803AB588  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803AB58C  28 06 00 01 */	cmplwi r6, 1
/* 803AB590  40 81 00 0C */	ble lbl_803AB59C
/* 803AB594  28 04 00 81 */	cmplwi r4, 0x81
/* 803AB598  40 82 00 0C */	bne lbl_803AB5A4
lbl_803AB59C:
/* 803AB59C  38 80 00 00 */	li r4, 0
/* 803AB5A0  7C 85 03 2E */	sthx r4, r5, r0
lbl_803AB5A4:
/* 803AB5A4  38 63 00 01 */	addi r3, r3, 1
/* 803AB5A8  42 00 FE C8 */	bdnz lbl_803AB470
/* 803AB5AC  4E 80 00 20 */	blr 
