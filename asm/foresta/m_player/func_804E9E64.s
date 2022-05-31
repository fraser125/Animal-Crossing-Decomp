lbl_804E9E64:
/* 804E9E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9E68  7C 08 02 A6 */	mflr r0
/* 804E9E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9E70  4B EE F7 D1 */	bl get_player_actor_withoutCheck
/* 804E9E74  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804E9E78  2C 00 00 13 */	cmpwi r0, 0x13
/* 804E9E7C  40 80 00 18 */	bge lbl_804E9E94
/* 804E9E80  2C 00 00 0B */	cmpwi r0, 0xb
/* 804E9E84  40 80 00 20 */	bge lbl_804E9EA4
/* 804E9E88  2C 00 00 07 */	cmpwi r0, 7
/* 804E9E8C  40 80 00 10 */	bge lbl_804E9E9C
/* 804E9E90  48 00 00 14 */	b lbl_804E9EA4
lbl_804E9E94:
/* 804E9E94  2C 00 00 17 */	cmpwi r0, 0x17
/* 804E9E98  40 80 00 0C */	bge lbl_804E9EA4
lbl_804E9E9C:
/* 804E9E9C  38 60 00 01 */	li r3, 1
/* 804E9EA0  48 00 00 08 */	b lbl_804E9EA8
lbl_804E9EA4:
/* 804E9EA4  38 60 00 00 */	li r3, 0
lbl_804E9EA8:
/* 804E9EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9EAC  7C 08 03 A6 */	mtlr r0
/* 804E9EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9EB4  4E 80 00 20 */	blr 
