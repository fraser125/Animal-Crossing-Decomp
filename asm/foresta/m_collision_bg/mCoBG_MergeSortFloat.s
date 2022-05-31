lbl_80387D60:
/* 80387D60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80387D64  7C 08 02 A6 */	mflr r0
/* 80387D68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80387D6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80387D70  4B D1 31 51 */	bl func_8009AEC0
/* 80387D74  7C 9D 23 78 */	mr r29, r4
/* 80387D78  7C B8 2B 78 */	mr r24, r5
/* 80387D7C  7C 1D C0 00 */	cmpw r29, r24
/* 80387D80  7C 7C 1B 78 */	mr r28, r3
/* 80387D84  40 80 01 AC */	bge lbl_80387F30
/* 80387D88  7C 1D C2 14 */	add r0, r29, r24
/* 80387D8C  3B E0 00 00 */	li r31, 0
/* 80387D90  7C 19 0E 70 */	srawi r25, r0, 1
/* 80387D94  3B 40 00 00 */	li r26, 0
/* 80387D98  7F 25 CB 78 */	mr r5, r25
/* 80387D9C  3B C0 00 00 */	li r30, 0
/* 80387DA0  3B 60 00 00 */	li r27, 0
/* 80387DA4  4B FF FF BD */	bl mCoBG_MergeSortFloat
/* 80387DA8  7F 83 E3 78 */	mr r3, r28
/* 80387DAC  7F 05 C3 78 */	mr r5, r24
/* 80387DB0  38 99 00 01 */	addi r4, r25, 1
/* 80387DB4  4B FF FF AD */	bl mCoBG_MergeSortFloat
/* 80387DB8  38 19 00 01 */	addi r0, r25, 1
/* 80387DBC  3C 80 81 13 */	lis r4, pre_work@ha /* 0x8113741C@ha */
/* 80387DC0  7C 1D 00 50 */	subf r0, r29, r0
/* 80387DC4  57 A3 10 3A */	slwi r3, r29, 2
/* 80387DC8  38 84 74 1C */	addi r4, r4, pre_work@l /* 0x8113741C@l */
/* 80387DCC  7C 09 03 A6 */	mtctr r0
/* 80387DD0  7C 1D C8 00 */	cmpw r29, r25
/* 80387DD4  41 81 00 1C */	bgt lbl_80387DF0
lbl_80387DD8:
/* 80387DD8  7C 1C 1C 2E */	lfsx f0, r28, r3
/* 80387DDC  38 63 00 04 */	addi r3, r3, 4
/* 80387DE0  3B FF 00 01 */	addi r31, r31, 1
/* 80387DE4  7C 04 D5 2E */	stfsx f0, r4, r26
/* 80387DE8  3B 5A 00 04 */	addi r26, r26, 4
/* 80387DEC  42 00 FF EC */	bdnz lbl_80387DD8
lbl_80387DF0:
/* 80387DF0  38 B9 00 01 */	addi r5, r25, 1
/* 80387DF4  38 18 00 01 */	addi r0, r24, 1
/* 80387DF8  3C 80 81 13 */	lis r4, bk_work@ha /* 0x81137520@ha */
/* 80387DFC  7C 05 00 50 */	subf r0, r5, r0
/* 80387E00  54 A3 10 3A */	slwi r3, r5, 2
/* 80387E04  38 84 75 20 */	addi r4, r4, bk_work@l /* 0x81137520@l */
/* 80387E08  7C 09 03 A6 */	mtctr r0
/* 80387E0C  7C 05 C0 00 */	cmpw r5, r24
/* 80387E10  41 81 00 1C */	bgt lbl_80387E2C
lbl_80387E14:
/* 80387E14  7C 1C 1C 2E */	lfsx f0, r28, r3
/* 80387E18  38 63 00 04 */	addi r3, r3, 4
/* 80387E1C  3B DE 00 01 */	addi r30, r30, 1
/* 80387E20  7C 04 DD 2E */	stfsx f0, r4, r27
/* 80387E24  3B 7B 00 04 */	addi r27, r27, 4
/* 80387E28  42 00 FF EC */	bdnz lbl_80387E14
lbl_80387E2C:
/* 80387E2C  39 40 00 00 */	li r10, 0
/* 80387E30  3C C0 81 13 */	lis r6, pre_work@ha /* 0x8113741C@ha */
/* 80387E34  3C 80 81 13 */	lis r4, bk_work@ha /* 0x81137520@ha */
/* 80387E38  57 A5 10 3A */	slwi r5, r29, 2
/* 80387E3C  7D 43 53 78 */	mr r3, r10
/* 80387E40  39 26 74 1C */	addi r9, r6, pre_work@l /* 0x8113741C@l */
/* 80387E44  39 04 75 20 */	addi r8, r4, bk_work@l /* 0x81137520@l */
/* 80387E48  38 80 00 00 */	li r4, 0
/* 80387E4C  38 C0 00 00 */	li r6, 0
/* 80387E50  48 00 00 64 */	b lbl_80387EB4
lbl_80387E54:
/* 80387E54  7C 29 24 2E */	lfsx f1, r9, r4
/* 80387E58  7C 08 34 2E */	lfsx f0, r8, r6
/* 80387E5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80387E60  4C 40 13 82 */	cror 2, 0, 2
/* 80387E64  40 82 00 28 */	bne lbl_80387E8C
/* 80387E68  3C E0 81 13 */	lis r7, pre_work@ha /* 0x8113741C@ha */
/* 80387E6C  39 4A 00 01 */	addi r10, r10, 1
/* 80387E70  38 E7 74 1C */	addi r7, r7, pre_work@l /* 0x8113741C@l */
/* 80387E74  3B BD 00 01 */	addi r29, r29, 1
/* 80387E78  7C 07 24 2E */	lfsx f0, r7, r4
/* 80387E7C  38 84 00 04 */	addi r4, r4, 4
/* 80387E80  7C 1C 2D 2E */	stfsx f0, r28, r5
/* 80387E84  38 A5 00 04 */	addi r5, r5, 4
/* 80387E88  48 00 00 2C */	b lbl_80387EB4
lbl_80387E8C:
/* 80387E8C  3C E0 81 13 */	lis r7, bk_work@ha /* 0x81137520@ha */
/* 80387E90  7F A0 EB 78 */	mr r0, r29
/* 80387E94  38 E7 75 20 */	addi r7, r7, bk_work@l /* 0x81137520@l */
/* 80387E98  3B BD 00 01 */	addi r29, r29, 1
/* 80387E9C  7C 07 34 2E */	lfsx f0, r7, r6
/* 80387EA0  54 00 10 3A */	slwi r0, r0, 2
/* 80387EA4  38 A5 00 04 */	addi r5, r5, 4
/* 80387EA8  38 63 00 01 */	addi r3, r3, 1
/* 80387EAC  7C 1C 05 2E */	stfsx f0, r28, r0
/* 80387EB0  38 C6 00 04 */	addi r6, r6, 4
lbl_80387EB4:
/* 80387EB4  7C 0A F8 00 */	cmpw r10, r31
/* 80387EB8  40 80 00 0C */	bge lbl_80387EC4
/* 80387EBC  7C 03 F0 00 */	cmpw r3, r30
/* 80387EC0  41 80 FF 94 */	blt lbl_80387E54
lbl_80387EC4:
/* 80387EC4  3C 80 81 13 */	lis r4, pre_work@ha /* 0x8113741C@ha */
/* 80387EC8  7C 0A F8 50 */	subf r0, r10, r31
/* 80387ECC  38 C4 74 1C */	addi r6, r4, pre_work@l /* 0x8113741C@l */
/* 80387ED0  57 A5 10 3A */	slwi r5, r29, 2
/* 80387ED4  55 44 10 3A */	slwi r4, r10, 2
/* 80387ED8  7C 09 03 A6 */	mtctr r0
/* 80387EDC  7C 0A F8 00 */	cmpw r10, r31
/* 80387EE0  40 80 00 1C */	bge lbl_80387EFC
lbl_80387EE4:
/* 80387EE4  7C 06 24 2E */	lfsx f0, r6, r4
/* 80387EE8  38 84 00 04 */	addi r4, r4, 4
/* 80387EEC  3B BD 00 01 */	addi r29, r29, 1
/* 80387EF0  7C 1C 2D 2E */	stfsx f0, r28, r5
/* 80387EF4  38 A5 00 04 */	addi r5, r5, 4
/* 80387EF8  42 00 FF EC */	bdnz lbl_80387EE4
lbl_80387EFC:
/* 80387EFC  3C 80 81 13 */	lis r4, bk_work@ha /* 0x81137520@ha */
/* 80387F00  7C 03 F0 50 */	subf r0, r3, r30
/* 80387F04  38 C4 75 20 */	addi r6, r4, bk_work@l /* 0x81137520@l */
/* 80387F08  57 A5 10 3A */	slwi r5, r29, 2
/* 80387F0C  54 64 10 3A */	slwi r4, r3, 2
/* 80387F10  7C 09 03 A6 */	mtctr r0
/* 80387F14  7C 03 F0 00 */	cmpw r3, r30
/* 80387F18  40 80 00 18 */	bge lbl_80387F30
lbl_80387F1C:
/* 80387F1C  7C 06 24 2E */	lfsx f0, r6, r4
/* 80387F20  38 84 00 04 */	addi r4, r4, 4
/* 80387F24  7C 1C 2D 2E */	stfsx f0, r28, r5
/* 80387F28  38 A5 00 04 */	addi r5, r5, 4
/* 80387F2C  42 00 FF F0 */	bdnz lbl_80387F1C
lbl_80387F30:
/* 80387F30  39 61 00 30 */	addi r11, r1, 0x30
/* 80387F34  4B D1 2F D9 */	bl func_8009AF0C
/* 80387F38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80387F3C  7C 08 03 A6 */	mtlr r0
/* 80387F40  38 21 00 30 */	addi r1, r1, 0x30
/* 80387F44  4E 80 00 20 */	blr 
