lbl_80561C98:
/* 80561C98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80561C9C  7C 08 02 A6 */	mflr r0
/* 80561CA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80561CA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80561CA8  4B B3 92 2D */	bl func_8009AED4
/* 80561CAC  7C 7D 1B 78 */	mr r29, r3
/* 80561CB0  7C 9E 23 78 */	mr r30, r4
/* 80561CB4  4B E5 D9 F5 */	bl func_803BF6A8
/* 80561CB8  3C 80 80 6C */	lis r4, aNNW_string_table@ha /* 0x806BDF80@ha */
/* 80561CBC  7C 65 1B 78 */	mr r5, r3
/* 80561CC0  57 A0 17 3A */	rlwinm r0, r29, 2, 0x1c, 0x1d
/* 80561CC4  38 61 00 08 */	addi r3, r1, 8
/* 80561CC8  38 84 DF 80 */	addi r4, r4, aNNW_string_table@l /* 0x806BDF80@l */
/* 80561CCC  7C BF 2B 78 */	mr r31, r5
/* 80561CD0  7C A4 00 2E */	lwzx r5, r4, r0
/* 80561CD4  38 80 00 10 */	li r4, 0x10
/* 80561CD8  4B E8 CF F5 */	bl mString_Load_StringFromRom
/* 80561CDC  7F E3 FB 78 */	mr r3, r31
/* 80561CE0  38 9E 00 02 */	addi r4, r30, 2
/* 80561CE4  38 A1 00 08 */	addi r5, r1, 8
/* 80561CE8  38 C0 00 10 */	li r6, 0x10
/* 80561CEC  4B E5 E0 E9 */	bl mMsg_Set_item_str
/* 80561CF0  57 A0 07 7E */	clrlwi r0, r29, 0x1d
/* 80561CF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80561CF8  1C A0 02 20 */	mulli r5, r0, 0x220
/* 80561CFC  7F E3 FB 78 */	mr r3, r31
/* 80561D00  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 80561D04  7F C4 F3 78 */	mr r4, r30
/* 80561D08  7C A0 2A 14 */	add r5, r0, r5
/* 80561D0C  38 C0 00 10 */	li r6, 0x10
/* 80561D10  3C A5 00 02 */	addis r5, r5, 2
/* 80561D14  38 A5 14 00 */	addi r5, r5, 0x1400
/* 80561D18  4B E5 E0 BD */	bl mMsg_Set_item_str
/* 80561D1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80561D20  4B B3 92 01 */	bl func_8009AF20
/* 80561D24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80561D28  7C 08 03 A6 */	mtlr r0
/* 80561D2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80561D30  4E 80 00 20 */	blr 
