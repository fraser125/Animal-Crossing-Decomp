lbl_8048B158:
/* 8048B158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048B15C  7C 08 02 A6 */	mflr r0
/* 8048B160  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048B164  39 61 00 20 */	addi r11, r1, 0x20
/* 8048B168  4B C0 FD 65 */	bl func_8009AECC
/* 8048B16C  7C 7B 1B 78 */	mr r27, r3
/* 8048B170  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048B174  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 8048B178  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048B17C  3C 63 00 02 */	addis r3, r3, 2
/* 8048B180  83 DB 00 14 */	lwz r30, 0x14(r27)
/* 8048B184  2C 00 00 05 */	cmpwi r0, 5
/* 8048B188  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 8048B18C  3B A0 00 00 */	li r29, 0
/* 8048B190  40 82 00 DC */	bne lbl_8048B26C
/* 8048B194  83 9F 00 8C */	lwz r28, 0x8c(r31)
/* 8048B198  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8048B19C  80 9B 00 24 */	lwz r4, 0x24(r27)
/* 8048B1A0  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 8048B1A4  7F 9C 22 14 */	add r28, r28, r4
/* 8048B1A8  7C 1C 00 40 */	cmplw r28, r0
/* 8048B1AC  40 81 00 B4 */	ble lbl_8048B260
/* 8048B1B0  7F E3 FB 78 */	mr r3, r31
/* 8048B1B4  38 80 00 00 */	li r4, 0
/* 8048B1B8  4B F5 57 D9 */	bl mPr_GetPossessionItemSum
/* 8048B1BC  1C 63 75 30 */	mulli r3, r3, 0x7530
/* 8048B1C0  3C 63 00 02 */	addis r3, r3, 2
/* 8048B1C4  38 03 86 9F */	addi r0, r3, -31073
/* 8048B1C8  7C 1C 00 40 */	cmplw r28, r0
/* 8048B1CC  41 81 01 0C */	bgt lbl_8048B2D8
/* 8048B1D0  2C 1E FF FF */	cmpwi r30, -1
/* 8048B1D4  41 82 00 70 */	beq lbl_8048B244
/* 8048B1D8  57 C0 08 3C */	slwi r0, r30, 1
/* 8048B1DC  7C 7F 02 14 */	add r3, r31, r0
/* 8048B1E0  A0 03 00 68 */	lhz r0, 0x68(r3)
/* 8048B1E4  28 00 00 00 */	cmplwi r0, 0
/* 8048B1E8  40 82 00 5C */	bne lbl_8048B244
/* 8048B1EC  7F E3 FB 78 */	mr r3, r31
/* 8048B1F0  7F C4 F3 78 */	mr r4, r30
/* 8048B1F4  38 A0 21 02 */	li r5, 0x2102
/* 8048B1F8  38 C0 00 00 */	li r6, 0
/* 8048B1FC  4B F5 5C 2D */	bl mPr_SetPossessionItem
/* 8048B200  3B 9C 8A D0 */	addi r28, r28, -30000
/* 8048B204  48 00 00 40 */	b lbl_8048B244
lbl_8048B208:
/* 8048B208  7F E3 FB 78 */	mr r3, r31
/* 8048B20C  38 80 00 00 */	li r4, 0
/* 8048B210  4B F5 55 19 */	bl mPr_GetPossessionItemIdx
/* 8048B214  7C 64 1B 78 */	mr r4, r3
/* 8048B218  2C 04 FF FF */	cmpwi r4, -1
/* 8048B21C  41 82 00 1C */	beq lbl_8048B238
/* 8048B220  7F E3 FB 78 */	mr r3, r31
/* 8048B224  38 A0 21 02 */	li r5, 0x2102
/* 8048B228  38 C0 00 00 */	li r6, 0
/* 8048B22C  4B F5 5B FD */	bl mPr_SetPossessionItem
/* 8048B230  3B 9C 8A D0 */	addi r28, r28, -30000
/* 8048B234  48 00 00 18 */	b lbl_8048B24C
lbl_8048B238:
/* 8048B238  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8048B23C  3B 83 86 9F */	addi r28, r3, 0x869F /* 0x0001869F@l */
/* 8048B240  48 00 00 14 */	b lbl_8048B254
lbl_8048B244:
/* 8048B244  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8048B248  3B C3 86 9F */	addi r30, r3, 0x869F /* 0x0001869F@l */
lbl_8048B24C:
/* 8048B24C  7C 1C F0 40 */	cmplw r28, r30
/* 8048B250  41 81 FF B8 */	bgt lbl_8048B208
lbl_8048B254:
/* 8048B254  93 9F 00 8C */	stw r28, 0x8c(r31)
/* 8048B258  3B A0 00 01 */	li r29, 1
/* 8048B25C  48 00 00 7C */	b lbl_8048B2D8
lbl_8048B260:
/* 8048B260  93 9F 00 8C */	stw r28, 0x8c(r31)
/* 8048B264  3B A0 00 01 */	li r29, 1
/* 8048B268  48 00 00 70 */	b lbl_8048B2D8
lbl_8048B26C:
/* 8048B26C  2C 00 FF FF */	cmpwi r0, -1
/* 8048B270  41 82 00 68 */	beq lbl_8048B2D8
/* 8048B274  2C 1E FF FF */	cmpwi r30, -1
/* 8048B278  41 82 00 34 */	beq lbl_8048B2AC
/* 8048B27C  57 C0 08 3C */	slwi r0, r30, 1
/* 8048B280  7C 7F 02 14 */	add r3, r31, r0
/* 8048B284  A0 03 00 68 */	lhz r0, 0x68(r3)
/* 8048B288  28 00 00 00 */	cmplwi r0, 0
/* 8048B28C  40 82 00 20 */	bne lbl_8048B2AC
/* 8048B290  A0 BB 00 20 */	lhz r5, 0x20(r27)
/* 8048B294  7F E3 FB 78 */	mr r3, r31
/* 8048B298  7F C4 F3 78 */	mr r4, r30
/* 8048B29C  38 C0 00 00 */	li r6, 0
/* 8048B2A0  4B F5 5B 89 */	bl mPr_SetPossessionItem
/* 8048B2A4  3B A0 00 01 */	li r29, 1
/* 8048B2A8  48 00 00 30 */	b lbl_8048B2D8
lbl_8048B2AC:
/* 8048B2AC  7F E3 FB 78 */	mr r3, r31
/* 8048B2B0  38 80 00 00 */	li r4, 0
/* 8048B2B4  4B F5 54 75 */	bl mPr_GetPossessionItemIdx
/* 8048B2B8  7C 64 1B 78 */	mr r4, r3
/* 8048B2BC  2C 04 FF FF */	cmpwi r4, -1
/* 8048B2C0  41 82 00 18 */	beq lbl_8048B2D8
/* 8048B2C4  A0 BB 00 20 */	lhz r5, 0x20(r27)
/* 8048B2C8  7F E3 FB 78 */	mr r3, r31
/* 8048B2CC  38 C0 00 00 */	li r6, 0
/* 8048B2D0  4B F5 5B 59 */	bl mPr_SetPossessionItem
/* 8048B2D4  3B A0 00 01 */	li r29, 1
lbl_8048B2D8:
/* 8048B2D8  7F A3 EB 78 */	mr r3, r29
/* 8048B2DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8048B2E0  4B C0 FC 39 */	bl func_8009AF18
/* 8048B2E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048B2E8  7C 08 03 A6 */	mtlr r0
/* 8048B2EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8048B2F0  4E 80 00 20 */	blr 
