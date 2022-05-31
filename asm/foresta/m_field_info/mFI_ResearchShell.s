lbl_803AA5B8:
/* 803AA5B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803AA5BC  7C 08 02 A6 */	mflr r0
/* 803AA5C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803AA5C4  39 61 00 40 */	addi r11, r1, 0x40
/* 803AA5C8  4B CF 08 FD */	bl func_8009AEC4
/* 803AA5CC  81 27 00 00 */	lwz r9, 0(r7)
/* 803AA5D0  7C 7A 1B 78 */	mr r26, r3
/* 803AA5D4  81 07 00 04 */	lwz r8, 4(r7)
/* 803AA5D8  7C 9B 23 78 */	mr r27, r4
/* 803AA5DC  80 07 00 08 */	lwz r0, 8(r7)
/* 803AA5E0  7C BC 2B 78 */	mr r28, r5
/* 803AA5E4  91 21 00 10 */	stw r9, 0x10(r1)
/* 803AA5E8  7C DD 33 78 */	mr r29, r6
/* 803AA5EC  38 61 00 0C */	addi r3, r1, 0xc
/* 803AA5F0  38 81 00 08 */	addi r4, r1, 8
/* 803AA5F4  91 01 00 14 */	stw r8, 0x14(r1)
/* 803AA5F8  38 A1 00 10 */	addi r5, r1, 0x10
/* 803AA5FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 803AA600  4B FF B1 61 */	bl mFI_Wpos2BlockNum
/* 803AA604  3C 60 80 65 */	lis r3, l_sandy_beach_bz@ha /* 0x80654000@ha */
/* 803AA608  3C 80 80 65 */	lis r4, l_sandy_beach_bx@ha /* 0x80653FF8@ha */
/* 803AA60C  38 03 40 00 */	addi r0, r3, l_sandy_beach_bz@l /* 0x80654000@l */
/* 803AA610  3B C0 00 00 */	li r30, 0
/* 803AA614  3B E4 3F F8 */	addi r31, r4, l_sandy_beach_bx@l /* 0x80653FF8@l */
/* 803AA618  7C 19 03 78 */	mr r25, r0
lbl_803AA61C:
/* 803AA61C  88 9F 00 00 */	lbz r4, 0(r31)
/* 803AA620  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803AA624  88 B9 00 00 */	lbz r5, 0(r25)
/* 803AA628  7C 04 00 00 */	cmpw r4, r0
/* 803AA62C  40 82 00 10 */	bne lbl_803AA63C
/* 803AA630  80 01 00 08 */	lwz r0, 8(r1)
/* 803AA634  7C 05 00 00 */	cmpw r5, r0
/* 803AA638  41 82 00 7C */	beq lbl_803AA6B4
lbl_803AA63C:
/* 803AA63C  7F 63 DB 78 */	mr r3, r27
/* 803AA640  4B FF FE 59 */	bl mFI_GetCanSetShellNum
/* 803AA644  98 7A 00 00 */	stb r3, 0(r26)
/* 803AA648  88 1A 00 00 */	lbz r0, 0(r26)
/* 803AA64C  28 00 00 00 */	cmplwi r0, 0
/* 803AA650  41 82 00 64 */	beq lbl_803AA6B4
/* 803AA654  88 7B 00 00 */	lbz r3, 0(r27)
/* 803AA658  28 03 00 04 */	cmplwi r3, 4
/* 803AA65C  40 80 00 50 */	bge lbl_803AA6AC
/* 803AA660  20 83 00 04 */	subfic r4, r3, 4
/* 803AA664  7C 04 00 00 */	cmpw r4, r0
/* 803AA668  40 81 00 28 */	ble lbl_803AA690
/* 803AA66C  7C 00 20 50 */	subf r0, r0, r4
/* 803AA670  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803AA674  7C 03 02 14 */	add r0, r3, r0
/* 803AA678  98 1B 00 00 */	stb r0, 0(r27)
/* 803AA67C  80 7C 00 00 */	lwz r3, 0(r28)
/* 803AA680  88 1A 00 00 */	lbz r0, 0(r26)
/* 803AA684  7C 03 02 14 */	add r0, r3, r0
/* 803AA688  90 1C 00 00 */	stw r0, 0(r28)
/* 803AA68C  48 00 00 10 */	b lbl_803AA69C
lbl_803AA690:
/* 803AA690  80 1C 00 00 */	lwz r0, 0(r28)
/* 803AA694  7C 00 22 14 */	add r0, r0, r4
/* 803AA698  90 1C 00 00 */	stw r0, 0(r28)
lbl_803AA69C:
/* 803AA69C  80 7D 00 00 */	lwz r3, 0(r29)
/* 803AA6A0  38 03 00 01 */	addi r0, r3, 1
/* 803AA6A4  90 1D 00 00 */	stw r0, 0(r29)
/* 803AA6A8  48 00 00 0C */	b lbl_803AA6B4
lbl_803AA6AC:
/* 803AA6AC  38 00 00 00 */	li r0, 0
/* 803AA6B0  98 1A 00 00 */	stb r0, 0(r26)
lbl_803AA6B4:
/* 803AA6B4  3B DE 00 01 */	addi r30, r30, 1
/* 803AA6B8  3B 7B 00 01 */	addi r27, r27, 1
/* 803AA6BC  2C 1E 00 07 */	cmpwi r30, 7
/* 803AA6C0  3B 39 00 01 */	addi r25, r25, 1
/* 803AA6C4  3B FF 00 01 */	addi r31, r31, 1
/* 803AA6C8  3B 5A 00 01 */	addi r26, r26, 1
/* 803AA6CC  41 80 FF 50 */	blt lbl_803AA61C
/* 803AA6D0  39 61 00 40 */	addi r11, r1, 0x40
/* 803AA6D4  4B CF 08 3D */	bl func_8009AF10
/* 803AA6D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803AA6DC  7C 08 03 A6 */	mtlr r0
/* 803AA6E0  38 21 00 40 */	addi r1, r1, 0x40
/* 803AA6E4  4E 80 00 20 */	blr 
