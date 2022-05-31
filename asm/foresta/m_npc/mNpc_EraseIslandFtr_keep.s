lbl_803D4F84:
/* 803D4F84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D4F88  7C 08 02 A6 */	mflr r0
/* 803D4F8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D4F90  39 61 00 40 */	addi r11, r1, 0x40
/* 803D4F94  4B CC 5F 21 */	bl func_8009AEB4
/* 803D4F98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D4F9C  3C A0 81 17 */	lis r5, l_mnpc_island_ftr@ha /* 0x8116C680@ha */
/* 803D4FA0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D4FA4  7C 7B 1B 78 */	mr r27, r3
/* 803D4FA8  3C 64 00 02 */	addis r3, r4, 2
/* 803D4FAC  3B E5 C6 80 */	addi r31, r5, l_mnpc_island_ftr@l /* 0x8116C680@l */
/* 803D4FB0  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D4FB4  4B FF F5 81 */	bl mNpc_GetIslandRoomP
/* 803D4FB8  57 60 A7 3E */	rlwinm r0, r27, 0x14, 0x1c, 0x1f
/* 803D4FBC  3C 80 81 17 */	lis r4, l_mnpc_island_ftr@ha /* 0x8116C680@ha */
/* 803D4FC0  2C 00 00 01 */	cmpwi r0, 1
/* 803D4FC4  7C 7D 1B 78 */	mr r29, r3
/* 803D4FC8  38 84 C6 80 */	addi r4, r4, l_mnpc_island_ftr@l /* 0x8116C680@l */
/* 803D4FCC  3A E0 00 00 */	li r23, 0
/* 803D4FD0  3B 04 00 02 */	addi r24, r4, 2
/* 803D4FD4  3B C0 00 00 */	li r30, 0
/* 803D4FD8  3B 80 00 00 */	li r28, 0
/* 803D4FDC  41 82 00 0C */	beq lbl_803D4FE8
/* 803D4FE0  2C 00 00 03 */	cmpwi r0, 3
/* 803D4FE4  40 82 01 98 */	bne lbl_803D517C
lbl_803D4FE8:
/* 803D4FE8  28 1D 00 00 */	cmplwi r29, 0
/* 803D4FEC  41 82 01 90 */	beq lbl_803D517C
/* 803D4FF0  7F 63 DB 78 */	mr r3, r27
/* 803D4FF4  4B FF F9 DD */	bl mNpc_CheckFtrIsIslandBestFtr
/* 803D4FF8  2C 03 00 01 */	cmpwi r3, 1
/* 803D4FFC  40 82 00 48 */	bne lbl_803D5044
/* 803D5000  7F 63 DB 78 */	mr r3, r27
/* 803D5004  4B FF EE F5 */	bl mNpc_GetIslandFtrIdx
/* 803D5008  2C 03 00 00 */	cmpwi r3, 0
/* 803D500C  41 80 01 70 */	blt lbl_803D517C
/* 803D5010  2C 03 00 10 */	cmpwi r3, 0x10
/* 803D5014  40 80 01 68 */	bge lbl_803D517C
/* 803D5018  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803D501C  7C 80 1E 30 */	sraw r0, r4, r3
/* 803D5020  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D5024  2C 00 00 01 */	cmpwi r0, 1
/* 803D5028  40 82 01 54 */	bne lbl_803D517C
/* 803D502C  38 00 00 01 */	li r0, 1
/* 803D5030  3B 80 00 01 */	li r28, 1
/* 803D5034  7C 00 18 30 */	slw r0, r0, r3
/* 803D5038  7C 80 00 78 */	andc r0, r4, r0
/* 803D503C  B0 1F 00 00 */	sth r0, 0(r31)
/* 803D5040  48 00 01 3C */	b lbl_803D517C
lbl_803D5044:
/* 803D5044  3A C0 00 00 */	li r22, 0
/* 803D5048  3B 40 00 00 */	li r26, 0
/* 803D504C  3B 20 00 00 */	li r25, 0
lbl_803D5050:
/* 803D5050  3A A0 00 00 */	li r21, 0
lbl_803D5054:
/* 803D5054  7F 63 DB 78 */	mr r3, r27
/* 803D5058  7E A4 AB 78 */	mr r4, r21
/* 803D505C  48 09 EB E9 */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D5060  7C 18 CA 2E */	lhzx r0, r24, r25
/* 803D5064  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803D5068  7C 03 00 40 */	cmplw r3, r0
/* 803D506C  40 82 00 1C */	bne lbl_803D5088
/* 803D5070  3C 7A 00 01 */	addis r3, r26, 1
/* 803D5074  38 00 00 00 */	li r0, 0
/* 803D5078  38 63 FE B3 */	addi r3, r3, -333
/* 803D507C  7C 18 CB 2E */	sthx r0, r24, r25
/* 803D5080  54 77 04 3E */	clrlwi r23, r3, 0x10
/* 803D5084  48 00 00 10 */	b lbl_803D5094
lbl_803D5088:
/* 803D5088  3A B5 00 01 */	addi r21, r21, 1
/* 803D508C  2C 15 00 04 */	cmpwi r21, 4
/* 803D5090  41 80 FF C4 */	blt lbl_803D5054
lbl_803D5094:
/* 803D5094  56 E0 04 3F */	clrlwi. r0, r23, 0x10
/* 803D5098  40 82 00 18 */	bne lbl_803D50B0
/* 803D509C  3A D6 00 01 */	addi r22, r22, 1
/* 803D50A0  3B 39 00 02 */	addi r25, r25, 2
/* 803D50A4  2C 16 00 04 */	cmpwi r22, 4
/* 803D50A8  3B 5A 00 04 */	addi r26, r26, 4
/* 803D50AC  41 80 FF A4 */	blt lbl_803D5050
lbl_803D50B0:
/* 803D50B0  56 E3 04 3F */	clrlwi. r3, r23, 0x10
/* 803D50B4  41 82 00 C8 */	beq lbl_803D517C
/* 803D50B8  38 A0 00 00 */	li r5, 0
lbl_803D50BC:
/* 803D50BC  A0 9D 00 00 */	lhz r4, 0(r29)
/* 803D50C0  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D50C4  2C 00 00 01 */	cmpwi r0, 1
/* 803D50C8  41 82 00 0C */	beq lbl_803D50D4
/* 803D50CC  2C 00 00 03 */	cmpwi r0, 3
/* 803D50D0  40 82 00 0C */	bne lbl_803D50DC
lbl_803D50D4:
/* 803D50D4  3B DE 00 01 */	addi r30, r30, 1
/* 803D50D8  48 00 00 8C */	b lbl_803D5164
lbl_803D50DC:
/* 803D50DC  28 04 FE B3 */	cmplwi r4, 0xfeb3
/* 803D50E0  41 80 00 84 */	blt lbl_803D5164
/* 803D50E4  28 04 FE C2 */	cmplwi r4, 0xfec2
/* 803D50E8  41 81 00 7C */	bgt lbl_803D5164
/* 803D50EC  38 00 00 04 */	li r0, 4
/* 803D50F0  38 E0 FF FF */	li r7, -1
/* 803D50F4  38 C0 00 00 */	li r6, 0
/* 803D50F8  7C 09 03 A6 */	mtctr r0
lbl_803D50FC:
/* 803D50FC  7C 03 32 14 */	add r0, r3, r6
/* 803D5100  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D5104  7C 04 00 40 */	cmplw r4, r0
/* 803D5108  40 82 00 0C */	bne lbl_803D5114
/* 803D510C  38 E0 00 01 */	li r7, 1
/* 803D5110  48 00 00 0C */	b lbl_803D511C
lbl_803D5114:
/* 803D5114  38 C6 00 01 */	addi r6, r6, 1
/* 803D5118  42 00 FF E4 */	bdnz lbl_803D50FC
lbl_803D511C:
/* 803D511C  2C 07 FF FF */	cmpwi r7, -1
/* 803D5120  41 82 00 40 */	beq lbl_803D5160
/* 803D5124  2C 1E 00 00 */	cmpwi r30, 0
/* 803D5128  41 80 00 38 */	blt lbl_803D5160
/* 803D512C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D5130  40 80 00 30 */	bge lbl_803D5160
/* 803D5134  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803D5138  7C 80 F6 30 */	sraw r0, r4, r30
/* 803D513C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D5140  2C 00 00 01 */	cmpwi r0, 1
/* 803D5144  40 82 00 1C */	bne lbl_803D5160
/* 803D5148  38 00 00 01 */	li r0, 1
/* 803D514C  3B 80 00 01 */	li r28, 1
/* 803D5150  7C 00 F0 30 */	slw r0, r0, r30
/* 803D5154  7C 80 00 78 */	andc r0, r4, r0
/* 803D5158  B0 1F 00 00 */	sth r0, 0(r31)
/* 803D515C  48 00 00 20 */	b lbl_803D517C
lbl_803D5160:
/* 803D5160  3B DE 00 01 */	addi r30, r30, 1
lbl_803D5164:
/* 803D5164  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D5168  41 82 00 14 */	beq lbl_803D517C
/* 803D516C  38 A5 00 01 */	addi r5, r5, 1
/* 803D5170  3B BD 00 02 */	addi r29, r29, 2
/* 803D5174  2C 05 01 00 */	cmpwi r5, 0x100
/* 803D5178  41 80 FF 44 */	blt lbl_803D50BC
lbl_803D517C:
/* 803D517C  7F 83 E3 78 */	mr r3, r28
/* 803D5180  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5184  4B CC 5D 7D */	bl func_8009AF00
/* 803D5188  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D518C  7C 08 03 A6 */	mtlr r0
/* 803D5190  38 21 00 40 */	addi r1, r1, 0x40
/* 803D5194  4E 80 00 20 */	blr 
