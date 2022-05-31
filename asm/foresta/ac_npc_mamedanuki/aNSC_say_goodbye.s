lbl_8055E46C:
/* 8055E46C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055E470  7C 08 02 A6 */	mflr r0
/* 8055E474  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055E478  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E47C  4B B3 CA 59 */	bl func_8009AED4
/* 8055E480  7C 7D 1B 78 */	mr r29, r3
/* 8055E484  7C 9E 23 78 */	mr r30, r4
/* 8055E488  4B E6 12 21 */	bl func_803BF6A8
/* 8055E48C  7C 7F 1B 78 */	mr r31, r3
/* 8055E490  4B E6 28 D9 */	bl mMsg_Check_idling_now
/* 8055E494  2C 03 00 01 */	cmpwi r3, 1
/* 8055E498  40 82 00 1C */	bne lbl_8055E4B4
/* 8055E49C  7F E3 FB 78 */	mr r3, r31
/* 8055E4A0  4B E6 15 A5 */	bl mMsg_request_main_disappear_wait_type1
/* 8055E4A4  7F A3 EB 78 */	mr r3, r29
/* 8055E4A8  7F C4 F3 78 */	mr r4, r30
/* 8055E4AC  38 A0 00 46 */	li r5, 0x46
/* 8055E4B0  48 00 09 21 */	bl aNSC_setupAction
lbl_8055E4B4:
/* 8055E4B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E4B8  4B B3 CA 69 */	bl func_8009AF20
/* 8055E4BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055E4C0  7C 08 03 A6 */	mtlr r0
/* 8055E4C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055E4C8  4E 80 00 20 */	blr 
