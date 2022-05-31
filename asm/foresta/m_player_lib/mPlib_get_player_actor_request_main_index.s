lbl_803D9694:
/* 803D9694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9698  7C 08 02 A6 */	mflr r0
/* 803D969C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D96A0  4B FF FF A1 */	bl get_player_actor_withoutCheck
/* 803D96A4  80 03 0D 10 */	lwz r0, 0xd10(r3)
/* 803D96A8  2C 00 00 00 */	cmpwi r0, 0
/* 803D96AC  41 82 00 0C */	beq lbl_803D96B8
/* 803D96B0  80 63 0D 08 */	lwz r3, 0xd08(r3)
/* 803D96B4  48 00 00 08 */	b lbl_803D96BC
lbl_803D96B8:
/* 803D96B8  38 60 FF FF */	li r3, -1
lbl_803D96BC:
/* 803D96BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D96C0  7C 08 03 A6 */	mtlr r0
/* 803D96C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D96C8  4E 80 00 20 */	blr 
