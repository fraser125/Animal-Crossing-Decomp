lbl_8051D4A4:
/* 8051D4A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D4A8  7C 08 02 A6 */	mflr r0
/* 8051D4AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D4B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D4B4  4B B7 DA 21 */	bl func_8009AED4
/* 8051D4B8  7C 7D 1B 78 */	mr r29, r3
/* 8051D4BC  A8 83 00 B6 */	lha r4, 0xb6(r3)
/* 8051D4C0  38 A0 08 00 */	li r5, 0x800
/* 8051D4C4  38 7D 00 DE */	addi r3, r29, 0xde
/* 8051D4C8  4B E9 D6 7D */	bl chase_angle
/* 8051D4CC  4B FF FB 9D */	bl aEDSN_check_present
/* 8051D4D0  2C 03 FF FF */	cmpwi r3, -1
/* 8051D4D4  40 82 00 80 */	bne lbl_8051D554
/* 8051D4D8  4B EA 21 D1 */	bl func_803BF6A8
/* 8051D4DC  4B EA 22 65 */	bl mMsg_Check_main_wait
/* 8051D4E0  2C 03 00 01 */	cmpwi r3, 1
/* 8051D4E4  40 82 00 70 */	bne lbl_8051D554
/* 8051D4E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051D4EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051D4F0  3C 83 00 02 */	addis r4, r3, 2
/* 8051D4F4  80 64 60 94 */	lwz r3, 0x6094(r4)
/* 8051D4F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8051D4FC  28 00 00 00 */	cmplwi r0, 0
/* 8051D500  40 82 00 54 */	bne lbl_8051D554
/* 8051D504  83 C4 04 E0 */	lwz r30, 0x4e0(r4)
/* 8051D508  3B E4 04 A4 */	addi r31, r4, 0x4a4
/* 8051D50C  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8051D510  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 8051D514  7C 7F 02 14 */	add r3, r31, r0
/* 8051D518  4B EC 2C 09 */	bl mPr_CopyPersonalID
/* 8051D51C  57 C0 08 3C */	slwi r0, r30, 1
/* 8051D520  A0 9D 09 A0 */	lhz r4, 0x9a0(r29)
/* 8051D524  7C 7F 02 14 */	add r3, r31, r0
/* 8051D528  B0 83 00 40 */	sth r4, 0x40(r3)
/* 8051D52C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8051D530  38 03 00 01 */	addi r0, r3, 1
/* 8051D534  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8051D538  4B EA 21 71 */	bl func_803BF6A8
/* 8051D53C  4B EA 26 4D */	bl mMsg_request_main_appear_wait_type1
/* 8051D540  38 60 00 01 */	li r3, 1
/* 8051D544  4B E7 B2 2D */	bl mDemo_Set_talk_change_player
/* 8051D548  7F A3 EB 78 */	mr r3, r29
/* 8051D54C  38 80 00 05 */	li r4, 5
/* 8051D550  48 00 00 49 */	bl aEDSN_change_talk_proc
lbl_8051D554:
/* 8051D554  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D558  4B B7 D9 C9 */	bl func_8009AF20
/* 8051D55C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D560  7C 08 03 A6 */	mtlr r0
/* 8051D564  38 21 00 20 */	addi r1, r1, 0x20
/* 8051D568  4E 80 00 20 */	blr 
