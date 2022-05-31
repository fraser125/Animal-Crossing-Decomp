lbl_804917A4:
/* 804917A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804917A8  7C 08 02 A6 */	mflr r0
/* 804917AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804917B0  38 A0 00 00 */	li r5, 0
/* 804917B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804917B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804917BC  93 C1 00 08 */	stw r30, 8(r1)
/* 804917C0  7C 7E 1B 78 */	mr r30, r3
/* 804917C4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804917C8  38 80 00 01 */	li r4, 1
/* 804917CC  3F E3 00 02 */	addis r31, r3, 2
/* 804917D0  7F C6 F3 78 */	mr r6, r30
/* 804917D4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 804917D8  4B F4 EF FD */	bl mPr_GetPossessionItemIdxFGTypeWithCond_cancel
/* 804917DC  2C 03 FF FF */	cmpwi r3, -1
/* 804917E0  40 82 00 50 */	bne lbl_80491830
/* 804917E4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 804917E8  7F C6 F3 78 */	mr r6, r30
/* 804917EC  38 80 00 03 */	li r4, 3
/* 804917F0  38 A0 00 00 */	li r5, 0
/* 804917F4  4B F4 EF E1 */	bl mPr_GetPossessionItemIdxFGTypeWithCond_cancel
/* 804917F8  2C 03 FF FF */	cmpwi r3, -1
/* 804917FC  40 82 00 34 */	bne lbl_80491830
/* 80491800  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80491804  7F C6 F3 78 */	mr r6, r30
/* 80491808  38 80 00 06 */	li r4, 6
/* 8049180C  38 A0 00 00 */	li r5, 0
/* 80491810  4B F4 F0 91 */	bl mPr_GetPossessionItemIdxItem1CategoryWithCond_cancel
/* 80491814  2C 03 FF FF */	cmpwi r3, -1
/* 80491818  40 82 00 18 */	bne lbl_80491830
/* 8049181C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80491820  7F C6 F3 78 */	mr r6, r30
/* 80491824  38 80 00 07 */	li r4, 7
/* 80491828  38 A0 00 00 */	li r5, 0
/* 8049182C  4B F4 F0 75 */	bl mPr_GetPossessionItemIdxItem1CategoryWithCond_cancel
lbl_80491830:
/* 80491830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491838  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049183C  7C 08 03 A6 */	mtlr r0
/* 80491840  38 21 00 10 */	addi r1, r1, 0x10
/* 80491844  4E 80 00 20 */	blr 
