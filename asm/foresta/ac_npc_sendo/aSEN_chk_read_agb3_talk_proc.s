lbl_80575E50:
/* 80575E50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80575E54  7C 08 02 A6 */	mflr r0
/* 80575E58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80575E5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80575E60  4B B2 50 75 */	bl func_8009AED4
/* 80575E64  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80575E68  7C 7D 1B 78 */	mr r29, r3
/* 80575E6C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80575E70  3B C0 FF FF */	li r30, -1
/* 80575E74  3F E3 00 03 */	addis r31, r3, 3
/* 80575E78  38 80 39 80 */	li r4, 0x3980
/* 80575E7C  3B FF A1 C0 */	addi r31, r31, -24128
/* 80575E80  7F E3 FB 78 */	mr r3, r31
/* 80575E84  4B AD 47 2D */	bl mGcgba_CheckRecv
/* 80575E88  2C 03 00 09 */	cmpwi r3, 9
/* 80575E8C  41 82 00 54 */	beq lbl_80575EE0
/* 80575E90  40 80 00 44 */	bge lbl_80575ED4
/* 80575E94  2C 03 00 01 */	cmpwi r3, 1
/* 80575E98  41 82 00 08 */	beq lbl_80575EA0
/* 80575E9C  48 00 00 38 */	b lbl_80575ED4
lbl_80575EA0:
/* 80575EA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575EA4  7F E4 FB 78 */	mr r4, r31
/* 80575EA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80575EAC  3C 63 00 03 */	addis r3, r3, 3
/* 80575EB0  38 63 88 C0 */	addi r3, r3, -30528
/* 80575EB4  4B E3 F9 AD */	bl mISL_agb_to_gc
/* 80575EB8  4B FF EB 31 */	bl aSEN_compare_ram_island_and_agb_island
/* 80575EBC  2C 03 00 01 */	cmpwi r3, 1
/* 80575EC0  40 82 00 0C */	bne lbl_80575ECC
/* 80575EC4  3B C0 00 01 */	li r30, 1
/* 80575EC8  48 00 00 18 */	b lbl_80575EE0
lbl_80575ECC:
/* 80575ECC  3B C0 00 00 */	li r30, 0
/* 80575ED0  48 00 00 10 */	b lbl_80575EE0
lbl_80575ED4:
/* 80575ED4  38 00 00 02 */	li r0, 2
/* 80575ED8  3B C0 00 02 */	li r30, 2
/* 80575EDC  98 1D 09 95 */	stb r0, 0x995(r29)
lbl_80575EE0:
/* 80575EE0  2C 1E FF FF */	cmpwi r30, -1
/* 80575EE4  41 82 00 70 */	beq lbl_80575F54
/* 80575EE8  4B E4 97 C1 */	bl func_803BF6A8
/* 80575EEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80575EF0  7C 7F 1B 78 */	mr r31, r3
/* 80575EF4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80575EF8  38 C0 00 08 */	li r6, 8
/* 80575EFC  3C A5 00 03 */	addis r5, r5, 3
/* 80575F00  38 80 00 01 */	li r4, 1
/* 80575F04  38 A5 A1 C8 */	addi r5, r5, -24120
/* 80575F08  4B E4 9D 4D */	bl mMsg_Set_free_str
/* 80575F0C  7F E3 FB 78 */	mr r3, r31
/* 80575F10  4B E4 AE 3D */	bl mMsg_Unset_LockContinue
/* 80575F14  3C 60 80 6C */	lis r3, msg_no_952@ha /* 0x806BF894@ha */
/* 80575F18  57 C0 10 3A */	slwi r0, r30, 2
/* 80575F1C  38 83 F8 94 */	addi r4, r3, msg_no_952@l /* 0x806BF894@l */
/* 80575F20  7F A3 EB 78 */	mr r3, r29
/* 80575F24  7C 84 00 2E */	lwzx r4, r4, r0
/* 80575F28  4B FF E9 6D */	bl aSEN_get_msg_no
/* 80575F2C  7C 64 1B 78 */	mr r4, r3
/* 80575F30  7F E3 FB 78 */	mr r3, r31
/* 80575F34  4B E4 AA 65 */	bl mMsg_ChangeMsgData
/* 80575F38  7F E3 FB 78 */	mr r3, r31
/* 80575F3C  4B E4 AD ED */	bl mMsg_Set_ForceNext
/* 80575F40  3C 80 80 6C */	lis r4, next_talk_idx_951@ha /* 0x806BF890@ha */
/* 80575F44  7F A3 EB 78 */	mr r3, r29
/* 80575F48  38 84 F8 90 */	addi r4, r4, next_talk_idx_951@l /* 0x806BF890@l */
/* 80575F4C  7C 84 F0 AE */	lbzx r4, r4, r30
/* 80575F50  48 00 00 1D */	bl aSEN_change_talk_proc
lbl_80575F54:
/* 80575F54  39 61 00 20 */	addi r11, r1, 0x20
/* 80575F58  4B B2 4F C9 */	bl func_8009AF20
/* 80575F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80575F60  7C 08 03 A6 */	mtlr r0
/* 80575F64  38 21 00 20 */	addi r1, r1, 0x20
/* 80575F68  4E 80 00 20 */	blr 
