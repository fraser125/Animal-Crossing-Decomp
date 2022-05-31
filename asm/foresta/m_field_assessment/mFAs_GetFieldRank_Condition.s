lbl_803A1F50:
/* 803A1F50  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803A1F54  7C 08 02 A6 */	mflr r0
/* 803A1F58  90 01 00 54 */	stw r0, 0x54(r1)
/* 803A1F5C  39 61 00 50 */	addi r11, r1, 0x50
/* 803A1F60  4B CF 8F 71 */	bl func_8009AED0
/* 803A1F64  38 00 00 04 */	li r0, 4
/* 803A1F68  7C 9C 23 78 */	mr r28, r4
/* 803A1F6C  90 01 00 08 */	stw r0, 8(r1)
/* 803A1F70  38 00 00 00 */	li r0, 0
/* 803A1F74  7C 7F 1B 78 */	mr r31, r3
/* 803A1F78  7C BD 2B 78 */	mr r29, r5
/* 803A1F7C  90 04 00 00 */	stw r0, 0(r4)
/* 803A1F80  38 61 00 0C */	addi r3, r1, 0xc
/* 803A1F84  38 80 00 28 */	li r4, 0x28
/* 803A1F88  90 05 00 00 */	stw r0, 0(r5)
/* 803A1F8C  4B CB B0 DD */	bl bzero
/* 803A1F90  3C 80 80 65 */	lis r4, block_kind@ha /* 0x806534E0@ha */
/* 803A1F94  38 61 00 0C */	addi r3, r1, 0xc
/* 803A1F98  38 84 34 E0 */	addi r4, r4, block_kind@l /* 0x806534E0@l */
/* 803A1F9C  38 A0 00 05 */	li r5, 5
/* 803A1FA0  48 00 44 D5 */	bl mFI_GetSpecialBlockNum
/* 803A1FA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A1FA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A1FAC  3F C3 00 02 */	addis r30, r3, 2
/* 803A1FB0  88 1E 13 94 */	lbz r0, 0x1394(r30)
/* 803A1FB4  28 00 00 01 */	cmplwi r0, 1
/* 803A1FB8  40 82 00 38 */	bne lbl_803A1FF0
/* 803A1FBC  7F 83 E3 78 */	mr r3, r28
/* 803A1FC0  7F A4 EB 78 */	mr r4, r29
/* 803A1FC4  4B FF FD C5 */	bl mFAs_GetDustNum
/* 803A1FC8  2C 03 00 00 */	cmpwi r3, 0
/* 803A1FCC  40 82 00 10 */	bne lbl_803A1FDC
/* 803A1FD0  38 00 00 00 */	li r0, 0
/* 803A1FD4  98 1E 13 94 */	stb r0, 0x1394(r30)
/* 803A1FD8  48 00 00 0C */	b lbl_803A1FE4
lbl_803A1FDC:
/* 803A1FDC  38 00 00 00 */	li r0, 0
/* 803A1FE0  90 01 00 08 */	stw r0, 8(r1)
lbl_803A1FE4:
/* 803A1FE4  3C 60 81 16 */	lis r3, data_811678C8@ha /* 0x811678C8@ha */
/* 803A1FE8  38 00 00 00 */	li r0, 0
/* 803A1FEC  90 03 78 C8 */	stw r0, data_811678C8@l(r3)  /* 0x811678C8@l */
lbl_803A1FF0:
/* 803A1FF0  88 1E 13 94 */	lbz r0, 0x1394(r30)
/* 803A1FF4  28 00 00 00 */	cmplwi r0, 0
/* 803A1FF8  40 82 00 20 */	bne lbl_803A2018
/* 803A1FFC  7F 84 E3 78 */	mr r4, r28
/* 803A2000  7F A5 EB 78 */	mr r5, r29
/* 803A2004  38 61 00 08 */	addi r3, r1, 8
/* 803A2008  38 C1 00 0C */	addi r6, r1, 0xc
/* 803A200C  4B FF F9 F5 */	bl mFAs_GetFieldGoodBlockNum_common
/* 803A2010  3C 80 81 16 */	lis r4, data_811678C8@ha /* 0x811678C8@ha */
/* 803A2014  90 64 78 C8 */	stw r3, data_811678C8@l(r4)  /* 0x811678C8@l */
lbl_803A2018:
/* 803A2018  3C 60 81 16 */	lis r3, data_811678C8@ha /* 0x811678C8@ha */
/* 803A201C  80 03 78 C8 */	lwz r0, data_811678C8@l(r3)  /* 0x811678C8@l */
/* 803A2020  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803A2024  4B FF FD 35 */	bl mFAs_GetFieldRankbyFGoodBlock
/* 803A2028  3C 80 81 16 */	lis r4, l_field_assessment_rank@ha /* 0x811678CC@ha */
/* 803A202C  94 64 78 CC */	stwu r3, l_field_assessment_rank@l(r4)  /* 0x811678CC@l */
/* 803A2030  90 7F 00 00 */	stw r3, 0(r31)
/* 803A2034  80 64 00 00 */	lwz r3, 0(r4)
/* 803A2038  4B FF F4 79 */	bl mFAs_SetGoodField
/* 803A203C  80 61 00 08 */	lwz r3, 8(r1)
/* 803A2040  39 61 00 50 */	addi r11, r1, 0x50
/* 803A2044  4B CF 8E D9 */	bl func_8009AF1C
/* 803A2048  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803A204C  7C 08 03 A6 */	mtlr r0
/* 803A2050  38 21 00 50 */	addi r1, r1, 0x50
/* 803A2054  4E 80 00 20 */	blr 
