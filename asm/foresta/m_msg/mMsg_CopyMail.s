lbl_803C1CB4:
/* 803C1CB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C1CB8  7C 08 02 A6 */	mflr r0
/* 803C1CBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1CC0  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1CC4  4B CD 91 FD */	bl func_8009AEC0
/* 803C1CC8  7C 9D 23 79 */	or. r29, r4, r4
/* 803C1CCC  7C 78 1B 78 */	mr r24, r3
/* 803C1CD0  7C B9 2B 78 */	mr r25, r5
/* 803C1CD4  7C DA 33 78 */	mr r26, r6
/* 803C1CD8  7C FC 3B 78 */	mr r28, r7
/* 803C1CDC  7D 1B 43 78 */	mr r27, r8
/* 803C1CE0  41 80 00 0C */	blt lbl_803C1CEC
/* 803C1CE4  2C 1D 00 01 */	cmpwi r29, 1
/* 803C1CE8  41 80 00 08 */	blt lbl_803C1CF0
lbl_803C1CEC:
/* 803C1CEC  3B A0 00 00 */	li r29, 0
lbl_803C1CF0:
/* 803C1CF0  7F 23 CB 78 */	mr r3, r25
/* 803C1CF4  7F 44 D3 78 */	mr r4, r26
/* 803C1CF8  4B FE DB 11 */	bl mFont_CodeSize_idx_get
/* 803C1CFC  1C BD 00 84 */	mulli r5, r29, 0x84
/* 803C1D00  7C 7F 1B 78 */	mr r31, r3
/* 803C1D04  38 80 00 84 */	li r4, 0x84
/* 803C1D08  3B C5 02 2C */	addi r30, r5, 0x22c
/* 803C1D0C  7F D8 F2 14 */	add r30, r24, r30
/* 803C1D10  7F C3 F3 78 */	mr r3, r30
/* 803C1D14  4B FF EF 51 */	bl mMsg_Get_Length_String
/* 803C1D18  7C 60 1B 78 */	mr r0, r3
/* 803C1D1C  7F 23 CB 78 */	mr r3, r25
/* 803C1D20  7C 1D 03 78 */	mr r29, r0
/* 803C1D24  7F 86 E3 78 */	mr r6, r28
/* 803C1D28  7C 9A EA 14 */	add r4, r26, r29
/* 803C1D2C  7C BA FA 14 */	add r5, r26, r31
/* 803C1D30  38 E0 00 01 */	li r7, 1
/* 803C1D34  4B FF F0 41 */	bl mMsg_MoveDataCut
/* 803C1D38  7F F9 D2 14 */	add r31, r25, r26
/* 803C1D3C  7C 7C 1B 78 */	mr r28, r3
/* 803C1D40  7F C4 F3 78 */	mr r4, r30
/* 803C1D44  7F A5 EB 78 */	mr r5, r29
/* 803C1D48  7F E3 FB 78 */	mr r3, r31
/* 803C1D4C  4B FF F0 F1 */	bl mMsg_CopyString
/* 803C1D50  28 1B 00 00 */	cmplwi r27, 0
/* 803C1D54  41 82 00 10 */	beq lbl_803C1D64
/* 803C1D58  88 7F 00 00 */	lbz r3, 0(r31)
/* 803C1D5C  4B FE D8 ED */	bl mFont_small_to_capital
/* 803C1D60  98 7F 00 00 */	stb r3, 0(r31)
lbl_803C1D64:
/* 803C1D64  7F 83 E3 78 */	mr r3, r28
/* 803C1D68  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1D6C  4B CD 91 A1 */	bl func_8009AF0C
/* 803C1D70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C1D74  7C 08 03 A6 */	mtlr r0
/* 803C1D78  38 21 00 30 */	addi r1, r1, 0x30
/* 803C1D7C  4E 80 00 20 */	blr 
