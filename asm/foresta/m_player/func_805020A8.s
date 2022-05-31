lbl_805020A8:
/* 805020A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805020AC  7C 08 02 A6 */	mflr r0
/* 805020B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805020B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805020B8  7C 9F 23 78 */	mr r31, r4
/* 805020BC  7F E5 FB 78 */	mr r5, r31
/* 805020C0  38 80 00 5E */	li r4, 0x5e
/* 805020C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805020C8  7C 7E 1B 78 */	mr r30, r3
/* 805020CC  4B FD 83 8D */	bl Player_actor_check_request_main_able
/* 805020D0  2C 03 00 00 */	cmpwi r3, 0
/* 805020D4  41 82 00 1C */	beq lbl_805020F0
/* 805020D8  7F C3 F3 78 */	mr r3, r30
/* 805020DC  7F E5 FB 78 */	mr r5, r31
/* 805020E0  38 80 00 5E */	li r4, 0x5e
/* 805020E4  4B FD 2F 31 */	bl Player_actor_request_main_index
/* 805020E8  38 60 00 01 */	li r3, 1
/* 805020EC  48 00 00 08 */	b lbl_805020F4
lbl_805020F0:
/* 805020F0  38 60 00 00 */	li r3, 0
lbl_805020F4:
/* 805020F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805020F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805020FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80502100  7C 08 03 A6 */	mtlr r0
/* 80502104  38 21 00 10 */	addi r1, r1, 0x10
/* 80502108  4E 80 00 20 */	blr 
