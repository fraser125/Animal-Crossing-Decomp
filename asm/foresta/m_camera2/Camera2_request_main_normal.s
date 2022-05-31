lbl_803806D8:
/* 803806D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803806DC  7C 08 02 A6 */	mflr r0
/* 803806E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803806E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803806E8  4B D1 A7 ED */	bl func_8009AED4
/* 803806EC  7C BF 2B 78 */	mr r31, r5
/* 803806F0  7C 9E 23 78 */	mr r30, r4
/* 803806F4  7C 7D 1B 78 */	mr r29, r3
/* 803806F8  7F E4 FB 78 */	mr r4, r31
/* 803806FC  4B FF E3 BD */	bl Camera2_check_request_main_priority
/* 80380700  2C 03 00 00 */	cmpwi r3, 0
/* 80380704  40 81 00 20 */	ble lbl_80380724
/* 80380708  93 DD 1C 5C */	stw r30, 0x1c5c(r29)
/* 8038070C  7F A3 EB 78 */	mr r3, r29
/* 80380710  7F E5 FB 78 */	mr r5, r31
/* 80380714  38 80 00 01 */	li r4, 1
/* 80380718  4B FF E3 B9 */	bl Camera2_request_main_index
/* 8038071C  38 60 00 01 */	li r3, 1
/* 80380720  48 00 00 08 */	b lbl_80380728
lbl_80380724:
/* 80380724  38 60 00 00 */	li r3, 0
lbl_80380728:
/* 80380728  39 61 00 20 */	addi r11, r1, 0x20
/* 8038072C  4B D1 A7 F5 */	bl func_8009AF20
/* 80380730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80380734  7C 08 03 A6 */	mtlr r0
/* 80380738  38 21 00 20 */	addi r1, r1, 0x20
/* 8038073C  4E 80 00 20 */	blr 
