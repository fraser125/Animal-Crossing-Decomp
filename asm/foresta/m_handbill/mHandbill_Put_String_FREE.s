lbl_803B1B48:
/* 803B1B48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803B1B4C  7C 08 02 A6 */	mflr r0
/* 803B1B50  90 01 00 54 */	stw r0, 0x54(r1)
/* 803B1B54  39 61 00 50 */	addi r11, r1, 0x50
/* 803B1B58  4B CE 93 65 */	bl func_8009AEBC
/* 803B1B5C  7C FD 3B 79 */	or. r29, r7, r7
/* 803B1B60  7C 7A 1B 78 */	mr r26, r3
/* 803B1B64  7C 9B 23 78 */	mr r27, r4
/* 803B1B68  7C BC 2B 78 */	mr r28, r5
/* 803B1B6C  7C D7 33 78 */	mr r23, r6
/* 803B1B70  7D 1F 43 78 */	mr r31, r8
/* 803B1B74  41 80 00 0C */	blt lbl_803B1B80
/* 803B1B78  2C 1D 00 14 */	cmpwi r29, 0x14
/* 803B1B7C  41 80 00 08 */	blt lbl_803B1B84
lbl_803B1B80:
/* 803B1B80  3B A0 00 00 */	li r29, 0
lbl_803B1B84:
/* 803B1B84  7F 43 D3 78 */	mr r3, r26
/* 803B1B88  7F 84 E3 78 */	mr r4, r28
/* 803B1B8C  4B FF DC 7D */	bl mFont_CodeSize_idx_get
/* 803B1B90  3C 80 81 16 */	lis r4, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B1B94  57 A5 20 36 */	slwi r5, r29, 4
/* 803B1B98  38 04 7D D8 */	addi r0, r4, mHandbill_data@l /* 0x81167DD8@l */
/* 803B1B9C  7C 7E 1B 78 */	mr r30, r3
/* 803B1BA0  7F 20 2A 14 */	add r25, r0, r5
/* 803B1BA4  38 80 00 10 */	li r4, 0x10
/* 803B1BA8  7F 23 CB 78 */	mr r3, r25
/* 803B1BAC  48 00 F0 B9 */	bl mMsg_Get_Length_String
/* 803B1BB0  7C 60 1B 78 */	mr r0, r3
/* 803B1BB4  7F 43 D3 78 */	mr r3, r26
/* 803B1BB8  7C 18 03 78 */	mr r24, r0
/* 803B1BBC  7F 64 DB 78 */	mr r4, r27
/* 803B1BC0  7E E7 BB 78 */	mr r7, r23
/* 803B1BC4  7F E8 FB 78 */	mr r8, r31
/* 803B1BC8  7C BC C2 14 */	add r5, r28, r24
/* 803B1BCC  7C DC F2 14 */	add r6, r28, r30
/* 803B1BD0  4B FF FE 91 */	bl mHandbill_MoveDataCut
/* 803B1BD4  7C 7E 1B 78 */	mr r30, r3
/* 803B1BD8  7C 1E D8 00 */	cmpw r30, r27
/* 803B1BDC  41 80 00 14 */	blt lbl_803B1BF0
/* 803B1BE0  7C 1C D8 50 */	subf r0, r28, r27
/* 803B1BE4  7C 18 00 00 */	cmpw r24, r0
/* 803B1BE8  40 81 00 08 */	ble lbl_803B1BF0
/* 803B1BEC  7C 18 03 78 */	mr r24, r0
lbl_803B1BF0:
/* 803B1BF0  7F FA E2 14 */	add r31, r26, r28
/* 803B1BF4  7F 24 CB 78 */	mr r4, r25
/* 803B1BF8  7F E3 FB 78 */	mr r3, r31
/* 803B1BFC  7F 05 C3 78 */	mr r5, r24
/* 803B1C00  4B FF FE 3D */	bl mHandbill_CopyString
/* 803B1C04  3C 60 81 16 */	lis r3, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B1C08  38 63 7D D8 */	addi r3, r3, mHandbill_data@l /* 0x81167DD8@l */
/* 803B1C0C  80 03 01 90 */	lwz r0, 0x190(r3)
/* 803B1C10  2C 00 00 05 */	cmpwi r0, 5
/* 803B1C14  41 82 00 0C */	beq lbl_803B1C20
/* 803B1C18  7C 04 03 78 */	mr r4, r0
/* 803B1C1C  48 00 00 10 */	b lbl_803B1C2C
lbl_803B1C20:
/* 803B1C20  57 A0 10 3A */	slwi r0, r29, 2
/* 803B1C24  7C 63 02 14 */	add r3, r3, r0
/* 803B1C28  80 83 01 40 */	lwz r4, 0x140(r3)
lbl_803B1C2C:
/* 803B1C2C  2C 04 00 00 */	cmpwi r4, 0
/* 803B1C30  41 82 00 68 */	beq lbl_803B1C98
/* 803B1C34  38 61 00 08 */	addi r3, r1, 8
/* 803B1C38  38 A4 07 37 */	addi r5, r4, 0x737
/* 803B1C3C  38 80 00 10 */	li r4, 0x10
/* 803B1C40  48 03 D0 8D */	bl mString_Load_StringFromRom
/* 803B1C44  38 61 00 08 */	addi r3, r1, 8
/* 803B1C48  38 80 00 10 */	li r4, 0x10
/* 803B1C4C  48 00 F0 19 */	bl mMsg_Get_Length_String
/* 803B1C50  7C 7D 1B 78 */	mr r29, r3
/* 803B1C54  38 81 00 08 */	addi r4, r1, 8
/* 803B1C58  38 00 00 20 */	li r0, 0x20
/* 803B1C5C  7F 43 D3 78 */	mr r3, r26
/* 803B1C60  38 BD 00 01 */	addi r5, r29, 1
/* 803B1C64  7C 04 E9 AE */	stbx r0, r4, r29
/* 803B1C68  7F 64 DB 78 */	mr r4, r27
/* 803B1C6C  7F 86 E3 78 */	mr r6, r28
/* 803B1C70  7F C7 F3 78 */	mr r7, r30
/* 803B1C74  7C BC 2A 14 */	add r5, r28, r5
/* 803B1C78  39 00 00 00 */	li r8, 0
/* 803B1C7C  4B FF FD E5 */	bl mHandbill_MoveDataCut
/* 803B1C80  7C 60 1B 78 */	mr r0, r3
/* 803B1C84  7F E3 FB 78 */	mr r3, r31
/* 803B1C88  7C 1E 03 78 */	mr r30, r0
/* 803B1C8C  38 81 00 08 */	addi r4, r1, 8
/* 803B1C90  38 BD 00 01 */	addi r5, r29, 1
/* 803B1C94  4B FF FD A9 */	bl mHandbill_CopyString
lbl_803B1C98:
/* 803B1C98  3C 60 81 16 */	lis r3, mHandbill_data@ha /* 0x81167DD8@ha */
/* 803B1C9C  38 63 7D D8 */	addi r3, r3, mHandbill_data@l /* 0x81167DD8@l */
/* 803B1CA0  80 03 01 94 */	lwz r0, 0x194(r3)
/* 803B1CA4  2C 00 00 00 */	cmpwi r0, 0
/* 803B1CA8  41 82 00 10 */	beq lbl_803B1CB8
/* 803B1CAC  88 7F 00 00 */	lbz r3, 0(r31)
/* 803B1CB0  4B FF D9 99 */	bl mFont_small_to_capital
/* 803B1CB4  98 7F 00 00 */	stb r3, 0(r31)
lbl_803B1CB8:
/* 803B1CB8  4B FF FC 55 */	bl mHandbill_clr_force_art
/* 803B1CBC  4B FF FC 65 */	bl mHandbill_clr_capital_flag
/* 803B1CC0  7F C3 F3 78 */	mr r3, r30
/* 803B1CC4  39 61 00 50 */	addi r11, r1, 0x50
/* 803B1CC8  4B CE 92 41 */	bl func_8009AF08
/* 803B1CCC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803B1CD0  7C 08 03 A6 */	mtlr r0
/* 803B1CD4  38 21 00 50 */	addi r1, r1, 0x50
/* 803B1CD8  4E 80 00 20 */	blr 
