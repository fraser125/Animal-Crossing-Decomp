lbl_803AF478:
/* 803AF478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AF47C  7C 08 02 A6 */	mflr r0
/* 803AF480  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AF484  39 61 00 30 */	addi r11, r1, 0x30
/* 803AF488  4B CE BA 3D */	bl func_8009AEC4
/* 803AF48C  2C 08 00 00 */	cmpwi r8, 0
/* 803AF490  7C 9E 23 78 */	mr r30, r4
/* 803AF494  7C 7D 1B 78 */	mr r29, r3
/* 803AF498  7C FF 3B 78 */	mr r31, r7
/* 803AF49C  7D 66 F0 50 */	subf r11, r6, r30
/* 803AF4A0  38 00 00 20 */	li r0, 0x20
/* 803AF4A4  41 82 00 08 */	beq lbl_803AF4AC
/* 803AF4A8  38 00 00 30 */	li r0, 0x30
lbl_803AF4AC:
/* 803AF4AC  2C 08 00 00 */	cmpwi r8, 0
/* 803AF4B0  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 803AF4B4  38 00 00 00 */	li r0, 0
/* 803AF4B8  41 82 00 10 */	beq lbl_803AF4C8
/* 803AF4BC  2C 1F 00 00 */	cmpwi r31, 0
/* 803AF4C0  40 82 00 08 */	bne lbl_803AF4C8
/* 803AF4C4  38 00 00 01 */	li r0, 1
lbl_803AF4C8:
/* 803AF4C8  2C 00 00 00 */	cmpwi r0, 0
/* 803AF4CC  38 80 00 20 */	li r4, 0x20
/* 803AF4D0  41 82 00 08 */	beq lbl_803AF4D8
/* 803AF4D4  38 80 00 30 */	li r4, 0x30
lbl_803AF4D8:
/* 803AF4D8  39 9E FF FF */	addi r12, r30, -1
/* 803AF4DC  3C 60 80 65 */	lis r3, mFont_suji_data@ha /* 0x806543C0@ha */
/* 803AF4E0  38 0C 00 01 */	addi r0, r12, 1
/* 803AF4E4  7C AA 2B 78 */	mr r10, r5
/* 803AF4E8  7C 0B 00 50 */	subf r0, r11, r0
/* 803AF4EC  7D 87 63 78 */	mr r7, r12
/* 803AF4F0  54 9B 06 3E */	clrlwi r27, r4, 0x18
/* 803AF4F4  38 83 43 C0 */	addi r4, r3, mFont_suji_data@l /* 0x806543C0@l */
/* 803AF4F8  7C 7D 62 14 */	add r3, r29, r12
/* 803AF4FC  39 00 00 0A */	li r8, 0xa
/* 803AF500  38 C0 00 30 */	li r6, 0x30
/* 803AF504  7C 09 03 A6 */	mtctr r0
/* 803AF508  7C 0C 58 00 */	cmpw r12, r11
/* 803AF50C  41 80 00 50 */	blt lbl_803AF55C
lbl_803AF510:
/* 803AF510  7D 6A 43 96 */	divwu r11, r10, r8
/* 803AF514  28 0A 00 00 */	cmplwi r10, 0
/* 803AF518  1C 0B 00 0A */	mulli r0, r11, 0xa
/* 803AF51C  7C 00 50 50 */	subf r0, r0, r10
/* 803AF520  40 82 00 24 */	bne lbl_803AF544
/* 803AF524  28 05 00 00 */	cmplwi r5, 0
/* 803AF528  40 82 00 14 */	bne lbl_803AF53C
/* 803AF52C  7C 0C 38 00 */	cmpw r12, r7
/* 803AF530  40 82 00 0C */	bne lbl_803AF53C
/* 803AF534  98 C3 00 00 */	stb r6, 0(r3)
/* 803AF538  48 00 00 14 */	b lbl_803AF54C
lbl_803AF53C:
/* 803AF53C  9B 43 00 00 */	stb r26, 0(r3)
/* 803AF540  48 00 00 0C */	b lbl_803AF54C
lbl_803AF544:
/* 803AF544  7C 04 00 AE */	lbzx r0, r4, r0
/* 803AF548  98 03 00 00 */	stb r0, 0(r3)
lbl_803AF54C:
/* 803AF54C  7D 6A 5B 78 */	mr r10, r11
/* 803AF550  39 8C FF FF */	addi r12, r12, -1
/* 803AF554  38 63 FF FF */	addi r3, r3, -1
/* 803AF558  42 00 FF B8 */	bdnz lbl_803AF510
lbl_803AF55C:
/* 803AF55C  38 0C 00 01 */	addi r0, r12, 1
/* 803AF560  7C 7D 62 14 */	add r3, r29, r12
/* 803AF564  7C 09 03 A6 */	mtctr r0
/* 803AF568  2C 0C 00 00 */	cmpwi r12, 0
/* 803AF56C  41 80 00 10 */	blt lbl_803AF57C
lbl_803AF570:
/* 803AF570  9B 63 00 00 */	stb r27, 0(r3)
/* 803AF574  38 63 FF FF */	addi r3, r3, -1
/* 803AF578  42 00 FF F8 */	bdnz lbl_803AF570
lbl_803AF57C:
/* 803AF57C  2C 09 00 00 */	cmpwi r9, 0
/* 803AF580  41 82 00 70 */	beq lbl_803AF5F0
/* 803AF584  3B 5E FF FF */	addi r26, r30, -1
/* 803AF588  3B 20 00 00 */	li r25, 0
/* 803AF58C  7F 9D D2 14 */	add r28, r29, r26
/* 803AF590  3B 60 00 2C */	li r27, 0x2c
/* 803AF594  48 00 00 54 */	b lbl_803AF5E8
lbl_803AF598:
/* 803AF598  88 7C 00 00 */	lbz r3, 0(r28)
/* 803AF59C  4B FF FE A5 */	bl mFont_suji_check
/* 803AF5A0  2C 03 00 00 */	cmpwi r3, 0
/* 803AF5A4  41 82 00 3C */	beq lbl_803AF5E0
/* 803AF5A8  3B 39 00 01 */	addi r25, r25, 1
/* 803AF5AC  2C 19 00 03 */	cmpwi r25, 3
/* 803AF5B0  40 81 00 30 */	ble lbl_803AF5E0
/* 803AF5B4  38 80 00 00 */	li r4, 0
/* 803AF5B8  7F 49 03 A6 */	mtctr r26
/* 803AF5BC  2C 1A 00 00 */	cmpwi r26, 0
/* 803AF5C0  40 81 00 18 */	ble lbl_803AF5D8
lbl_803AF5C4:
/* 803AF5C4  7C 7D 22 14 */	add r3, r29, r4
/* 803AF5C8  38 84 00 01 */	addi r4, r4, 1
/* 803AF5CC  88 03 00 01 */	lbz r0, 1(r3)
/* 803AF5D0  98 03 00 00 */	stb r0, 0(r3)
/* 803AF5D4  42 00 FF F0 */	bdnz lbl_803AF5C4
lbl_803AF5D8:
/* 803AF5D8  9B 7C 00 00 */	stb r27, 0(r28)
/* 803AF5DC  3B 20 00 00 */	li r25, 0
lbl_803AF5E0:
/* 803AF5E0  3B 5A FF FF */	addi r26, r26, -1
/* 803AF5E4  3B 9C FF FF */	addi r28, r28, -1
lbl_803AF5E8:
/* 803AF5E8  2C 1A 00 00 */	cmpwi r26, 0
/* 803AF5EC  40 80 FF AC */	bge lbl_803AF598
lbl_803AF5F0:
/* 803AF5F0  2C 1F 00 00 */	cmpwi r31, 0
/* 803AF5F4  41 82 00 14 */	beq lbl_803AF608
/* 803AF5F8  7F A3 EB 78 */	mr r3, r29
/* 803AF5FC  7F C4 F3 78 */	mr r4, r30
/* 803AF600  4B FF FD A9 */	bl mMsg_CutLeftSpace
/* 803AF604  48 00 00 08 */	b lbl_803AF60C
lbl_803AF608:
/* 803AF608  7F C3 F3 78 */	mr r3, r30
lbl_803AF60C:
/* 803AF60C  39 61 00 30 */	addi r11, r1, 0x30
/* 803AF610  4B CE B9 01 */	bl func_8009AF10
/* 803AF614  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AF618  7C 08 03 A6 */	mtlr r0
/* 803AF61C  38 21 00 30 */	addi r1, r1, 0x30
/* 803AF620  4E 80 00 20 */	blr 
