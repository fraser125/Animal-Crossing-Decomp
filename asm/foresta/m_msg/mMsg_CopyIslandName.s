lbl_803C194C:
/* 803C194C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C1950  7C 08 02 A6 */	mflr r0
/* 803C1954  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1958  39 61 00 30 */	addi r11, r1, 0x30
/* 803C195C  4B CD 95 69 */	bl func_8009AEC4
/* 803C1960  7C 79 1B 78 */	mr r25, r3
/* 803C1964  7C 9A 23 78 */	mr r26, r4
/* 803C1968  7C BE 2B 78 */	mr r30, r5
/* 803C196C  7C DB 33 78 */	mr r27, r6
/* 803C1970  4B FE DE 99 */	bl mFont_CodeSize_idx_get
/* 803C1974  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C1978  7C 7F 1B 78 */	mr r31, r3
/* 803C197C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803C1980  38 80 00 08 */	li r4, 8
/* 803C1984  3F A3 00 02 */	addis r29, r3, 2
/* 803C1988  3B BD 25 40 */	addi r29, r29, 0x2540
/* 803C198C  7F A3 EB 78 */	mr r3, r29
/* 803C1990  4B FF F2 D5 */	bl mMsg_Get_Length_String
/* 803C1994  7C 60 1B 78 */	mr r0, r3
/* 803C1998  7F 23 CB 78 */	mr r3, r25
/* 803C199C  7C 1C 03 78 */	mr r28, r0
/* 803C19A0  7F C6 F3 78 */	mr r6, r30
/* 803C19A4  7C 9A E2 14 */	add r4, r26, r28
/* 803C19A8  7C BA FA 14 */	add r5, r26, r31
/* 803C19AC  38 E0 00 00 */	li r7, 0
/* 803C19B0  4B FF F3 C5 */	bl mMsg_MoveDataCut
/* 803C19B4  7F F9 D2 14 */	add r31, r25, r26
/* 803C19B8  7C 7E 1B 78 */	mr r30, r3
/* 803C19BC  7F A4 EB 78 */	mr r4, r29
/* 803C19C0  7F 85 E3 78 */	mr r5, r28
/* 803C19C4  7F E3 FB 78 */	mr r3, r31
/* 803C19C8  4B FF F4 75 */	bl mMsg_CopyString
/* 803C19CC  28 1B 00 00 */	cmplwi r27, 0
/* 803C19D0  41 82 00 10 */	beq lbl_803C19E0
/* 803C19D4  88 7F 00 00 */	lbz r3, 0(r31)
/* 803C19D8  4B FE DC 71 */	bl mFont_small_to_capital
/* 803C19DC  98 7F 00 00 */	stb r3, 0(r31)
lbl_803C19E0:
/* 803C19E0  7F C3 F3 78 */	mr r3, r30
/* 803C19E4  39 61 00 30 */	addi r11, r1, 0x30
/* 803C19E8  4B CD 95 29 */	bl func_8009AF10
/* 803C19EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C19F0  7C 08 03 A6 */	mtlr r0
/* 803C19F4  38 21 00 30 */	addi r1, r1, 0x30
/* 803C19F8  4E 80 00 20 */	blr 
