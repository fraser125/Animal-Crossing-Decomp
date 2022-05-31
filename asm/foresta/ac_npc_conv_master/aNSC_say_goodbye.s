lbl_8054A42C:
/* 8054A42C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054A430  7C 08 02 A6 */	mflr r0
/* 8054A434  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054A438  39 61 00 20 */	addi r11, r1, 0x20
/* 8054A43C  4B B5 0A 99 */	bl func_8009AED4
/* 8054A440  7C 7D 1B 78 */	mr r29, r3
/* 8054A444  7C 9E 23 78 */	mr r30, r4
/* 8054A448  4B E7 52 61 */	bl func_803BF6A8
/* 8054A44C  7C 7F 1B 78 */	mr r31, r3
/* 8054A450  4B E7 69 19 */	bl mMsg_Check_idling_now
/* 8054A454  2C 03 00 01 */	cmpwi r3, 1
/* 8054A458  40 82 00 1C */	bne lbl_8054A474
/* 8054A45C  7F E3 FB 78 */	mr r3, r31
/* 8054A460  4B E7 55 E5 */	bl mMsg_request_main_disappear_wait_type1
/* 8054A464  7F A3 EB 78 */	mr r3, r29
/* 8054A468  7F C4 F3 78 */	mr r4, r30
/* 8054A46C  38 A0 00 45 */	li r5, 0x45
/* 8054A470  48 00 0A AD */	bl aNSC_setupAction
lbl_8054A474:
/* 8054A474  39 61 00 20 */	addi r11, r1, 0x20
/* 8054A478  4B B5 0A A9 */	bl func_8009AF20
/* 8054A47C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054A480  7C 08 03 A6 */	mtlr r0
/* 8054A484  38 21 00 20 */	addi r1, r1, 0x20
/* 8054A488  4E 80 00 20 */	blr 
