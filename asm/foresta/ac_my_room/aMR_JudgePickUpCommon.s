lbl_8047AB2C:
/* 8047AB2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047AB30  7C 08 02 A6 */	mflr r0
/* 8047AB34  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047AB38  39 61 00 30 */	addi r11, r1, 0x30
/* 8047AB3C  4B C2 03 89 */	bl func_8009AEC4
/* 8047AB40  7C BB 2B 78 */	mr r27, r5
/* 8047AB44  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047AB48  1C 1B 08 58 */	mulli r0, r27, 0x858
/* 8047AB4C  7C 9E 23 78 */	mr r30, r4
/* 8047AB50  80 85 DF E8 */	lwz r4, data_811CDFE8@l(r5)  /* 0x811CDFE8@l */
/* 8047AB54  7C 7A 1B 78 */	mr r26, r3
/* 8047AB58  7C DC 33 78 */	mr r28, r6
/* 8047AB5C  7F A4 02 14 */	add r29, r4, r0
/* 8047AB60  7F A3 EB 78 */	mr r3, r29
/* 8047AB64  4B FF 56 79 */	bl aMR_GetItemCountInFurniture
/* 8047AB68  7C 7F 1B 78 */	mr r31, r3
/* 8047AB6C  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8047AB70  4B FF 56 31 */	bl func_804701A0
/* 8047AB74  2C 1F 00 00 */	cmpwi r31, 0
/* 8047AB78  40 82 00 50 */	bne lbl_8047ABC8
/* 8047AB7C  A8 1E 03 F8 */	lha r0, 0x3f8(r30)
/* 8047AB80  2C 00 00 00 */	cmpwi r0, 0
/* 8047AB84  40 82 00 44 */	bne lbl_8047ABC8
/* 8047AB88  A8 1E 03 EC */	lha r0, 0x3ec(r30)
/* 8047AB8C  2C 00 00 00 */	cmpwi r0, 0
/* 8047AB90  40 82 00 38 */	bne lbl_8047ABC8
/* 8047AB94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047AB98  38 80 00 00 */	li r4, 0
/* 8047AB9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047ABA0  38 A0 00 00 */	li r5, 0
/* 8047ABA4  3C 63 00 02 */	addis r3, r3, 2
/* 8047ABA8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8047ABAC  4B F6 5E 21 */	bl mPr_GetPossessionItemSumWithCond
/* 8047ABB0  7F 63 DB 78 */	mr r3, r27
/* 8047ABB4  7F C4 F3 78 */	mr r4, r30
/* 8047ABB8  4B FF FF 01 */	bl aMR_PreparePickingUpFurniture
/* 8047ABBC  B3 9A 00 00 */	sth r28, 0(r26)
/* 8047ABC0  38 60 00 01 */	li r3, 1
/* 8047ABC4  48 00 01 6C */	b lbl_8047AD30
lbl_8047ABC8:
/* 8047ABC8  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8047ABCC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8047ABD0  41 82 00 64 */	beq lbl_8047AC34
/* 8047ABD4  A8 1E 03 F8 */	lha r0, 0x3f8(r30)
/* 8047ABD8  2C 00 00 00 */	cmpwi r0, 0
/* 8047ABDC  40 82 00 58 */	bne lbl_8047AC34
/* 8047ABE0  A8 1E 03 EC */	lha r0, 0x3ec(r30)
/* 8047ABE4  2C 00 00 00 */	cmpwi r0, 0
/* 8047ABE8  40 82 00 4C */	bne lbl_8047AC34
/* 8047ABEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047ABF0  38 80 00 00 */	li r4, 0
/* 8047ABF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047ABF8  38 A0 00 00 */	li r5, 0
/* 8047ABFC  3C 63 00 02 */	addis r3, r3, 2
/* 8047AC00  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8047AC04  4B F6 5D C9 */	bl mPr_GetPossessionItemSumWithCond
/* 8047AC08  2C 03 00 00 */	cmpwi r3, 0
/* 8047AC0C  40 81 00 1C */	ble lbl_8047AC28
/* 8047AC10  B3 9A 00 00 */	sth r28, 0(r26)
/* 8047AC14  7F 63 DB 78 */	mr r3, r27
/* 8047AC18  7F C4 F3 78 */	mr r4, r30
/* 8047AC1C  4B FF FE 9D */	bl aMR_PreparePickingUpFurniture
/* 8047AC20  38 60 00 01 */	li r3, 1
/* 8047AC24  48 00 01 0C */	b lbl_8047AD30
lbl_8047AC28:
/* 8047AC28  B3 9A 00 00 */	sth r28, 0(r26)
/* 8047AC2C  38 60 00 01 */	li r3, 1
/* 8047AC30  48 00 01 00 */	b lbl_8047AD30
lbl_8047AC34:
/* 8047AC34  A8 1E 03 F8 */	lha r0, 0x3f8(r30)
/* 8047AC38  2C 00 00 00 */	cmpwi r0, 0
/* 8047AC3C  40 82 00 F0 */	bne lbl_8047AD2C
/* 8047AC40  A8 1E 03 EC */	lha r0, 0x3ec(r30)
/* 8047AC44  2C 00 00 00 */	cmpwi r0, 0
/* 8047AC48  40 82 00 E4 */	bne lbl_8047AD2C
/* 8047AC4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047AC50  38 80 00 00 */	li r4, 0
/* 8047AC54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047AC58  38 A0 00 00 */	li r5, 0
/* 8047AC5C  3C 63 00 02 */	addis r3, r3, 2
/* 8047AC60  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8047AC64  4B F6 5D 69 */	bl mPr_GetPossessionItemSumWithCond
/* 8047AC68  7C 79 1B 78 */	mr r25, r3
/* 8047AC6C  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8047AC70  3B BF 00 01 */	addi r29, r31, 1
/* 8047AC74  4B FF 55 2D */	bl func_804701A0
/* 8047AC78  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8047AC7C  38 60 00 13 */	li r3, 0x13
/* 8047AC80  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8047AC84  41 82 00 08 */	beq lbl_8047AC8C
/* 8047AC88  38 60 00 14 */	li r3, 0x14
lbl_8047AC8C:
/* 8047AC8C  7C 19 E8 00 */	cmpw r25, r29
/* 8047AC90  7C 64 07 34 */	extsh r4, r3
/* 8047AC94  40 80 00 80 */	bge lbl_8047AD14
/* 8047AC98  3C 60 80 69 */	lis r3, aMR_force_talk_flag@ha /* 0x80689CD0@ha */
/* 8047AC9C  54 80 10 3A */	slwi r0, r4, 2
/* 8047ACA0  38 63 9C D0 */	addi r3, r3, aMR_force_talk_flag@l /* 0x80689CD0@l */
/* 8047ACA4  AB 3E 03 EC */	lha r25, 0x3ec(r30)
/* 8047ACA8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8047ACAC  38 00 00 00 */	li r0, 0
/* 8047ACB0  B0 1A 00 00 */	sth r0, 0(r26)
/* 8047ACB4  20 03 00 00 */	subfic r0, r3, 0
/* 8047ACB8  7C 60 01 10 */	subfe r3, r0, r0
/* 8047ACBC  B0 9E 03 EE */	sth r4, 0x3ee(r30)
/* 8047ACC0  3B 43 00 09 */	addi r26, r3, 9
/* 8047ACC4  4B F1 F6 75 */	bl mDemo_CheckDemo
/* 8047ACC8  2C 03 00 00 */	cmpwi r3, 0
/* 8047ACCC  40 82 00 3C */	bne lbl_8047AD08
/* 8047ACD0  2C 1A 00 08 */	cmpwi r26, 8
/* 8047ACD4  3C 60 80 47 */	lis r3, aMR_report_set@ha /* 0x80476C78@ha */
/* 8047ACD8  38 A3 6C 78 */	addi r5, r3, aMR_report_set@l /* 0x80476C78@l */
/* 8047ACDC  7F C4 F3 78 */	mr r4, r30
/* 8047ACE0  7F 43 D3 78 */	mr r3, r26
/* 8047ACE4  40 82 00 0C */	bne lbl_8047ACF0
/* 8047ACE8  3C A0 80 47 */	lis r5, aMR_speak_set@ha /* 0x80476C20@ha */
/* 8047ACEC  38 A5 6C 20 */	addi r5, r5, aMR_speak_set@l /* 0x80476C20@l */
lbl_8047ACF0:
/* 8047ACF0  4B F1 F4 6D */	bl mDemo_Request
/* 8047ACF4  2C 03 00 00 */	cmpwi r3, 0
/* 8047ACF8  41 82 00 10 */	beq lbl_8047AD08
/* 8047ACFC  A8 1E 03 EE */	lha r0, 0x3ee(r30)
/* 8047AD00  B0 1E 03 EC */	sth r0, 0x3ec(r30)
/* 8047AD04  48 00 00 08 */	b lbl_8047AD0C
lbl_8047AD08:
/* 8047AD08  B3 3E 03 EE */	sth r25, 0x3ee(r30)
lbl_8047AD0C:
/* 8047AD0C  38 60 00 00 */	li r3, 0
/* 8047AD10  48 00 00 20 */	b lbl_8047AD30
lbl_8047AD14:
/* 8047AD14  7F 63 DB 78 */	mr r3, r27
/* 8047AD18  7F C4 F3 78 */	mr r4, r30
/* 8047AD1C  4B FF FD 9D */	bl aMR_PreparePickingUpFurniture
/* 8047AD20  B3 9A 00 00 */	sth r28, 0(r26)
/* 8047AD24  38 60 00 01 */	li r3, 1
/* 8047AD28  48 00 00 08 */	b lbl_8047AD30
lbl_8047AD2C:
/* 8047AD2C  38 60 00 00 */	li r3, 0
lbl_8047AD30:
/* 8047AD30  39 61 00 30 */	addi r11, r1, 0x30
/* 8047AD34  4B C2 01 DD */	bl func_8009AF10
/* 8047AD38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047AD3C  7C 08 03 A6 */	mtlr r0
/* 8047AD40  38 21 00 30 */	addi r1, r1, 0x30
/* 8047AD44  4E 80 00 20 */	blr 
