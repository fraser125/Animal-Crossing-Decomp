lbl_803C1B60:
/* 803C1B60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803C1B64  7C 08 02 A6 */	mflr r0
/* 803C1B68  90 01 00 54 */	stw r0, 0x54(r1)
/* 803C1B6C  39 61 00 50 */	addi r11, r1, 0x50
/* 803C1B70  4B CD 93 45 */	bl func_8009AEB4
/* 803C1B74  7C 96 23 79 */	or. r22, r4, r4
/* 803C1B78  7C 75 1B 78 */	mr r21, r3
/* 803C1B7C  7C BD 2B 78 */	mr r29, r5
/* 803C1B80  7C DE 33 78 */	mr r30, r6
/* 803C1B84  7C FA 3B 78 */	mr r26, r7
/* 803C1B88  7D 17 43 78 */	mr r23, r8
/* 803C1B8C  7D 3F 4B 78 */	mr r31, r9
/* 803C1B90  41 80 00 0C */	blt lbl_803C1B9C
/* 803C1B94  2C 16 00 05 */	cmpwi r22, 5
/* 803C1B98  41 80 00 08 */	blt lbl_803C1BA0
lbl_803C1B9C:
/* 803C1B9C  3A C0 00 00 */	li r22, 0
lbl_803C1BA0:
/* 803C1BA0  7F A3 EB 78 */	mr r3, r29
/* 803C1BA4  7F C4 F3 78 */	mr r4, r30
/* 803C1BA8  4B FE DC 61 */	bl mFont_CodeSize_idx_get
/* 803C1BAC  56 C4 20 36 */	slwi r4, r22, 4
/* 803C1BB0  7C 7C 1B 78 */	mr r28, r3
/* 803C1BB4  3B 24 01 C8 */	addi r25, r4, 0x1c8
/* 803C1BB8  38 80 00 10 */	li r4, 0x10
/* 803C1BBC  7F 35 CA 14 */	add r25, r21, r25
/* 803C1BC0  7F 23 CB 78 */	mr r3, r25
/* 803C1BC4  4B FF F0 A1 */	bl mMsg_Get_Length_String
/* 803C1BC8  7C 60 1B 78 */	mr r0, r3
/* 803C1BCC  7F A3 EB 78 */	mr r3, r29
/* 803C1BD0  7C 18 03 78 */	mr r24, r0
/* 803C1BD4  7F 46 D3 78 */	mr r6, r26
/* 803C1BD8  7C 9E C2 14 */	add r4, r30, r24
/* 803C1BDC  7C BE E2 14 */	add r5, r30, r28
/* 803C1BE0  38 E0 00 00 */	li r7, 0
/* 803C1BE4  4B FF F1 91 */	bl mMsg_MoveDataCut
/* 803C1BE8  7F 7D F2 14 */	add r27, r29, r30
/* 803C1BEC  7C 7A 1B 78 */	mr r26, r3
/* 803C1BF0  7F 24 CB 78 */	mr r4, r25
/* 803C1BF4  7F 05 C3 78 */	mr r5, r24
/* 803C1BF8  7F 63 DB 78 */	mr r3, r27
/* 803C1BFC  4B FF F2 41 */	bl mMsg_CopyString
/* 803C1C00  2C 17 00 05 */	cmpwi r23, 5
/* 803C1C04  41 82 00 0C */	beq lbl_803C1C10
/* 803C1C08  7E E4 BB 78 */	mr r4, r23
/* 803C1C0C  48 00 00 10 */	b lbl_803C1C1C
lbl_803C1C10:
/* 803C1C10  56 C0 10 3A */	slwi r0, r22, 2
/* 803C1C14  7C 75 02 14 */	add r3, r21, r0
/* 803C1C18  80 83 02 18 */	lwz r4, 0x218(r3)
lbl_803C1C1C:
/* 803C1C1C  2C 04 00 00 */	cmpwi r4, 0
/* 803C1C20  41 82 00 64 */	beq lbl_803C1C84
/* 803C1C24  38 61 00 08 */	addi r3, r1, 8
/* 803C1C28  38 A4 07 37 */	addi r5, r4, 0x737
/* 803C1C2C  38 80 00 10 */	li r4, 0x10
/* 803C1C30  48 02 D0 9D */	bl mString_Load_StringFromRom
/* 803C1C34  38 61 00 08 */	addi r3, r1, 8
/* 803C1C38  38 80 00 10 */	li r4, 0x10
/* 803C1C3C  4B FF F0 29 */	bl mMsg_Get_Length_String
/* 803C1C40  7C 7C 1B 78 */	mr r28, r3
/* 803C1C44  38 A1 00 08 */	addi r5, r1, 8
/* 803C1C48  38 00 00 20 */	li r0, 0x20
/* 803C1C4C  7F A3 EB 78 */	mr r3, r29
/* 803C1C50  38 9C 00 01 */	addi r4, r28, 1
/* 803C1C54  7C 05 E1 AE */	stbx r0, r5, r28
/* 803C1C58  7F C5 F3 78 */	mr r5, r30
/* 803C1C5C  7F 46 D3 78 */	mr r6, r26
/* 803C1C60  7C 9E 22 14 */	add r4, r30, r4
/* 803C1C64  38 E0 00 00 */	li r7, 0
/* 803C1C68  4B FF F1 0D */	bl mMsg_MoveDataCut
/* 803C1C6C  7C 60 1B 78 */	mr r0, r3
/* 803C1C70  7F 63 DB 78 */	mr r3, r27
/* 803C1C74  7C 1A 03 78 */	mr r26, r0
/* 803C1C78  38 81 00 08 */	addi r4, r1, 8
/* 803C1C7C  38 BC 00 01 */	addi r5, r28, 1
/* 803C1C80  4B FF F1 BD */	bl mMsg_CopyString
lbl_803C1C84:
/* 803C1C84  28 1F 00 00 */	cmplwi r31, 0
/* 803C1C88  41 82 00 10 */	beq lbl_803C1C98
/* 803C1C8C  88 7B 00 00 */	lbz r3, 0(r27)
/* 803C1C90  4B FE D9 B9 */	bl mFont_small_to_capital
/* 803C1C94  98 7B 00 00 */	stb r3, 0(r27)
lbl_803C1C98:
/* 803C1C98  7F 43 D3 78 */	mr r3, r26
/* 803C1C9C  39 61 00 50 */	addi r11, r1, 0x50
/* 803C1CA0  4B CD 92 61 */	bl func_8009AF00
/* 803C1CA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803C1CA8  7C 08 03 A6 */	mtlr r0
/* 803C1CAC  38 21 00 50 */	addi r1, r1, 0x50
/* 803C1CB0  4E 80 00 20 */	blr 
