lbl_803C1458:
/* 803C1458  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C145C  7C 08 02 A6 */	mflr r0
/* 803C1460  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1464  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1468  4B CD 9A 65 */	bl func_8009AECC
/* 803C146C  7C 7B 1B 78 */	mr r27, r3
/* 803C1470  7C 9C 23 78 */	mr r28, r4
/* 803C1474  7C BD 2B 78 */	mr r29, r5
/* 803C1478  4B FE E3 91 */	bl mFont_CodeSize_idx_get
/* 803C147C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C1480  7C 7F 1B 78 */	mr r31, r3
/* 803C1484  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C1488  38 61 00 08 */	addi r3, r1, 8
/* 803C148C  3C 84 00 02 */	addis r4, r4, 2
/* 803C1490  88 84 61 21 */	lbz r4, 0x6121(r4)
/* 803C1494  48 02 DC 01 */	bl mString_Load_MinStringFromRom
/* 803C1498  7C 60 1B 78 */	mr r0, r3
/* 803C149C  7F 63 DB 78 */	mr r3, r27
/* 803C14A0  7C 1E 03 78 */	mr r30, r0
/* 803C14A4  7F A6 EB 78 */	mr r6, r29
/* 803C14A8  7C 9C F2 14 */	add r4, r28, r30
/* 803C14AC  7C BC FA 14 */	add r5, r28, r31
/* 803C14B0  38 E0 00 00 */	li r7, 0
/* 803C14B4  4B FF F8 C1 */	bl mMsg_MoveDataCut
/* 803C14B8  7F C5 F3 78 */	mr r5, r30
/* 803C14BC  7C 7E 1B 78 */	mr r30, r3
/* 803C14C0  7C 7B E2 14 */	add r3, r27, r28
/* 803C14C4  38 81 00 08 */	addi r4, r1, 8
/* 803C14C8  4B FF F9 75 */	bl mMsg_CopyString
/* 803C14CC  7F C3 F3 78 */	mr r3, r30
/* 803C14D0  39 61 00 30 */	addi r11, r1, 0x30
/* 803C14D4  4B CD 9A 45 */	bl func_8009AF18
/* 803C14D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C14DC  7C 08 03 A6 */	mtlr r0
/* 803C14E0  38 21 00 30 */	addi r1, r1, 0x30
/* 803C14E4  4E 80 00 20 */	blr 
