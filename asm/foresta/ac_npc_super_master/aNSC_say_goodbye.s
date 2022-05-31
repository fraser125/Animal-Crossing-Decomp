lbl_805854D0:
/* 805854D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805854D4  7C 08 02 A6 */	mflr r0
/* 805854D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805854DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805854E0  4B B1 59 F5 */	bl func_8009AED4
/* 805854E4  7C 7D 1B 78 */	mr r29, r3
/* 805854E8  7C 9E 23 78 */	mr r30, r4
/* 805854EC  4B E3 A1 BD */	bl func_803BF6A8
/* 805854F0  7C 7F 1B 78 */	mr r31, r3
/* 805854F4  4B E3 B8 75 */	bl mMsg_Check_idling_now
/* 805854F8  2C 03 00 01 */	cmpwi r3, 1
/* 805854FC  40 82 00 1C */	bne lbl_80585518
/* 80585500  7F E3 FB 78 */	mr r3, r31
/* 80585504  4B E3 A5 41 */	bl mMsg_request_main_disappear_wait_type1
/* 80585508  7F A3 EB 78 */	mr r3, r29
/* 8058550C  7F C4 F3 78 */	mr r4, r30
/* 80585510  38 A0 00 45 */	li r5, 0x45
/* 80585514  48 00 0A AD */	bl aNSC_setupAction
lbl_80585518:
/* 80585518  39 61 00 20 */	addi r11, r1, 0x20
/* 8058551C  4B B1 5A 05 */	bl func_8009AF20
/* 80585520  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80585524  7C 08 03 A6 */	mtlr r0
/* 80585528  38 21 00 20 */	addi r1, r1, 0x20
/* 8058552C  4E 80 00 20 */	blr 
