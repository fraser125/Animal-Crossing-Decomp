lbl_80551B68:
/* 80551B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551B6C  7C 08 02 A6 */	mflr r0
/* 80551B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551B78  7C 9F 23 78 */	mr r31, r4
/* 80551B7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80551B80  7C 7E 1B 78 */	mr r30, r3
/* 80551B84  4B FF CE 11 */	bl aNSC_message_ctrl
/* 80551B88  2C 03 00 01 */	cmpwi r3, 1
/* 80551B8C  41 82 00 3C */	beq lbl_80551BC8
/* 80551B90  7F C3 F3 78 */	mr r3, r30
/* 80551B94  7F E4 FB 78 */	mr r4, r31
/* 80551B98  4B FF C3 59 */	bl aNSC_decide_next_move_act
/* 80551B9C  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 80551BA0  7C 65 1B 78 */	mr r5, r3
/* 80551BA4  7C 05 00 00 */	cmpw r5, r0
/* 80551BA8  41 82 00 14 */	beq lbl_80551BBC
/* 80551BAC  7F C3 F3 78 */	mr r3, r30
/* 80551BB0  7F E4 FB 78 */	mr r4, r31
/* 80551BB4  48 00 0C 81 */	bl aNSC_setupAction
/* 80551BB8  48 00 00 10 */	b lbl_80551BC8
lbl_80551BBC:
/* 80551BBC  7F C3 F3 78 */	mr r3, r30
/* 80551BC0  7F E4 FB 78 */	mr r4, r31
/* 80551BC4  4B FF B5 E1 */	bl aNDM_search_player2
lbl_80551BC8:
/* 80551BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551BD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80551BD4  7C 08 03 A6 */	mtlr r0
/* 80551BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80551BDC  4E 80 00 20 */	blr 
