lbl_803C0F44:
/* 803C0F44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C0F48  7C 08 02 A6 */	mflr r0
/* 803C0F4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C0F50  39 61 00 30 */	addi r11, r1, 0x30
/* 803C0F54  4B CD 9F 71 */	bl func_8009AEC4
/* 803C0F58  7C 79 1B 78 */	mr r25, r3
/* 803C0F5C  7C 9A 23 78 */	mr r26, r4
/* 803C0F60  7C BC 2B 78 */	mr r28, r5
/* 803C0F64  7C DB 33 78 */	mr r27, r6
/* 803C0F68  4B FE E8 A1 */	bl mFont_CodeSize_idx_get
/* 803C0F6C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C0F70  7C 7F 1B 78 */	mr r31, r3
/* 803C0F74  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803C0F78  38 80 00 08 */	li r4, 8
/* 803C0F7C  3C 63 00 02 */	addis r3, r3, 2
/* 803C0F80  83 C3 61 3C */	lwz r30, 0x613c(r3)
/* 803C0F84  7F C3 F3 78 */	mr r3, r30
/* 803C0F88  4B FF FC DD */	bl mMsg_Get_Length_String
/* 803C0F8C  7C 60 1B 78 */	mr r0, r3
/* 803C0F90  7F 23 CB 78 */	mr r3, r25
/* 803C0F94  7C 1D 03 78 */	mr r29, r0
/* 803C0F98  7F 86 E3 78 */	mr r6, r28
/* 803C0F9C  7C 9A EA 14 */	add r4, r26, r29
/* 803C0FA0  7C BA FA 14 */	add r5, r26, r31
/* 803C0FA4  38 E0 00 00 */	li r7, 0
/* 803C0FA8  4B FF FD CD */	bl mMsg_MoveDataCut
/* 803C0FAC  7F F9 D2 14 */	add r31, r25, r26
/* 803C0FB0  7C 7C 1B 78 */	mr r28, r3
/* 803C0FB4  7F C4 F3 78 */	mr r4, r30
/* 803C0FB8  7F A5 EB 78 */	mr r5, r29
/* 803C0FBC  7F E3 FB 78 */	mr r3, r31
/* 803C0FC0  4B FF FE 7D */	bl mMsg_CopyString
/* 803C0FC4  28 1B 00 00 */	cmplwi r27, 0
/* 803C0FC8  41 82 00 10 */	beq lbl_803C0FD8
/* 803C0FCC  88 7F 00 00 */	lbz r3, 0(r31)
/* 803C0FD0  4B FE E6 79 */	bl mFont_small_to_capital
/* 803C0FD4  98 7F 00 00 */	stb r3, 0(r31)
lbl_803C0FD8:
/* 803C0FD8  7F 83 E3 78 */	mr r3, r28
/* 803C0FDC  39 61 00 30 */	addi r11, r1, 0x30
/* 803C0FE0  4B CD 9F 31 */	bl func_8009AF10
/* 803C0FE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C0FE8  7C 08 03 A6 */	mtlr r0
/* 803C0FEC  38 21 00 30 */	addi r1, r1, 0x30
/* 803C0FF0  4E 80 00 20 */	blr 
