lbl_804DA458:
/* 804DA458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA45C  7C 08 02 A6 */	mflr r0
/* 804DA460  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA464  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA468  4B BC 0A 6D */	bl func_8009AED4
/* 804DA46C  7C 9E 23 78 */	mr r30, r4
/* 804DA470  7C 7D 1B 78 */	mr r29, r3
/* 804DA474  7C BF 2B 78 */	mr r31, r5
/* 804DA478  7F C3 F3 78 */	mr r3, r30
/* 804DA47C  4B FF FE B5 */	bl Player_actor_check_cancel_request_change_proc_index
/* 804DA480  2C 03 00 00 */	cmpwi r3, 0
/* 804DA484  40 82 00 30 */	bne lbl_804DA4B4
/* 804DA488  7F C3 F3 78 */	mr r3, r30
/* 804DA48C  4B FF FF 4D */	bl Player_actor_check_able_request_main_index_for_reset
/* 804DA490  2C 03 00 00 */	cmpwi r3, 0
/* 804DA494  40 82 00 20 */	bne lbl_804DA4B4
/* 804DA498  7F A3 EB 78 */	mr r3, r29
/* 804DA49C  7F E4 FB 78 */	mr r4, r31
/* 804DA4A0  4B FF AB 41 */	bl func_804D4FE0
/* 804DA4A4  2C 03 00 00 */	cmpwi r3, 0
/* 804DA4A8  40 81 00 0C */	ble lbl_804DA4B4
/* 804DA4AC  38 60 00 01 */	li r3, 1
/* 804DA4B0  48 00 00 08 */	b lbl_804DA4B8
lbl_804DA4B4:
/* 804DA4B4  38 60 00 00 */	li r3, 0
lbl_804DA4B8:
/* 804DA4B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA4BC  4B BC 0A 65 */	bl func_8009AF20
/* 804DA4C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA4C4  7C 08 03 A6 */	mtlr r0
/* 804DA4C8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA4CC  4E 80 00 20 */	blr 
