lbl_803C19FC:
/* 803C19FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C1A00  7C 08 02 A6 */	mflr r0
/* 803C1A04  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C1A08  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1A0C  4B CD 94 C1 */	bl func_8009AECC
/* 803C1A10  7C 9B 23 78 */	mr r27, r4
/* 803C1A14  7C BC 2B 78 */	mr r28, r5
/* 803C1A18  7C 7E 1B 78 */	mr r30, r3
/* 803C1A1C  7C DD 33 78 */	mr r29, r6
/* 803C1A20  7F 63 DB 78 */	mr r3, r27
/* 803C1A24  7F 84 E3 78 */	mr r4, r28
/* 803C1A28  4B FE DD E1 */	bl mFont_CodeSize_idx_get
/* 803C1A2C  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C1A30  7C 7F 1B 78 */	mr r31, r3
/* 803C1A34  38 61 00 08 */	addi r3, r1, 8
/* 803C1A38  38 80 00 0F */	li r4, 0xf
/* 803C1A3C  54 00 7F FE */	rlwinm r0, r0, 0xf, 0x1f, 0x1f
/* 803C1A40  7C A0 00 D0 */	neg r5, r0
/* 803C1A44  38 A5 00 02 */	addi r5, r5, 2
/* 803C1A48  48 02 D2 85 */	bl mString_Load_StringFromRom
/* 803C1A4C  38 61 00 08 */	addi r3, r1, 8
/* 803C1A50  38 80 00 0F */	li r4, 0xf
/* 803C1A54  4B FF F2 11 */	bl mMsg_Get_Length_String
/* 803C1A58  7C 60 1B 78 */	mr r0, r3
/* 803C1A5C  7F 63 DB 78 */	mr r3, r27
/* 803C1A60  7C 1E 03 78 */	mr r30, r0
/* 803C1A64  7F A6 EB 78 */	mr r6, r29
/* 803C1A68  7C 9C F2 14 */	add r4, r28, r30
/* 803C1A6C  7C BC FA 14 */	add r5, r28, r31
/* 803C1A70  38 E0 00 00 */	li r7, 0
/* 803C1A74  4B FF F3 01 */	bl mMsg_MoveDataCut
/* 803C1A78  7C 7F 1B 78 */	mr r31, r3
/* 803C1A7C  7F C5 F3 78 */	mr r5, r30
/* 803C1A80  7C 7B E2 14 */	add r3, r27, r28
/* 803C1A84  38 81 00 08 */	addi r4, r1, 8
/* 803C1A88  4B FF F3 B5 */	bl mMsg_CopyString
/* 803C1A8C  7F E3 FB 78 */	mr r3, r31
/* 803C1A90  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1A94  4B CD 94 85 */	bl func_8009AF18
/* 803C1A98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C1A9C  7C 08 03 A6 */	mtlr r0
/* 803C1AA0  38 21 00 30 */	addi r1, r1, 0x30
/* 803C1AA4  4E 80 00 20 */	blr 
