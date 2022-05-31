lbl_803C0FF4:
/* 803C0FF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C0FF8  7C 08 02 A6 */	mflr r0
/* 803C0FFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1000  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1004  4B CD 9E C5 */	bl func_8009AEC8
/* 803C1008  7C 9A 23 78 */	mr r26, r4
/* 803C100C  7C BB 2B 78 */	mr r27, r5
/* 803C1010  7C 7E 1B 78 */	mr r30, r3
/* 803C1014  7C DD 33 78 */	mr r29, r6
/* 803C1018  7C FC 3B 78 */	mr r28, r7
/* 803C101C  7F 43 D3 78 */	mr r3, r26
/* 803C1020  7F 64 DB 78 */	mr r4, r27
/* 803C1024  4B FE E7 E5 */	bl mFont_CodeSize_idx_get
/* 803C1028  28 1E 00 00 */	cmplwi r30, 0
/* 803C102C  7C 7F 1B 78 */	mr r31, r3
/* 803C1030  41 82 00 24 */	beq lbl_803C1054
/* 803C1034  7F C4 F3 78 */	mr r4, r30
/* 803C1038  38 61 00 08 */	addi r3, r1, 8
/* 803C103C  48 01 0B 55 */	bl mNpc_GetNpcWorldName
/* 803C1040  38 61 00 08 */	addi r3, r1, 8
/* 803C1044  38 80 00 08 */	li r4, 8
/* 803C1048  4B FF FC 1D */	bl mMsg_Get_Length_String
/* 803C104C  7C 7E 1B 78 */	mr r30, r3
/* 803C1050  48 00 00 08 */	b lbl_803C1058
lbl_803C1054:
/* 803C1054  3B C0 00 00 */	li r30, 0
lbl_803C1058:
/* 803C1058  7F 43 D3 78 */	mr r3, r26
/* 803C105C  7F A6 EB 78 */	mr r6, r29
/* 803C1060  7C 9B F2 14 */	add r4, r27, r30
/* 803C1064  7C BB FA 14 */	add r5, r27, r31
/* 803C1068  38 E0 00 00 */	li r7, 0
/* 803C106C  4B FF FD 09 */	bl mMsg_MoveDataCut
/* 803C1070  7F FA DA 14 */	add r31, r26, r27
/* 803C1074  7C 7D 1B 78 */	mr r29, r3
/* 803C1078  7F C5 F3 78 */	mr r5, r30
/* 803C107C  38 81 00 08 */	addi r4, r1, 8
/* 803C1080  7F E3 FB 78 */	mr r3, r31
/* 803C1084  4B FF FD B9 */	bl mMsg_CopyString
/* 803C1088  28 1C 00 00 */	cmplwi r28, 0
/* 803C108C  41 82 00 10 */	beq lbl_803C109C
/* 803C1090  88 7F 00 00 */	lbz r3, 0(r31)
/* 803C1094  4B FE E5 B5 */	bl mFont_small_to_capital
/* 803C1098  98 7F 00 00 */	stb r3, 0(r31)
lbl_803C109C:
/* 803C109C  7F A3 EB 78 */	mr r3, r29
/* 803C10A0  39 61 00 30 */	addi r11, r1, 0x30
/* 803C10A4  4B CD 9E 71 */	bl func_8009AF14
/* 803C10A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C10AC  7C 08 03 A6 */	mtlr r0
/* 803C10B0  38 21 00 30 */	addi r1, r1, 0x30
/* 803C10B4  4E 80 00 20 */	blr 
