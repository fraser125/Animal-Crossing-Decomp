lbl_8057B9C4:
/* 8057B9C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057B9C8  7C 08 02 A6 */	mflr r0
/* 8057B9CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057B9D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B9D4  4B B1 F5 01 */	bl func_8009AED4
/* 8057B9D8  7C 7D 1B 78 */	mr r29, r3
/* 8057B9DC  7C 9E 23 78 */	mr r30, r4
/* 8057B9E0  4B E4 3C C9 */	bl func_803BF6A8
/* 8057B9E4  7C 7F 1B 78 */	mr r31, r3
/* 8057B9E8  4B E4 53 81 */	bl mMsg_Check_idling_now
/* 8057B9EC  2C 03 00 01 */	cmpwi r3, 1
/* 8057B9F0  40 82 00 1C */	bne lbl_8057BA0C
/* 8057B9F4  7F E3 FB 78 */	mr r3, r31
/* 8057B9F8  4B E4 40 4D */	bl mMsg_request_main_disappear_wait_type1
/* 8057B9FC  7F A3 EB 78 */	mr r3, r29
/* 8057BA00  7F C4 F3 78 */	mr r4, r30
/* 8057BA04  38 A0 00 45 */	li r5, 0x45
/* 8057BA08  48 00 0A AD */	bl aNSC_setupAction
lbl_8057BA0C:
/* 8057BA0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057BA10  4B B1 F5 11 */	bl func_8009AF20
/* 8057BA14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057BA18  7C 08 03 A6 */	mtlr r0
/* 8057BA1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057BA20  4E 80 00 20 */	blr 
