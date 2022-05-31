lbl_803D0E90:
/* 803D0E90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0E94  7C 08 02 A6 */	mflr r0
/* 803D0E98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D0E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0EA0  4B CC A0 31 */	bl func_8009AED0
/* 803D0EA4  7C BE 2B 78 */	mr r30, r5
/* 803D0EA8  7C 7C 1B 78 */	mr r28, r3
/* 803D0EAC  88 05 00 0D */	lbz r0, 0xd(r5)
/* 803D0EB0  7C 9D 23 78 */	mr r29, r4
/* 803D0EB4  38 60 00 00 */	li r3, 0
/* 803D0EB8  28 00 00 06 */	cmplwi r0, 6
/* 803D0EBC  40 80 00 90 */	bge lbl_803D0F4C
/* 803D0EC0  1C 80 00 03 */	mulli r4, r0, 3
/* 803D0EC4  38 60 00 03 */	li r3, 3
/* 803D0EC8  3B E4 02 0E */	addi r31, r4, 0x20e
/* 803D0ECC  48 01 35 05 */	bl mQst_GetRandom
/* 803D0ED0  3C A0 81 17 */	lis r5, animal_name_2560@ha /* 0x8116C4C8@ha */
/* 803D0ED4  7F C4 F3 78 */	mr r4, r30
/* 803D0ED8  38 05 C4 C8 */	addi r0, r5, animal_name_2560@l /* 0x8116C4C8@l */
/* 803D0EDC  7F FF 1A 14 */	add r31, r31, r3
/* 803D0EE0  7C 03 03 78 */	mr r3, r0
/* 803D0EE4  48 00 0A 6D */	bl mNpc_GetNpcWorldNameAnm
/* 803D0EE8  7F A4 EB 78 */	mr r4, r29
/* 803D0EEC  38 60 00 00 */	li r3, 0
/* 803D0EF0  38 A0 00 08 */	li r5, 8
/* 803D0EF4  4B FE 0A 65 */	bl mHandbill_Set_free_str
/* 803D0EF8  3C 80 81 17 */	lis r4, animal_name_2560@ha /* 0x8116C4C8@ha */
/* 803D0EFC  38 60 00 01 */	li r3, 1
/* 803D0F00  38 84 C4 C8 */	addi r4, r4, animal_name_2560@l /* 0x8116C4C8@l */
/* 803D0F04  38 A0 00 08 */	li r5, 8
/* 803D0F08  4B FE 0A 51 */	bl mHandbill_Set_free_str
/* 803D0F0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D0F10  38 60 00 03 */	li r3, 3
/* 803D0F14  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D0F18  38 A0 00 08 */	li r5, 8
/* 803D0F1C  3C 84 00 01 */	addis r4, r4, 1
/* 803D0F20  38 84 91 20 */	addi r4, r4, -28384
/* 803D0F24  4B FE 0A 35 */	bl mHandbill_Set_free_str
/* 803D0F28  4B FF CD 89 */	bl mNpc_GetPaperType
/* 803D0F2C  7C 67 1B 78 */	mr r7, r3
/* 803D0F30  7F 83 E3 78 */	mr r3, r28
/* 803D0F34  7F A4 EB 78 */	mr r4, r29
/* 803D0F38  7F C5 F3 78 */	mr r5, r30
/* 803D0F3C  7F E8 FB 78 */	mr r8, r31
/* 803D0F40  38 C0 00 00 */	li r6, 0
/* 803D0F44  4B FF CD CD */	bl mNpc_LoadMailDataCommon2
/* 803D0F48  38 60 00 01 */	li r3, 1
lbl_803D0F4C:
/* 803D0F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0F50  4B CC 9F CD */	bl func_8009AF1C
/* 803D0F54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D0F58  7C 08 03 A6 */	mtlr r0
/* 803D0F5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D0F60  4E 80 00 20 */	blr 
