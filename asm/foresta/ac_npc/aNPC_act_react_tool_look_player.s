lbl_80534EB0:
/* 80534EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534EB4  7C 08 02 A6 */	mflr r0
/* 80534EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80534EC0  7C 7F 1B 78 */	mr r31, r3
/* 80534EC4  7C 83 23 78 */	mr r3, r4
/* 80534EC8  4B EA 47 79 */	bl get_player_actor_withoutCheck
/* 80534ECC  7C 66 1B 79 */	or. r6, r3, r3
/* 80534ED0  41 82 00 18 */	beq lbl_80534EE8
/* 80534ED4  7F E3 FB 78 */	mr r3, r31
/* 80534ED8  38 80 00 04 */	li r4, 4
/* 80534EDC  38 A0 00 01 */	li r5, 1
/* 80534EE0  38 E0 00 00 */	li r7, 0
/* 80534EE4  4B FF 93 41 */	bl aNPC_set_head_request
lbl_80534EE8:
/* 80534EE8  80 7F 09 88 */	lwz r3, 0x988(r31)
/* 80534EEC  38 03 FF FF */	addi r0, r3, -1
/* 80534EF0  90 1F 09 88 */	stw r0, 0x988(r31)
/* 80534EF4  80 1F 09 88 */	lwz r0, 0x988(r31)
/* 80534EF8  2C 00 00 00 */	cmpwi r0, 0
/* 80534EFC  40 80 00 0C */	bge lbl_80534F08
/* 80534F00  7F E3 FB 78 */	mr r3, r31
/* 80534F04  4B FF FF 01 */	bl func_80534E04
lbl_80534F08:
/* 80534F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80534F10  7C 08 03 A6 */	mtlr r0
/* 80534F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80534F18  4E 80 00 20 */	blr 
