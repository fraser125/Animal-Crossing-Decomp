lbl_804E3204:
/* 804E3204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3208  7C 08 02 A6 */	mflr r0
/* 804E320C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E3214  7C 7F 1B 78 */	mr r31, r3
/* 804E3218  4B FF F9 01 */	bl Player_actor_Item_set_balloon_lean_angle
/* 804E321C  7F E3 FB 78 */	mr r3, r31
/* 804E3220  4B FF F9 B5 */	bl Player_actor_Item_CulcAnimation_balloon_normal
/* 804E3224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3228  38 60 00 00 */	li r3, 0
/* 804E322C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E3230  7C 08 03 A6 */	mtlr r0
/* 804E3234  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3238  4E 80 00 20 */	blr 
