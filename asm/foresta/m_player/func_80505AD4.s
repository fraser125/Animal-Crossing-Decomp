lbl_80505AD4:
/* 80505AD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80505AD8  7C 08 02 A6 */	mflr r0
/* 80505ADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80505AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80505AE4  4B B9 53 F1 */	bl func_8009AED4
/* 80505AE8  7C 9E 23 78 */	mr r30, r4
/* 80505AEC  7C 7D 1B 78 */	mr r29, r3
/* 80505AF0  7C BF 2B 78 */	mr r31, r5
/* 80505AF4  38 80 00 6C */	li r4, 0x6c
/* 80505AF8  4B FD 49 61 */	bl Player_actor_check_request_main_able
/* 80505AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80505B00  41 82 00 28 */	beq lbl_80505B28
/* 80505B04  7F A3 EB 78 */	mr r3, r29
/* 80505B08  4B ED 3B 39 */	bl get_player_actor_withoutCheck
/* 80505B0C  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 80505B10  7F A3 EB 78 */	mr r3, r29
/* 80505B14  7F E5 FB 78 */	mr r5, r31
/* 80505B18  38 80 00 6C */	li r4, 0x6c
/* 80505B1C  4B FC F4 F9 */	bl Player_actor_request_main_index
/* 80505B20  38 60 00 01 */	li r3, 1
/* 80505B24  48 00 00 08 */	b lbl_80505B2C
lbl_80505B28:
/* 80505B28  38 60 00 00 */	li r3, 0
lbl_80505B2C:
/* 80505B2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80505B30  4B B9 53 F1 */	bl func_8009AF20
/* 80505B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80505B38  7C 08 03 A6 */	mtlr r0
/* 80505B3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80505B40  4E 80 00 20 */	blr 
