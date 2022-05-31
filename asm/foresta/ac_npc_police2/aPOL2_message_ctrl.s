lbl_8056B9B4:
/* 8056B9B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056B9B8  7C 08 02 A6 */	mflr r0
/* 8056B9BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056B9C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056B9C4  4B B2 F5 11 */	bl func_8009AED4
/* 8056B9C8  7C 9D 23 78 */	mr r29, r4
/* 8056B9CC  7C 7F 1B 78 */	mr r31, r3
/* 8056B9D0  7F A3 EB 78 */	mr r3, r29
/* 8056B9D4  4B E6 DC 6D */	bl get_player_actor_withoutCheck
/* 8056B9D8  28 03 00 00 */	cmplwi r3, 0
/* 8056B9DC  41 82 00 EC */	beq lbl_8056BAC8
/* 8056B9E0  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8056B9E4  2C 00 00 00 */	cmpwi r0, 0
/* 8056B9E8  40 82 00 1C */	bne lbl_8056BA04
/* 8056B9EC  3C 60 80 57 */	lis r3, aPOL2_set_force_talk_info_message_ctrl2@ha /* 0x8056B8B4@ha */
/* 8056B9F0  7F E4 FB 78 */	mr r4, r31
/* 8056B9F4  38 A3 B8 B4 */	addi r5, r3, aPOL2_set_force_talk_info_message_ctrl2@l /* 0x8056B8B4@l */
/* 8056B9F8  38 60 00 08 */	li r3, 8
/* 8056B9FC  4B E2 E7 61 */	bl mDemo_Request
/* 8056BA00  48 00 00 C8 */	b lbl_8056BAC8
lbl_8056BA04:
/* 8056BA04  80 03 13 8C */	lwz r0, 0x138c(r3)
/* 8056BA08  A0 63 13 94 */	lhz r3, 0x1394(r3)
/* 8056BA0C  2C 00 00 01 */	cmpwi r0, 1
/* 8056BA10  40 82 00 58 */	bne lbl_8056BA68
/* 8056BA14  28 03 F1 28 */	cmplwi r3, 0xf128
/* 8056BA18  41 80 00 50 */	blt lbl_8056BA68
/* 8056BA1C  28 03 F1 48 */	cmplwi r3, 0xf148
/* 8056BA20  40 80 00 48 */	bge lbl_8056BA68
/* 8056BA24  3F C3 FF FF */	addis r30, r3, 0xffff
/* 8056BA28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056BA2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056BA30  3B DE 0E D8 */	addi r30, r30, 0xed8
/* 8056BA34  3C 63 00 02 */	addis r3, r3, 2
/* 8056BA38  57 C0 08 3C */	slwi r0, r30, 1
/* 8056BA3C  7C 63 02 14 */	add r3, r3, r0
/* 8056BA40  A0 03 0E D0 */	lhz r0, 0xed0(r3)
/* 8056BA44  28 00 00 00 */	cmplwi r0, 0
/* 8056BA48  41 82 00 20 */	beq lbl_8056BA68
/* 8056BA4C  3C 60 80 57 */	lis r3, aPOL2_set_force_talk_info_message_ctrl@ha /* 0x8056B83C@ha */
/* 8056BA50  7F E4 FB 78 */	mr r4, r31
/* 8056BA54  38 A3 B8 3C */	addi r5, r3, aPOL2_set_force_talk_info_message_ctrl@l /* 0x8056B83C@l */
/* 8056BA58  38 60 00 08 */	li r3, 8
/* 8056BA5C  4B E2 E7 01 */	bl mDemo_Request
/* 8056BA60  B3 DF 09 A2 */	sth r30, 0x9a2(r31)
/* 8056BA64  48 00 00 64 */	b lbl_8056BAC8
lbl_8056BA68:
/* 8056BA68  7F E4 FB 78 */	mr r4, r31
/* 8056BA6C  38 60 00 08 */	li r3, 8
/* 8056BA70  4B E2 E7 F5 */	bl mDemo_Check
/* 8056BA74  2C 03 00 01 */	cmpwi r3, 1
/* 8056BA78  40 82 00 3C */	bne lbl_8056BAB4
/* 8056BA7C  4B E2 E9 95 */	bl mDemo_Check_ListenAble
/* 8056BA80  2C 03 00 00 */	cmpwi r3, 0
/* 8056BA84  40 82 00 30 */	bne lbl_8056BAB4
/* 8056BA88  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8056BA8C  2C 00 00 01 */	cmpwi r0, 1
/* 8056BA90  41 82 00 24 */	beq lbl_8056BAB4
/* 8056BA94  7F A3 EB 78 */	mr r3, r29
/* 8056BA98  4B E6 DB D9 */	bl mPlib_get_player_actor_main_index
/* 8056BA9C  2C 03 00 4A */	cmpwi r3, 0x4a
/* 8056BAA0  41 82 00 14 */	beq lbl_8056BAB4
/* 8056BAA4  7F A3 EB 78 */	mr r3, r29
/* 8056BAA8  7F E5 FB 78 */	mr r5, r31
/* 8056BAAC  38 80 00 00 */	li r4, 0
/* 8056BAB0  4B E6 F2 D5 */	bl mPlib_request_main_demo_wait_type1
lbl_8056BAB4:
/* 8056BAB4  3C 60 80 57 */	lis r3, aPOL2_set_norm_talk_info_message_ctrl@ha /* 0x8056B900@ha */
/* 8056BAB8  7F E4 FB 78 */	mr r4, r31
/* 8056BABC  38 A3 B9 00 */	addi r5, r3, aPOL2_set_norm_talk_info_message_ctrl@l /* 0x8056B900@l */
/* 8056BAC0  38 60 00 07 */	li r3, 7
/* 8056BAC4  4B E2 E6 99 */	bl mDemo_Request
lbl_8056BAC8:
/* 8056BAC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8056BACC  4B B2 F4 55 */	bl func_8009AF20
/* 8056BAD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056BAD4  7C 08 03 A6 */	mtlr r0
/* 8056BAD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8056BADC  4E 80 00 20 */	blr 
