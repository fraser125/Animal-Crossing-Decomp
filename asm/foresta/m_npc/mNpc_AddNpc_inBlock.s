lbl_803CFF44:
/* 803CFF44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CFF48  7C 08 02 A6 */	mflr r0
/* 803CFF4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CFF50  39 61 00 20 */	addi r11, r1, 0x20
/* 803CFF54  4B CC AF 7D */	bl func_8009AED0
/* 803CFF58  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803CFF5C  7C 7C 1B 78 */	mr r28, r3
/* 803CFF60  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803CFF64  7C 9D 23 78 */	mr r29, r4
/* 803CFF68  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 803CFF6C  7C BE 2B 78 */	mr r30, r5
/* 803CFF70  2C 1F 00 06 */	cmpwi r31, 6
/* 803CFF74  41 82 00 14 */	beq lbl_803CFF88
/* 803CFF78  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 803CFF7C  41 82 00 0C */	beq lbl_803CFF88
/* 803CFF80  2C 1F 00 30 */	cmpwi r31, 0x30
/* 803CFF84  40 82 00 98 */	bne lbl_803D001C
lbl_803CFF88:
/* 803CFF88  28 1C 00 00 */	cmplwi r28, 0
/* 803CFF8C  41 82 00 90 */	beq lbl_803D001C
/* 803CFF90  4B FD 4D 3D */	bl mFI_GetFieldId
/* 803CFF94  7F 83 E3 78 */	mr r3, r28
/* 803CFF98  38 80 00 10 */	li r4, 0x10
/* 803CFF9C  38 A0 00 00 */	li r5, 0
/* 803CFFA0  4B FD 87 AD */	bl mFI_GetMoveActorListIdx
/* 803CFFA4  7C 64 1B 78 */	mr r4, r3
/* 803CFFA8  2C 04 FF FF */	cmpwi r4, -1
/* 803CFFAC  41 82 00 70 */	beq lbl_803D001C
/* 803CFFB0  2C 04 00 0F */	cmpwi r4, 0xf
/* 803CFFB4  40 80 00 68 */	bge lbl_803D001C
/* 803CFFB8  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 803CFFBC  54 80 18 38 */	slwi r0, r4, 3
/* 803CFFC0  7F 9C 02 14 */	add r28, r28, r0
/* 803CFFC4  41 82 00 48 */	beq lbl_803D000C
/* 803CFFC8  40 80 00 10 */	bge lbl_803CFFD8
/* 803CFFCC  2C 1F 00 06 */	cmpwi r31, 6
/* 803CFFD0  41 82 00 14 */	beq lbl_803CFFE4
/* 803CFFD4  48 00 00 48 */	b lbl_803D001C
lbl_803CFFD8:
/* 803CFFD8  2C 1F 00 30 */	cmpwi r31, 0x30
/* 803CFFDC  41 82 00 1C */	beq lbl_803CFFF8
/* 803CFFE0  48 00 00 3C */	b lbl_803D001C
lbl_803CFFE4:
/* 803CFFE4  7F 83 E3 78 */	mr r3, r28
/* 803CFFE8  7F A5 EB 78 */	mr r5, r29
/* 803CFFEC  7F C6 F3 78 */	mr r6, r30
/* 803CFFF0  4B FF FD 7D */	bl mNpc_AddNpc_inNpcRoom
/* 803CFFF4  48 00 00 28 */	b lbl_803D001C
lbl_803CFFF8:
/* 803CFFF8  7F 83 E3 78 */	mr r3, r28
/* 803CFFFC  7F A5 EB 78 */	mr r5, r29
/* 803D0000  7F C6 F3 78 */	mr r6, r30
/* 803D0004  4B FF FE 29 */	bl mNpc_AddNpc_inNpcRoomIsland
/* 803D0008  48 00 00 14 */	b lbl_803D001C
lbl_803D000C:
/* 803D000C  7F 83 E3 78 */	mr r3, r28
/* 803D0010  7F A5 EB 78 */	mr r5, r29
/* 803D0014  7F C6 F3 78 */	mr r6, r30
/* 803D0018  4B FF FE 75 */	bl mNpc_AddNpc_inKamakura
lbl_803D001C:
/* 803D001C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0020  4B CC AE FD */	bl func_8009AF1C
/* 803D0024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D0028  7C 08 03 A6 */	mtlr r0
/* 803D002C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D0030  4E 80 00 20 */	blr 
