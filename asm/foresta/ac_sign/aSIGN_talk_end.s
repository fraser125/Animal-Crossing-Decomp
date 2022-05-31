lbl_804A20C4:
/* 804A20C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A20C8  7C 08 02 A6 */	mflr r0
/* 804A20CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A20D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A20D4  7C 7F 1B 78 */	mr r31, r3
/* 804A20D8  4B F1 D5 D1 */	bl func_803BF6A8
/* 804A20DC  4B F1 D6 65 */	bl mMsg_Check_main_wait
/* 804A20E0  2C 03 00 00 */	cmpwi r3, 0
/* 804A20E4  41 82 00 14 */	beq lbl_804A20F8
/* 804A20E8  7F E3 FB 78 */	mr r3, r31
/* 804A20EC  38 80 00 00 */	li r4, 0
/* 804A20F0  48 00 01 E1 */	bl aSIGN_setup_action
/* 804A20F4  4B F1 D7 E1 */	bl mMsg_request_main_forceoff
lbl_804A20F8:
/* 804A20F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A20FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2100  7C 08 03 A6 */	mtlr r0
/* 804A2104  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2108  4E 80 00 20 */	blr 
