lbl_80551D44:
/* 80551D44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551D48  7C 08 02 A6 */	mflr r0
/* 80551D4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551D50  39 61 00 20 */	addi r11, r1, 0x20
/* 80551D54  4B B4 91 81 */	bl func_8009AED4
/* 80551D58  7C 7D 1B 78 */	mr r29, r3
/* 80551D5C  7C 9E 23 78 */	mr r30, r4
/* 80551D60  4B E6 D9 49 */	bl func_803BF6A8
/* 80551D64  7C 7F 1B 78 */	mr r31, r3
/* 80551D68  4B E6 F0 01 */	bl mMsg_Check_idling_now
/* 80551D6C  2C 03 00 01 */	cmpwi r3, 1
/* 80551D70  40 82 00 1C */	bne lbl_80551D8C
/* 80551D74  7F E3 FB 78 */	mr r3, r31
/* 80551D78  4B E6 DC CD */	bl mMsg_request_main_disappear_wait_type1
/* 80551D7C  7F A3 EB 78 */	mr r3, r29
/* 80551D80  7F C4 F3 78 */	mr r4, r30
/* 80551D84  38 A0 00 45 */	li r5, 0x45
/* 80551D88  48 00 0A AD */	bl aNSC_setupAction
lbl_80551D8C:
/* 80551D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80551D90  4B B4 91 91 */	bl func_8009AF20
/* 80551D94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551D98  7C 08 03 A6 */	mtlr r0
/* 80551D9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80551DA0  4E 80 00 20 */	blr 
