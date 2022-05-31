lbl_803C0E60:
/* 803C0E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C0E64  7C 08 02 A6 */	mflr r0
/* 803C0E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C0E6C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C0E70  4B CD A0 5D */	bl func_8009AECC
/* 803C0E74  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803C0E78  7C 9F 23 78 */	mr r31, r4
/* 803C0E7C  38 86 85 38 */	addi r4, r6, common_data@l /* 0x81138538@l */
/* 803C0E80  7C 7B 1B 78 */	mr r27, r3
/* 803C0E84  3C 64 00 02 */	addis r3, r4, 2
/* 803C0E88  7C BC 2B 78 */	mr r28, r5
/* 803C0E8C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803C0E90  38 80 00 08 */	li r4, 8
/* 803C0E94  4B FF FD D1 */	bl mMsg_Get_Length_String
/* 803C0E98  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C0E9C  7C 7E 1B 78 */	mr r30, r3
/* 803C0EA0  7F 63 DB 78 */	mr r3, r27
/* 803C0EA4  7C 9D 23 78 */	mr r29, r4
/* 803C0EA8  4B FE E9 61 */	bl mFont_CodeSize_idx_get
/* 803C0EAC  2C 1E 00 00 */	cmpwi r30, 0
/* 803C0EB0  7C 64 1B 78 */	mr r4, r3
/* 803C0EB4  40 81 00 70 */	ble lbl_803C0F24
/* 803C0EB8  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C0EBC  7F 63 DB 78 */	mr r3, r27
/* 803C0EC0  7F 85 E3 78 */	mr r5, r28
/* 803C0EC4  38 C0 00 90 */	li r6, 0x90
/* 803C0EC8  7C 80 22 14 */	add r4, r0, r4
/* 803C0ECC  4B FF F1 A5 */	bl mMsg_Count_SameCode
/* 803C0ED0  3C 80 80 65 */	lis r4, data_80657100@ha /* 0x80657100@ha */
/* 803C0ED4  7C 1E 1A 14 */	add r0, r30, r3
/* 803C0ED8  38 84 71 00 */	addi r4, r4, data_80657100@l /* 0x80657100@l */
/* 803C0EDC  7F 63 DB 78 */	mr r3, r27
/* 803C0EE0  98 04 00 05 */	stb r0, 5(r4)
/* 803C0EE4  7F A5 EB 78 */	mr r5, r29
/* 803C0EE8  7F 86 E3 78 */	mr r6, r28
/* 803C0EEC  38 9D 00 06 */	addi r4, r29, 6
/* 803C0EF0  38 E0 00 00 */	li r7, 0
/* 803C0EF4  4B FF FE 81 */	bl mMsg_MoveDataCut
/* 803C0EF8  7C 60 1B 78 */	mr r0, r3
/* 803C0EFC  3C 80 80 65 */	lis r4, data_80657100@ha /* 0x80657100@ha */
/* 803C0F00  38 84 71 00 */	addi r4, r4, data_80657100@l /* 0x80657100@l */
/* 803C0F04  7C 7B EA 14 */	add r3, r27, r29
/* 803C0F08  7C 1E 03 78 */	mr r30, r0
/* 803C0F0C  38 A0 00 06 */	li r5, 6
/* 803C0F10  4B FF FF 2D */	bl mMsg_CopyString
/* 803C0F14  80 7F 00 00 */	lwz r3, 0(r31)
/* 803C0F18  38 03 00 06 */	addi r0, r3, 6
/* 803C0F1C  90 1F 00 00 */	stw r0, 0(r31)
/* 803C0F20  48 00 00 08 */	b lbl_803C0F28
lbl_803C0F24:
/* 803C0F24  7F 9E E3 78 */	mr r30, r28
lbl_803C0F28:
/* 803C0F28  7F C3 F3 78 */	mr r3, r30
/* 803C0F2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C0F30  4B CD 9F E9 */	bl func_8009AF18
/* 803C0F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C0F38  7C 08 03 A6 */	mtlr r0
/* 803C0F3C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C0F40  4E 80 00 20 */	blr 
