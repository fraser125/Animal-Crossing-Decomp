lbl_803908D0:
/* 803908D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803908D4  7C 08 02 A6 */	mflr r0
/* 803908D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803908DC  39 61 00 40 */	addi r11, r1, 0x40
/* 803908E0  4B D0 A5 F1 */	bl func_8009AED0
/* 803908E4  7C 7F 1B 78 */	mr r31, r3
/* 803908E8  38 61 00 10 */	addi r3, r1, 0x10
/* 803908EC  80 FF 00 00 */	lwz r7, 0(r31)
/* 803908F0  38 81 00 0C */	addi r4, r1, 0xc
/* 803908F4  81 1F 00 04 */	lwz r8, 4(r31)
/* 803908F8  38 A1 00 18 */	addi r5, r1, 0x18
/* 803908FC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80390900  38 C1 00 14 */	addi r6, r1, 0x14
/* 80390904  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80390908  38 E1 00 1C */	addi r7, r1, 0x1c
/* 8039090C  91 01 00 20 */	stw r8, 0x20(r1)
/* 80390910  90 01 00 24 */	stw r0, 0x24(r1)
/* 80390914  48 01 4E AD */	bl mFI_Wpos2BkandUtNuminBlock
/* 80390918  2C 03 00 00 */	cmpwi r3, 0
/* 8039091C  41 82 01 40 */	beq lbl_80390A5C
/* 80390920  38 00 00 00 */	li r0, 0
/* 80390924  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80390928  90 01 00 08 */	stw r0, 8(r1)
/* 8039092C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80390930  48 01 58 B5 */	bl mFI_BkNum2BlockType
/* 80390934  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80390938  7C 7E 1B 78 */	mr r30, r3
/* 8039093C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80390940  2C 04 00 03 */	cmpwi r4, 3
/* 80390944  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80390948  54 00 20 36 */	slwi r0, r0, 4
/* 8039094C  7F 83 02 14 */	add r28, r3, r0
/* 80390950  40 82 00 38 */	bne lbl_80390988
/* 80390954  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80390958  2C 00 00 02 */	cmpwi r0, 2
/* 8039095C  40 82 00 2C */	bne lbl_80390988
/* 80390960  38 1C FF 1A */	addi r0, r28, -230
/* 80390964  28 00 00 03 */	cmplwi r0, 3
/* 80390968  40 81 00 18 */	ble lbl_80390980
/* 8039096C  38 1C FF 0A */	addi r0, r28, -246
/* 80390970  28 00 00 02 */	cmplwi r0, 2
/* 80390974  40 81 00 0C */	ble lbl_80390980
/* 80390978  2C 1C 00 F9 */	cmpwi r28, 0xf9
/* 8039097C  40 82 00 50 */	bne lbl_803909CC
lbl_80390980:
/* 80390980  38 60 00 00 */	li r3, 0
/* 80390984  48 00 00 DC */	b lbl_80390A60
lbl_80390988:
/* 80390988  2C 04 00 03 */	cmpwi r4, 3
/* 8039098C  40 82 00 40 */	bne lbl_803909CC
/* 80390990  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80390994  2C 00 00 03 */	cmpwi r0, 3
/* 80390998  40 82 00 34 */	bne lbl_803909CC
/* 8039099C  38 1C FF F9 */	addi r0, r28, -7
/* 803909A0  28 00 00 01 */	cmplwi r0, 1
/* 803909A4  40 81 00 20 */	ble lbl_803909C4
/* 803909A8  38 1C FF E9 */	addi r0, r28, -23
/* 803909AC  28 00 00 01 */	cmplwi r0, 1
/* 803909B0  40 81 00 14 */	ble lbl_803909C4
/* 803909B4  2C 1C 00 27 */	cmpwi r28, 0x27
/* 803909B8  41 82 00 0C */	beq lbl_803909C4
/* 803909BC  2C 1C 00 28 */	cmpwi r28, 0x28
/* 803909C0  40 82 00 0C */	bne lbl_803909CC
lbl_803909C4:
/* 803909C4  38 60 00 00 */	li r3, 0
/* 803909C8  48 00 00 98 */	b lbl_80390A60
lbl_803909CC:
/* 803909CC  3B A0 00 00 */	li r29, 0
lbl_803909D0:
/* 803909D0  7F C4 F3 78 */	mr r4, r30
/* 803909D4  7F A5 EB 78 */	mr r5, r29
/* 803909D8  38 61 00 08 */	addi r3, r1, 8
/* 803909DC  48 05 41 B9 */	bl mRF_BlockTypeDirect2GateData
/* 803909E0  28 03 00 00 */	cmplwi r3, 0
/* 803909E4  41 82 00 44 */	beq lbl_80390A28
/* 803909E8  80 01 00 08 */	lwz r0, 8(r1)
/* 803909EC  38 80 00 00 */	li r4, 0
/* 803909F0  7C 09 03 A6 */	mtctr r0
/* 803909F4  2C 00 00 00 */	cmpwi r0, 0
/* 803909F8  40 81 00 30 */	ble lbl_80390A28
lbl_803909FC:
/* 803909FC  7C A3 22 14 */	add r5, r3, r4
/* 80390A00  80 05 00 00 */	lwz r0, 0(r5)
/* 80390A04  7C 1C 00 00 */	cmpw r28, r0
/* 80390A08  41 82 00 10 */	beq lbl_80390A18
/* 80390A0C  80 05 00 04 */	lwz r0, 4(r5)
/* 80390A10  7C 1C 00 00 */	cmpw r28, r0
/* 80390A14  40 82 00 0C */	bne lbl_80390A20
lbl_80390A18:
/* 80390A18  38 60 00 00 */	li r3, 0
/* 80390A1C  48 00 00 44 */	b lbl_80390A60
lbl_80390A20:
/* 80390A20  38 84 00 08 */	addi r4, r4, 8
/* 80390A24  42 00 FF D8 */	bdnz lbl_803909FC
lbl_80390A28:
/* 80390A28  3B BD 00 01 */	addi r29, r29, 1
/* 80390A2C  2C 1D 00 04 */	cmpwi r29, 4
/* 80390A30  41 80 FF A0 */	blt lbl_803909D0
/* 80390A34  7F E3 FB 78 */	mr r3, r31
/* 80390A38  4B FF FD CD */	bl mCoBG_CheckGrassX
/* 80390A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80390A40  40 82 00 1C */	bne lbl_80390A5C
/* 80390A44  7F E3 FB 78 */	mr r3, r31
/* 80390A48  4B FF FE 49 */	bl mCoBG_CheckWave
/* 80390A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80390A50  40 82 00 0C */	bne lbl_80390A5C
/* 80390A54  38 60 00 01 */	li r3, 1
/* 80390A58  48 00 00 08 */	b lbl_80390A60
lbl_80390A5C:
/* 80390A5C  38 60 00 00 */	li r3, 0
lbl_80390A60:
/* 80390A60  39 61 00 40 */	addi r11, r1, 0x40
/* 80390A64  4B D0 A4 B9 */	bl func_8009AF1C
/* 80390A68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80390A6C  7C 08 03 A6 */	mtlr r0
/* 80390A70  38 21 00 40 */	addi r1, r1, 0x40
/* 80390A74  4E 80 00 20 */	blr 
