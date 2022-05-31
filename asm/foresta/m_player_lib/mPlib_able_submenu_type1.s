lbl_803DB6E4:
/* 803DB6E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB6E8  7C 08 02 A6 */	mflr r0
/* 803DB6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB6F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB6F4  3B E0 00 00 */	li r31, 0
/* 803DB6F8  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB6FC  7C 7E 1B 78 */	mr r30, r3
/* 803DB700  4B FF DF 41 */	bl get_player_actor_withoutCheck
/* 803DB704  81 83 12 FC */	lwz r12, 0x12fc(r3)
/* 803DB708  7F C3 F3 78 */	mr r3, r30
/* 803DB70C  38 80 00 13 */	li r4, 0x13
/* 803DB710  7D 89 03 A6 */	mtctr r12
/* 803DB714  4E 80 04 21 */	bctrl 
/* 803DB718  2C 03 00 00 */	cmpwi r3, 0
/* 803DB71C  40 81 00 58 */	ble lbl_803DB774
/* 803DB720  4B FF FE 99 */	bl mPlib_Check_SetOrderSubmenu
/* 803DB724  2C 03 00 00 */	cmpwi r3, 0
/* 803DB728  40 82 00 4C */	bne lbl_803DB774
/* 803DB72C  4B FF FE B9 */	bl mPlib_check_request_change_item
/* 803DB730  2C 03 00 00 */	cmpwi r3, 0
/* 803DB734  40 82 00 40 */	bne lbl_803DB774
/* 803DB738  48 00 08 31 */	bl mPlib_check_player_warp_forEvent
/* 803DB73C  2C 03 00 00 */	cmpwi r3, 0
/* 803DB740  40 82 00 34 */	bne lbl_803DB774
/* 803DB744  7F C3 F3 78 */	mr r3, r30
/* 803DB748  4B FF DE F9 */	bl get_player_actor_withoutCheck
/* 803DB74C  81 83 13 24 */	lwz r12, 0x1324(r3)
/* 803DB750  7F C3 F3 78 */	mr r3, r30
/* 803DB754  7D 89 03 A6 */	mtctr r12
/* 803DB758  4E 80 04 21 */	bctrl 
/* 803DB75C  2C 03 00 00 */	cmpwi r3, 0
/* 803DB760  41 82 00 14 */	beq lbl_803DB774
/* 803DB764  4B FF FF 15 */	bl mPlib_CheckScene_AbleSubmenu
/* 803DB768  2C 03 00 00 */	cmpwi r3, 0
/* 803DB76C  41 82 00 08 */	beq lbl_803DB774
/* 803DB770  3B E0 00 01 */	li r31, 1
lbl_803DB774:
/* 803DB774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB778  7F E3 FB 78 */	mr r3, r31
/* 803DB77C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB780  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB784  7C 08 03 A6 */	mtlr r0
/* 803DB788  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB78C  4E 80 00 20 */	blr 
