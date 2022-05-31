lbl_804E4928:
/* 804E4928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E492C  7C 08 02 A6 */	mflr r0
/* 804E4930  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E4938  7C 9F 23 78 */	mr r31, r4
/* 804E493C  7F E5 FB 78 */	mr r5, r31
/* 804E4940  38 80 00 00 */	li r4, 0
/* 804E4944  93 C1 00 08 */	stw r30, 8(r1)
/* 804E4948  7C 7E 1B 78 */	mr r30, r3
/* 804E494C  4B FF 5B 0D */	bl Player_actor_check_request_main_able
/* 804E4950  2C 03 00 00 */	cmpwi r3, 0
/* 804E4954  41 82 00 1C */	beq lbl_804E4970
/* 804E4958  7F C3 F3 78 */	mr r3, r30
/* 804E495C  7F E5 FB 78 */	mr r5, r31
/* 804E4960  38 80 00 00 */	li r4, 0
/* 804E4964  4B FF 06 B1 */	bl Player_actor_request_main_index
/* 804E4968  38 60 00 01 */	li r3, 1
/* 804E496C  48 00 00 08 */	b lbl_804E4974
lbl_804E4970:
/* 804E4970  38 60 00 00 */	li r3, 0
lbl_804E4974:
/* 804E4974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E497C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E4980  7C 08 03 A6 */	mtlr r0
/* 804E4984  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4988  4E 80 00 20 */	blr 
