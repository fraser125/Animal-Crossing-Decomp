lbl_805EA7C0:
/* 805EA7C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EA7C4  7C 08 02 A6 */	mflr r0
/* 805EA7C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EA7CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805EA7D0  4B AB 06 FD */	bl func_8009AECC
/* 805EA7D4  7C 7E 1B 78 */	mr r30, r3
/* 805EA7D8  38 60 00 00 */	li r3, 0
/* 805EA7DC  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 805EA7E0  38 00 00 01 */	li r0, 1
/* 805EA7E4  38 80 11 40 */	li r4, 0x1140
/* 805EA7E8  38 A0 00 00 */	li r5, 0
/* 805EA7EC  90 7F 09 3C */	stw r3, 0x93c(r31)
/* 805EA7F0  90 7F 06 D0 */	stw r3, 0x6d0(r31)
/* 805EA7F4  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 805EA7F8  80 7F 09 D8 */	lwz r3, 0x9d8(r31)
/* 805EA7FC  4B DD 02 4D */	bl mem_clear
/* 805EA800  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805EA804  80 7F 09 D8 */	lwz r3, 0x9d8(r31)
/* 805EA808  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805EA80C  38 A0 11 00 */	li r5, 0x1100
/* 805EA810  3F 84 00 02 */	addis r28, r4, 2
/* 805EA814  38 83 00 20 */	addi r4, r3, 0x20
/* 805EA818  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805EA81C  38 63 12 40 */	addi r3, r3, 0x1240
/* 805EA820  4B A7 27 FD */	bl func_8005D01C
/* 805EA824  3B 60 00 00 */	li r27, 0
/* 805EA828  3B A0 00 00 */	li r29, 0
lbl_805EA82C:
/* 805EA82C  80 1F 09 D8 */	lwz r0, 0x9d8(r31)
/* 805EA830  38 7D 00 40 */	addi r3, r29, 0x40
/* 805EA834  38 80 02 00 */	li r4, 0x200
/* 805EA838  7C 60 1A 14 */	add r3, r0, r3
/* 805EA83C  4B A8 F3 E1 */	bl DCStoreRangeNoSync
/* 805EA840  3B 7B 00 01 */	addi r27, r27, 1
/* 805EA844  3B BD 02 20 */	addi r29, r29, 0x220
/* 805EA848  2C 1B 00 08 */	cmpwi r27, 8
/* 805EA84C  41 80 FF E0 */	blt lbl_805EA82C
/* 805EA850  80 7C 61 3C */	lwz r3, 0x613c(r28)
/* 805EA854  38 A0 00 08 */	li r5, 8
/* 805EA858  80 9F 09 D8 */	lwz r4, 0x9d8(r31)
/* 805EA85C  38 63 23 40 */	addi r3, r3, 0x2340
/* 805EA860  38 84 11 20 */	addi r4, r4, 0x1120
/* 805EA864  4B A7 27 B9 */	bl func_8005D01C
/* 805EA868  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 805EA86C  2C 00 00 03 */	cmpwi r0, 3
/* 805EA870  41 82 00 48 */	beq lbl_805EA8B8
/* 805EA874  40 80 00 10 */	bge lbl_805EA884
/* 805EA878  2C 00 00 02 */	cmpwi r0, 2
/* 805EA87C  40 80 00 14 */	bge lbl_805EA890
/* 805EA880  48 00 00 90 */	b lbl_805EA910
lbl_805EA884:
/* 805EA884  2C 00 00 05 */	cmpwi r0, 5
/* 805EA888  40 80 00 88 */	bge lbl_805EA910
/* 805EA88C  48 00 00 58 */	b lbl_805EA8E4
lbl_805EA890:
/* 805EA890  38 60 00 03 */	li r3, 3
/* 805EA894  38 00 00 02 */	li r0, 2
/* 805EA898  B0 7F 07 00 */	sth r3, 0x700(r31)
/* 805EA89C  7F C3 F3 78 */	mr r3, r30
/* 805EA8A0  38 80 00 18 */	li r4, 0x18
/* 805EA8A4  38 A0 00 02 */	li r5, 2
/* 805EA8A8  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 805EA8AC  38 C0 00 00 */	li r6, 0
/* 805EA8B0  4B E0 4E 2D */	bl mSM_open_submenu
/* 805EA8B4  48 00 00 64 */	b lbl_805EA918
lbl_805EA8B8:
/* 805EA8B8  38 60 00 01 */	li r3, 1
/* 805EA8BC  38 00 00 02 */	li r0, 2
/* 805EA8C0  B0 7F 07 00 */	sth r3, 0x700(r31)
/* 805EA8C4  7F C3 F3 78 */	mr r3, r30
/* 805EA8C8  38 80 00 1A */	li r4, 0x1a
/* 805EA8CC  38 A0 00 03 */	li r5, 3
/* 805EA8D0  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 805EA8D4  38 C0 00 00 */	li r6, 0
/* 805EA8D8  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 805EA8DC  4B E0 4E 29 */	bl mSM_open_submenu_new
/* 805EA8E0  48 00 00 38 */	b lbl_805EA918
lbl_805EA8E4:
/* 805EA8E4  38 60 00 01 */	li r3, 1
/* 805EA8E8  38 00 00 02 */	li r0, 2
/* 805EA8EC  B0 7F 07 00 */	sth r3, 0x700(r31)
/* 805EA8F0  7F C3 F3 78 */	mr r3, r30
/* 805EA8F4  38 80 00 1A */	li r4, 0x1a
/* 805EA8F8  38 A0 00 04 */	li r5, 4
/* 805EA8FC  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 805EA900  38 C0 00 00 */	li r6, 0
/* 805EA904  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 805EA908  4B E0 4D FD */	bl mSM_open_submenu_new
/* 805EA90C  48 00 00 0C */	b lbl_805EA918
lbl_805EA910:
/* 805EA910  38 00 00 01 */	li r0, 1
/* 805EA914  B0 1F 07 00 */	sth r0, 0x700(r31)
lbl_805EA918:
/* 805EA918  39 61 00 20 */	addi r11, r1, 0x20
/* 805EA91C  4B AB 05 FD */	bl func_8009AF18
/* 805EA920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EA924  7C 08 03 A6 */	mtlr r0
/* 805EA928  38 21 00 20 */	addi r1, r1, 0x20
/* 805EA92C  4E 80 00 20 */	blr 
