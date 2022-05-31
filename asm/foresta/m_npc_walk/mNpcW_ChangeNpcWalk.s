lbl_803D7C00:
/* 803D7C00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7C04  7C 08 02 A6 */	mflr r0
/* 803D7C08  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7C0C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7C10  4B CC 32 C1 */	bl func_8009AED0
/* 803D7C14  7C 7E 1B 78 */	mr r30, r3
/* 803D7C18  7C 83 23 78 */	mr r3, r4
/* 803D7C1C  3B 80 FF FF */	li r28, -1
/* 803D7C20  38 80 00 01 */	li r4, 1
/* 803D7C24  4B FF FB F5 */	bl mNpcW_ClearNpcWalkInfo
/* 803D7C28  7F C3 F3 78 */	mr r3, r30
/* 803D7C2C  38 80 00 05 */	li r4, 5
/* 803D7C30  4B FF FC DD */	bl mNpcW_GetFreeNpcWalkInfoIdx
/* 803D7C34  2C 03 FF FF */	cmpwi r3, -1
/* 803D7C38  41 82 00 DC */	beq lbl_803D7D14
/* 803D7C3C  1C 03 00 1C */	mulli r0, r3, 0x1c
/* 803D7C40  38 80 00 01 */	li r4, 1
/* 803D7C44  7F FE 02 14 */	add r31, r30, r0
/* 803D7C48  7F E3 FB 78 */	mr r3, r31
/* 803D7C4C  4B FF FB CD */	bl mNpcW_ClearNpcWalkInfo
/* 803D7C50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D7C54  A0 9E 00 8C */	lhz r4, 0x8c(r30)
/* 803D7C58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D7C5C  3F A3 00 01 */	addis r29, r3, 1
/* 803D7C60  3B BD 74 38 */	addi r29, r29, 0x7438
/* 803D7C64  7F A3 EB 78 */	mr r3, r29
/* 803D7C68  4B FF FD 99 */	bl mNpcW_DecideNpc
/* 803D7C6C  7C 7C 1B 78 */	mr r28, r3
/* 803D7C70  2C 1C FF FF */	cmpwi r28, -1
/* 803D7C74  40 82 00 58 */	bne lbl_803D7CCC
/* 803D7C78  38 A0 00 00 */	li r5, 0
/* 803D7C7C  38 00 00 05 */	li r0, 5
/* 803D7C80  B0 BE 00 8C */	sth r5, 0x8c(r30)
/* 803D7C84  38 60 00 01 */	li r3, 1
/* 803D7C88  7C 09 03 A6 */	mtctr r0
lbl_803D7C8C:
/* 803D7C8C  38 05 00 10 */	addi r0, r5, 0x10
/* 803D7C90  7C 1E 00 2E */	lwzx r0, r30, r0
/* 803D7C94  2C 00 00 00 */	cmpwi r0, 0
/* 803D7C98  41 80 00 1C */	blt lbl_803D7CB4
/* 803D7C9C  2C 00 00 0F */	cmpwi r0, 0xf
/* 803D7CA0  40 80 00 14 */	bge lbl_803D7CB4
/* 803D7CA4  A0 9E 00 8C */	lhz r4, 0x8c(r30)
/* 803D7CA8  7C 60 00 30 */	slw r0, r3, r0
/* 803D7CAC  7C 80 03 78 */	or r0, r4, r0
/* 803D7CB0  B0 1E 00 8C */	sth r0, 0x8c(r30)
lbl_803D7CB4:
/* 803D7CB4  38 A5 00 1C */	addi r5, r5, 0x1c
/* 803D7CB8  42 00 FF D4 */	bdnz lbl_803D7C8C
/* 803D7CBC  A0 9E 00 8C */	lhz r4, 0x8c(r30)
/* 803D7CC0  7F A3 EB 78 */	mr r3, r29
/* 803D7CC4  4B FF FD 3D */	bl mNpcW_DecideNpc
/* 803D7CC8  7C 7C 1B 78 */	mr r28, r3
lbl_803D7CCC:
/* 803D7CCC  2C 1C FF FF */	cmpwi r28, -1
/* 803D7CD0  41 82 00 44 */	beq lbl_803D7D14
/* 803D7CD4  1C BC 09 88 */	mulli r5, r28, 0x988
/* 803D7CD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D7CDC  7F E3 FB 78 */	mr r3, r31
/* 803D7CE0  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803D7CE4  7C 80 2A 14 */	add r4, r0, r5
/* 803D7CE8  7F 85 E3 78 */	mr r5, r28
/* 803D7CEC  3C 84 00 01 */	addis r4, r4, 1
/* 803D7CF0  38 84 74 38 */	addi r4, r4, 0x7438
/* 803D7CF4  4B FF FE 45 */	bl mNpcW_SetNpcWalkInfo
/* 803D7CF8  38 00 00 01 */	li r0, 1
/* 803D7CFC  A0 9E 00 8C */	lhz r4, 0x8c(r30)
/* 803D7D00  7C 00 E0 30 */	slw r0, r0, r28
/* 803D7D04  7F E3 FB 78 */	mr r3, r31
/* 803D7D08  7C 80 03 78 */	or r0, r4, r0
/* 803D7D0C  B0 1E 00 8C */	sth r0, 0x8c(r30)
/* 803D7D10  48 00 06 2D */	bl mNpcW_SetGoalBlock
lbl_803D7D14:
/* 803D7D14  7F 83 E3 78 */	mr r3, r28
/* 803D7D18  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7D1C  4B CC 32 01 */	bl func_8009AF1C
/* 803D7D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D7D24  7C 08 03 A6 */	mtlr r0
/* 803D7D28  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7D2C  4E 80 00 20 */	blr 
