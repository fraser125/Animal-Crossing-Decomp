lbl_803AB5D8:
/* 803AB5D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AB5DC  7C 08 02 A6 */	mflr r0
/* 803AB5E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AB5E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB5E8  4B CE F8 E5 */	bl func_8009AECC
/* 803AB5EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AB5F0  7C 7B 1B 78 */	mr r27, r3
/* 803AB5F4  3B C4 85 38 */	addi r30, r4, common_data@l /* 0x81138538@l */
/* 803AB5F8  3B A0 00 00 */	li r29, 0
/* 803AB5FC  3B E0 00 00 */	li r31, 0
lbl_803AB600:
/* 803AB600  7C 9E FA 14 */	add r4, r30, r31
/* 803AB604  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803AB608  3F 84 00 02 */	addis r28, r4, 2
/* 803AB60C  88 9B 00 02 */	lbz r4, 2(r27)
/* 803AB610  88 BB 00 03 */	lbz r5, 3(r27)
/* 803AB614  A0 DC 3E 82 */	lhz r6, 0x3e82(r28)
/* 803AB618  88 FC 3E 81 */	lbz r7, 0x3e81(r28)
/* 803AB61C  89 1C 3E 7F */	lbz r8, 0x3e7f(r28)
/* 803AB620  3B 9C 3E 68 */	addi r28, r28, 0x3e68
/* 803AB624  48 05 B1 C9 */	bl lbRTC_IsEqualDate
/* 803AB628  2C 03 FF FF */	cmpwi r3, -1
/* 803AB62C  40 82 00 0C */	bne lbl_803AB638
/* 803AB630  7F 83 E3 78 */	mr r3, r28
/* 803AB634  4B FF FF 7D */	bl func_803AB5B0
lbl_803AB638:
/* 803AB638  3B BD 00 01 */	addi r29, r29, 1
/* 803AB63C  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AB640  2C 1D 00 05 */	cmpwi r29, 5
/* 803AB644  41 80 FF BC */	blt lbl_803AB600
/* 803AB648  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB64C  4B CE F8 CD */	bl func_8009AF18
/* 803AB650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AB654  7C 08 03 A6 */	mtlr r0
/* 803AB658  38 21 00 20 */	addi r1, r1, 0x20
/* 803AB65C  4E 80 00 20 */	blr 
