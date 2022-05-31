lbl_804EB8DC:
/* 804EB8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB8E0  7C 08 02 A6 */	mflr r0
/* 804EB8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB8E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EB8EC  7C 9F 23 78 */	mr r31, r4
/* 804EB8F0  93 C1 00 08 */	stw r30, 8(r1)
/* 804EB8F4  7C 7E 1B 78 */	mr r30, r3
/* 804EB8F8  4B EE DD 79 */	bl mPlib_get_player_actor_main_index
/* 804EB8FC  2C 03 00 18 */	cmpwi r3, 0x18
/* 804EB900  40 82 00 70 */	bne lbl_804EB970
/* 804EB904  7F C3 F3 78 */	mr r3, r30
/* 804EB908  7F E5 FB 78 */	mr r5, r31
/* 804EB90C  38 80 00 19 */	li r4, 0x19
/* 804EB910  4B FE EB 49 */	bl Player_actor_check_request_main_able
/* 804EB914  2C 03 00 00 */	cmpwi r3, 0
/* 804EB918  41 82 00 58 */	beq lbl_804EB970
/* 804EB91C  7F C3 F3 78 */	mr r3, r30
/* 804EB920  4B EE DD 21 */	bl get_player_actor_withoutCheck
/* 804EB924  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804EB928  2C 00 00 37 */	cmpwi r0, 0x37
/* 804EB92C  41 82 00 1C */	beq lbl_804EB948
/* 804EB930  40 80 00 20 */	bge lbl_804EB950
/* 804EB934  2C 00 00 36 */	cmpwi r0, 0x36
/* 804EB938  40 80 00 08 */	bge lbl_804EB940
/* 804EB93C  48 00 00 14 */	b lbl_804EB950
lbl_804EB940:
/* 804EB940  38 00 00 33 */	li r0, 0x33
/* 804EB944  48 00 00 10 */	b lbl_804EB954
lbl_804EB948:
/* 804EB948  38 00 00 34 */	li r0, 0x34
/* 804EB94C  48 00 00 08 */	b lbl_804EB954
lbl_804EB950:
/* 804EB950  38 00 00 35 */	li r0, 0x35
lbl_804EB954:
/* 804EB954  90 03 0D 60 */	stw r0, 0xd60(r3)
/* 804EB958  7F C3 F3 78 */	mr r3, r30
/* 804EB95C  7F E5 FB 78 */	mr r5, r31
/* 804EB960  38 80 00 19 */	li r4, 0x19
/* 804EB964  4B FE 96 B1 */	bl Player_actor_request_main_index
/* 804EB968  38 60 00 01 */	li r3, 1
/* 804EB96C  48 00 00 08 */	b lbl_804EB974
lbl_804EB970:
/* 804EB970  38 60 00 00 */	li r3, 0
lbl_804EB974:
/* 804EB974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EB97C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EB980  7C 08 03 A6 */	mtlr r0
/* 804EB984  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB988  4E 80 00 20 */	blr 
