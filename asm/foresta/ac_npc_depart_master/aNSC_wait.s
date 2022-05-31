lbl_80551AF0:
/* 80551AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551AF4  7C 08 02 A6 */	mflr r0
/* 80551AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551B00  7C 9F 23 78 */	mr r31, r4
/* 80551B04  93 C1 00 08 */	stw r30, 8(r1)
/* 80551B08  7C 7E 1B 78 */	mr r30, r3
/* 80551B0C  4B FF CE 89 */	bl aNSC_message_ctrl
/* 80551B10  2C 03 00 01 */	cmpwi r3, 1
/* 80551B14  41 82 00 3C */	beq lbl_80551B50
/* 80551B18  7F C3 F3 78 */	mr r3, r30
/* 80551B1C  7F E4 FB 78 */	mr r4, r31
/* 80551B20  4B FF C3 D1 */	bl aNSC_decide_next_move_act
/* 80551B24  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 80551B28  7C 65 1B 78 */	mr r5, r3
/* 80551B2C  7C 05 00 00 */	cmpw r5, r0
/* 80551B30  41 82 00 14 */	beq lbl_80551B44
/* 80551B34  7F C3 F3 78 */	mr r3, r30
/* 80551B38  7F E4 FB 78 */	mr r4, r31
/* 80551B3C  48 00 0C F9 */	bl aNSC_setupAction
/* 80551B40  48 00 00 10 */	b lbl_80551B50
lbl_80551B44:
/* 80551B44  7F C3 F3 78 */	mr r3, r30
/* 80551B48  7F E4 FB 78 */	mr r4, r31
/* 80551B4C  4B FF B5 C9 */	bl aNDM_search_player
lbl_80551B50:
/* 80551B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551B58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80551B5C  7C 08 03 A6 */	mtlr r0
/* 80551B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80551B64  4E 80 00 20 */	blr 
