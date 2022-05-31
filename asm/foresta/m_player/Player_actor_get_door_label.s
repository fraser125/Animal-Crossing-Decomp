lbl_804D7C50:
/* 804D7C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7C54  7C 08 02 A6 */	mflr r0
/* 804D7C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7C60  7C 7F 1B 78 */	mr r31, r3
/* 804D7C64  4B F0 1A 0D */	bl mPlib_get_player_actor_main_index
/* 804D7C68  2C 03 00 10 */	cmpwi r3, 0x10
/* 804D7C6C  40 82 00 14 */	bne lbl_804D7C80
/* 804D7C70  7F E3 FB 78 */	mr r3, r31
/* 804D7C74  4B F0 19 CD */	bl get_player_actor_withoutCheck
/* 804D7C78  80 63 0D 18 */	lwz r3, 0xd18(r3)
/* 804D7C7C  48 00 00 08 */	b lbl_804D7C84
lbl_804D7C80:
/* 804D7C80  38 60 00 00 */	li r3, 0
lbl_804D7C84:
/* 804D7C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7C8C  7C 08 03 A6 */	mtlr r0
/* 804D7C90  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7C94  4E 80 00 20 */	blr 
