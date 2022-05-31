lbl_803BD168:
/* 803BD168  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803BD16C  7C 08 02 A6 */	mflr r0
/* 803BD170  38 A0 00 01 */	li r5, 1
/* 803BD174  90 01 00 44 */	stw r0, 0x44(r1)
/* 803BD178  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803BD17C  7C 7F 1B 78 */	mr r31, r3
/* 803BD180  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BD184  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803BD188  7C 9E 23 78 */	mr r30, r4
/* 803BD18C  7F E4 FB 78 */	mr r4, r31
/* 803BD190  4B C4 63 01 */	bl memcpy
/* 803BD194  38 61 00 1D */	addi r3, r1, 0x1d
/* 803BD198  38 9F 00 02 */	addi r4, r31, 2
/* 803BD19C  38 A0 00 13 */	li r5, 0x13
/* 803BD1A0  4B C4 62 F1 */	bl memcpy
/* 803BD1A4  7F C4 FE 70 */	srawi r4, r30, 0x1f
/* 803BD1A8  38 00 00 14 */	li r0, 0x14
/* 803BD1AC  7C 83 F2 78 */	xor r3, r4, r30
/* 803BD1B0  7C 64 18 50 */	subf r3, r4, r3
/* 803BD1B4  7C 63 1E 70 */	srawi r3, r3, 3
/* 803BD1B8  7C 63 01 94 */	addze r3, r3
/* 803BD1BC  38 83 FF FF */	addi r4, r3, -1
/* 803BD1C0  7F C5 FE 70 */	srawi r5, r30, 0x1f
/* 803BD1C4  7C 84 03 96 */	divwu r4, r4, r0
/* 803BD1C8  7C A0 F2 78 */	xor r0, r5, r30
/* 803BD1CC  7C A5 00 50 */	subf r5, r5, r0
/* 803BD1D0  54 A0 E8 04 */	slwi r0, r5, 0x1d
/* 803BD1D4  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 803BD1D8  7C 05 00 50 */	subf r0, r5, r0
/* 803BD1DC  54 00 18 3E */	rotlwi r0, r0, 3
/* 803BD1E0  7C 00 2A 14 */	add r0, r0, r5
/* 803BD1E4  7C 89 03 A6 */	mtctr r4
/* 803BD1E8  2C 03 00 14 */	cmpwi r3, 0x14
/* 803BD1EC  40 81 00 0C */	ble lbl_803BD1F8
lbl_803BD1F0:
/* 803BD1F0  38 63 FF EC */	addi r3, r3, -20
/* 803BD1F4  42 00 FF FC */	bdnz lbl_803BD1F0
lbl_803BD1F8:
/* 803BD1F8  2C 1E 00 00 */	cmpwi r30, 0
/* 803BD1FC  40 81 00 90 */	ble lbl_803BD28C
/* 803BD200  3B C0 00 00 */	li r30, 0
/* 803BD204  7C 09 03 A6 */	mtctr r0
/* 803BD208  2C 00 00 00 */	cmpwi r0, 0
/* 803BD20C  40 81 00 10 */	ble lbl_803BD21C
lbl_803BD210:
/* 803BD210  57 C4 08 3C */	slwi r4, r30, 1
/* 803BD214  3B C4 00 01 */	addi r30, r4, 1
/* 803BD218  42 00 FF F8 */	bdnz lbl_803BD210
lbl_803BD21C:
/* 803BD21C  30 80 FF FF */	addic r4, r0, -1
/* 803BD220  38 A0 00 13 */	li r5, 0x13
/* 803BD224  7C C4 21 10 */	subfe r6, r4, r4
/* 803BD228  38 81 00 1C */	addi r4, r1, 0x1c
/* 803BD22C  7C A5 30 78 */	andc r5, r5, r6
/* 803BD230  21 40 00 08 */	subfic r10, r0, 8
/* 803BD234  7C A4 28 AE */	lbzx r5, r4, r5
/* 803BD238  38 80 00 14 */	li r4, 0x14
/* 803BD23C  7C 6B 1B 78 */	mr r11, r3
/* 803BD240  39 01 00 08 */	addi r8, r1, 8
/* 803BD244  7C A5 56 30 */	sraw r5, r5, r10
/* 803BD248  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BD24C  7F CC 28 38 */	and r12, r30, r5
/* 803BD250  38 A0 00 14 */	li r5, 0x14
/* 803BD254  7C 89 03 A6 */	mtctr r4
lbl_803BD258:
/* 803BD258  38 CB 00 01 */	addi r6, r11, 1
/* 803BD25C  88 E3 00 00 */	lbz r7, 0(r3)
/* 803BD260  7C 86 2B D6 */	divw r4, r6, r5
/* 803BD264  38 63 00 01 */	addi r3, r3, 1
/* 803BD268  7C E9 00 30 */	slw r9, r7, r0
/* 803BD26C  7C E7 56 30 */	sraw r7, r7, r10
/* 803BD270  7D 89 4B 78 */	or r9, r12, r9
/* 803BD274  7D 28 59 AE */	stbx r9, r8, r11
/* 803BD278  7C 84 29 D6 */	mullw r4, r4, r5
/* 803BD27C  7F CC 38 38 */	and r12, r30, r7
/* 803BD280  7D 64 30 50 */	subf r11, r4, r6
/* 803BD284  42 00 FF D4 */	bdnz lbl_803BD258
/* 803BD288  48 00 00 AC */	b lbl_803BD334
lbl_803BD28C:
/* 803BD28C  40 80 00 98 */	bge lbl_803BD324
/* 803BD290  39 40 00 00 */	li r10, 0
/* 803BD294  7C 09 03 A6 */	mtctr r0
/* 803BD298  2C 00 00 00 */	cmpwi r0, 0
/* 803BD29C  40 81 00 10 */	ble lbl_803BD2AC
lbl_803BD2A0:
/* 803BD2A0  55 44 08 3C */	slwi r4, r10, 1
/* 803BD2A4  39 44 00 01 */	addi r10, r4, 1
/* 803BD2A8  42 00 FF F8 */	bdnz lbl_803BD2A0
lbl_803BD2AC:
/* 803BD2AC  30 80 FF FF */	addic r4, r0, -1
/* 803BD2B0  38 C0 00 14 */	li r6, 0x14
/* 803BD2B4  7D 04 21 10 */	subfe r8, r4, r4
/* 803BD2B8  38 80 00 13 */	li r4, 0x13
/* 803BD2BC  21 20 00 08 */	subfic r9, r0, 8
/* 803BD2C0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803BD2C4  20 E3 00 13 */	subfic r7, r3, 0x13
/* 803BD2C8  7C 83 40 38 */	and r3, r4, r8
/* 803BD2CC  7C 87 33 D6 */	divw r4, r7, r6
/* 803BD2D0  7C A5 18 AE */	lbzx r5, r5, r3
/* 803BD2D4  38 60 00 14 */	li r3, 0x14
/* 803BD2D8  7C A8 50 38 */	and r8, r5, r10
/* 803BD2DC  38 A1 00 08 */	addi r5, r1, 8
/* 803BD2E0  7D 08 48 30 */	slw r8, r8, r9
/* 803BD2E4  7C C4 31 D6 */	mullw r6, r4, r6
/* 803BD2E8  38 81 00 2F */	addi r4, r1, 0x2f
/* 803BD2EC  7C E6 38 50 */	subf r7, r6, r7
/* 803BD2F0  7C 69 03 A6 */	mtctr r3
lbl_803BD2F4:
/* 803BD2F4  88 64 00 00 */	lbz r3, 0(r4)
/* 803BD2F8  7C 66 06 30 */	sraw r6, r3, r0
/* 803BD2FC  7C 63 50 38 */	and r3, r3, r10
/* 803BD300  7D 06 33 78 */	or r6, r8, r6
/* 803BD304  7C C5 39 AE */	stbx r6, r5, r7
/* 803BD308  34 E7 FF FF */	addic. r7, r7, -1
/* 803BD30C  7C 68 48 30 */	slw r8, r3, r9
/* 803BD310  40 80 00 08 */	bge lbl_803BD318
/* 803BD314  38 E0 00 13 */	li r7, 0x13
lbl_803BD318:
/* 803BD318  38 84 FF FF */	addi r4, r4, -1
/* 803BD31C  42 00 FF D8 */	bdnz lbl_803BD2F4
/* 803BD320  48 00 00 14 */	b lbl_803BD334
lbl_803BD324:
/* 803BD324  38 61 00 08 */	addi r3, r1, 8
/* 803BD328  38 81 00 1C */	addi r4, r1, 0x1c
/* 803BD32C  38 A0 00 14 */	li r5, 0x14
/* 803BD330  4B C4 61 61 */	bl memcpy
lbl_803BD334:
/* 803BD334  7F E3 FB 78 */	mr r3, r31
/* 803BD338  38 81 00 08 */	addi r4, r1, 8
/* 803BD33C  38 A0 00 01 */	li r5, 1
/* 803BD340  4B C4 61 51 */	bl memcpy
/* 803BD344  38 7F 00 02 */	addi r3, r31, 2
/* 803BD348  38 81 00 09 */	addi r4, r1, 9
/* 803BD34C  38 A0 00 13 */	li r5, 0x13
/* 803BD350  4B C4 61 41 */	bl memcpy
/* 803BD354  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BD358  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803BD35C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803BD360  7C 08 03 A6 */	mtlr r0
/* 803BD364  38 21 00 40 */	addi r1, r1, 0x40
/* 803BD368  4E 80 00 20 */	blr 
