lbl_803D46E8:
/* 803D46E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D46EC  7C 08 02 A6 */	mflr r0
/* 803D46F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D46F4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D46F8  4B CC 67 C5 */	bl func_8009AEBC
/* 803D46FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D4700  3C A0 81 17 */	lis r5, l_mnpc_island_ftr@ha /* 0x8116C680@ha */
/* 803D4704  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D4708  7C 77 1B 78 */	mr r23, r3
/* 803D470C  3C 64 00 02 */	addis r3, r4, 2
/* 803D4710  3B A5 C6 80 */	addi r29, r5, l_mnpc_island_ftr@l /* 0x8116C680@l */
/* 803D4714  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D4718  3B 9D 00 02 */	addi r28, r29, 2
/* 803D471C  3B 60 00 00 */	li r27, 0
/* 803D4720  3B 40 00 00 */	li r26, 0
/* 803D4724  3B C0 00 00 */	li r30, 0
/* 803D4728  4B FF FE 0D */	bl mNpc_GetIslandRoomP
/* 803D472C  56 E0 A7 3E */	rlwinm r0, r23, 0x14, 0x1c, 0x1f
/* 803D4730  7C 7F 1B 78 */	mr r31, r3
/* 803D4734  2C 00 00 01 */	cmpwi r0, 1
/* 803D4738  41 82 00 0C */	beq lbl_803D4744
/* 803D473C  2C 00 00 03 */	cmpwi r0, 3
/* 803D4740  40 82 01 90 */	bne lbl_803D48D0
lbl_803D4744:
/* 803D4744  28 1F 00 00 */	cmplwi r31, 0
/* 803D4748  41 82 01 88 */	beq lbl_803D48D0
/* 803D474C  7E E3 BB 78 */	mr r3, r23
/* 803D4750  48 00 02 81 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 803D4754  2C 03 00 01 */	cmpwi r3, 1
/* 803D4758  40 82 00 4C */	bne lbl_803D47A4
/* 803D475C  7E E3 BB 78 */	mr r3, r23
/* 803D4760  4B FF F7 99 */	bl mNpc_GetIslandFtrIdx
/* 803D4764  38 A0 00 10 */	li r5, 0x10
/* 803D4768  54 66 0F FE */	srwi r6, r3, 0x1f
/* 803D476C  7C A0 1A 78 */	xor r0, r5, r3
/* 803D4770  7C 04 0E 70 */	srawi r4, r0, 1
/* 803D4774  68 C6 00 01 */	xori r6, r6, 1
/* 803D4778  7C 00 28 38 */	and r0, r0, r5
/* 803D477C  7C 00 20 50 */	subf r0, r0, r4
/* 803D4780  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803D4784  7C C0 00 39 */	and. r0, r6, r0
/* 803D4788  41 82 01 48 */	beq lbl_803D48D0
/* 803D478C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803D4790  7C 00 1E 30 */	sraw r0, r0, r3
/* 803D4794  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D4798  40 82 01 38 */	bne lbl_803D48D0
/* 803D479C  3B C0 00 01 */	li r30, 1
/* 803D47A0  48 00 01 30 */	b lbl_803D48D0
lbl_803D47A4:
/* 803D47A4  3B 20 00 00 */	li r25, 0
/* 803D47A8  3B A0 00 00 */	li r29, 0
lbl_803D47AC:
/* 803D47AC  3B 00 00 00 */	li r24, 0
lbl_803D47B0:
/* 803D47B0  7E E3 BB 78 */	mr r3, r23
/* 803D47B4  7F 04 C3 78 */	mr r4, r24
/* 803D47B8  48 09 F4 8D */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D47BC  7C 1C EA 2E */	lhzx r0, r28, r29
/* 803D47C0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803D47C4  7C 03 00 40 */	cmplw r3, r0
/* 803D47C8  40 82 00 0C */	bne lbl_803D47D4
/* 803D47CC  3B 40 00 01 */	li r26, 1
/* 803D47D0  48 00 00 10 */	b lbl_803D47E0
lbl_803D47D4:
/* 803D47D4  3B 18 00 01 */	addi r24, r24, 1
/* 803D47D8  2C 18 00 04 */	cmpwi r24, 4
/* 803D47DC  41 80 FF D4 */	blt lbl_803D47B0
lbl_803D47E0:
/* 803D47E0  2C 1A 00 01 */	cmpwi r26, 1
/* 803D47E4  41 82 00 14 */	beq lbl_803D47F8
/* 803D47E8  3B 39 00 01 */	addi r25, r25, 1
/* 803D47EC  3B BD 00 02 */	addi r29, r29, 2
/* 803D47F0  2C 19 00 04 */	cmpwi r25, 4
/* 803D47F4  41 80 FF B8 */	blt lbl_803D47AC
lbl_803D47F8:
/* 803D47F8  2C 1A 00 00 */	cmpwi r26, 0
/* 803D47FC  40 82 00 D4 */	bne lbl_803D48D0
/* 803D4800  7E E3 BB 78 */	mr r3, r23
/* 803D4804  48 09 F3 49 */	bl aMR_GetFurnitureUnit
/* 803D4808  2C 03 00 00 */	cmpwi r3, 0
/* 803D480C  40 82 00 34 */	bne lbl_803D4840
/* 803D4810  A0 1C 00 00 */	lhz r0, 0(r28)
/* 803D4814  28 00 00 00 */	cmplwi r0, 0
/* 803D4818  40 82 00 10 */	bne lbl_803D4828
/* 803D481C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FEB3@ha */
/* 803D4820  3B 63 FE B3 */	addi r27, r3, 0xFEB3 /* 0x0000FEB3@l */
/* 803D4824  48 00 00 48 */	b lbl_803D486C
lbl_803D4828:
/* 803D4828  A0 1C 00 02 */	lhz r0, 2(r28)
/* 803D482C  28 00 00 00 */	cmplwi r0, 0
/* 803D4830  40 82 00 3C */	bne lbl_803D486C
/* 803D4834  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FEB7@ha */
/* 803D4838  3B 63 FE B7 */	addi r27, r3, 0xFEB7 /* 0x0000FEB7@l */
/* 803D483C  48 00 00 30 */	b lbl_803D486C
lbl_803D4840:
/* 803D4840  2C 03 FF FF */	cmpwi r3, -1
/* 803D4844  41 82 00 28 */	beq lbl_803D486C
/* 803D4848  38 63 00 01 */	addi r3, r3, 1
/* 803D484C  54 60 08 3C */	slwi r0, r3, 1
/* 803D4850  7C 1C 02 2E */	lhzx r0, r28, r0
/* 803D4854  28 00 00 00 */	cmplwi r0, 0
/* 803D4858  40 82 00 14 */	bne lbl_803D486C
/* 803D485C  54 63 10 3A */	slwi r3, r3, 2
/* 803D4860  3C 63 00 01 */	addis r3, r3, 1
/* 803D4864  38 03 FE B3 */	addi r0, r3, -333
/* 803D4868  54 1B 04 3E */	clrlwi r27, r0, 0x10
lbl_803D486C:
/* 803D486C  57 64 04 3F */	clrlwi. r4, r27, 0x10
/* 803D4870  41 82 00 60 */	beq lbl_803D48D0
/* 803D4874  38 C0 00 00 */	li r6, 0
/* 803D4878  38 00 00 04 */	li r0, 4
lbl_803D487C:
/* 803D487C  A0 BF 00 00 */	lhz r5, 0(r31)
/* 803D4880  28 05 FE B3 */	cmplwi r5, 0xfeb3
/* 803D4884  41 80 00 34 */	blt lbl_803D48B8
/* 803D4888  28 05 FE C2 */	cmplwi r5, 0xfec2
/* 803D488C  41 81 00 2C */	bgt lbl_803D48B8
/* 803D4890  38 E0 00 00 */	li r7, 0
/* 803D4894  7C 09 03 A6 */	mtctr r0
lbl_803D4898:
/* 803D4898  7C 64 3A 14 */	add r3, r4, r7
/* 803D489C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803D48A0  7C 05 18 40 */	cmplw r5, r3
/* 803D48A4  40 82 00 0C */	bne lbl_803D48B0
/* 803D48A8  3B C0 00 01 */	li r30, 1
/* 803D48AC  48 00 00 0C */	b lbl_803D48B8
lbl_803D48B0:
/* 803D48B0  38 E7 00 01 */	addi r7, r7, 1
/* 803D48B4  42 00 FF E4 */	bdnz lbl_803D4898
lbl_803D48B8:
/* 803D48B8  2C 1E 00 01 */	cmpwi r30, 1
/* 803D48BC  41 82 00 14 */	beq lbl_803D48D0
/* 803D48C0  38 C6 00 01 */	addi r6, r6, 1
/* 803D48C4  3B FF 00 02 */	addi r31, r31, 2
/* 803D48C8  2C 06 01 00 */	cmpwi r6, 0x100
/* 803D48CC  41 80 FF B0 */	blt lbl_803D487C
lbl_803D48D0:
/* 803D48D0  7F C3 F3 78 */	mr r3, r30
/* 803D48D4  39 61 00 30 */	addi r11, r1, 0x30
/* 803D48D8  4B CC 66 31 */	bl func_8009AF08
/* 803D48DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D48E0  7C 08 03 A6 */	mtlr r0
/* 803D48E4  38 21 00 30 */	addi r1, r1, 0x30
/* 803D48E8  4E 80 00 20 */	blr 
