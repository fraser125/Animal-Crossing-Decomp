lbl_805B00CC:
/* 805B00CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B00D0  7C 08 02 A6 */	mflr r0
/* 805B00D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B00D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805B00DC  4B AE AD F5 */	bl func_8009AED0
/* 805B00E0  7C 9D 23 78 */	mr r29, r4
/* 805B00E4  7C 7C 1B 78 */	mr r28, r3
/* 805B00E8  7F A3 EB 78 */	mr r3, r29
/* 805B00EC  3B C0 00 00 */	li r30, 0
/* 805B00F0  4B E2 95 51 */	bl get_player_actor_withoutCheck
/* 805B00F4  28 03 00 00 */	cmplwi r3, 0
/* 805B00F8  40 82 00 0C */	bne lbl_805B0104
/* 805B00FC  38 60 00 00 */	li r3, 0
/* 805B0100  48 00 00 B4 */	b lbl_805B01B4
lbl_805B0104:
/* 805B0104  A0 9C 00 06 */	lhz r4, 6(r28)
/* 805B0108  A0 03 13 94 */	lhz r0, 0x1394(r3)
/* 805B010C  3C 64 00 01 */	addis r3, r4, 1
/* 805B0110  38 63 A0 05 */	addi r3, r3, -24571
/* 805B0114  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 805B0118  7C 00 18 40 */	cmplw r0, r3
/* 805B011C  40 82 00 94 */	bne lbl_805B01B0
/* 805B0120  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805B0124  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805B0128  4B DE 5D E9 */	bl chkTrigger
/* 805B012C  2C 03 00 00 */	cmpwi r3, 0
/* 805B0130  41 82 00 80 */	beq lbl_805B01B0
/* 805B0134  3B E0 00 00 */	li r31, 0
/* 805B0138  4B DE AA FD */	bl mEv_CheckFirstJob
/* 805B013C  2C 03 00 01 */	cmpwi r3, 1
/* 805B0140  41 82 00 18 */	beq lbl_805B0158
/* 805B0144  38 60 00 31 */	li r3, 0x31
/* 805B0148  38 80 00 01 */	li r4, 1
/* 805B014C  4B DE D9 B5 */	bl mEv_check_status
/* 805B0150  2C 03 00 00 */	cmpwi r3, 0
/* 805B0154  41 82 00 08 */	beq lbl_805B015C
lbl_805B0158:
/* 805B0158  3B E0 00 01 */	li r31, 1
lbl_805B015C:
/* 805B015C  2C 1F 00 01 */	cmpwi r31, 1
/* 805B0160  40 82 00 10 */	bne lbl_805B0170
/* 805B0164  38 00 00 00 */	li r0, 0
/* 805B0168  90 1C 02 C4 */	stw r0, 0x2c4(r28)
/* 805B016C  48 00 00 14 */	b lbl_805B0180
lbl_805B0170:
/* 805B0170  80 7C 02 BC */	lwz r3, 0x2bc(r28)
/* 805B0174  4B E2 73 15 */	bl func_803D7488
/* 805B0178  88 03 00 08 */	lbz r0, 8(r3)
/* 805B017C  90 1C 02 C4 */	stw r0, 0x2c4(r28)
lbl_805B0180:
/* 805B0180  7F 83 E3 78 */	mr r3, r28
/* 805B0184  7F A4 EB 78 */	mr r4, r29
/* 805B0188  4B FF FB 21 */	bl aHUS_odekake_check
/* 805B018C  2C 03 00 00 */	cmpwi r3, 0
/* 805B0190  41 82 00 1C */	beq lbl_805B01AC
/* 805B0194  3C 60 80 5B */	lis r3, aHUS_set_talk_info_check_player@ha /* 0x805B0044@ha */
/* 805B0198  7F 84 E3 78 */	mr r4, r28
/* 805B019C  38 A3 00 44 */	addi r5, r3, aHUS_set_talk_info_check_player@l /* 0x805B0044@l */
/* 805B01A0  38 60 00 08 */	li r3, 8
/* 805B01A4  4B DE 9F B9 */	bl mDemo_Request
/* 805B01A8  48 00 00 08 */	b lbl_805B01B0
lbl_805B01AC:
/* 805B01AC  3B C0 00 02 */	li r30, 2
lbl_805B01B0:
/* 805B01B0  7F C3 F3 78 */	mr r3, r30
lbl_805B01B4:
/* 805B01B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805B01B8  4B AE AD 65 */	bl func_8009AF1C
/* 805B01BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B01C0  7C 08 03 A6 */	mtlr r0
/* 805B01C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B01C8  4E 80 00 20 */	blr 
