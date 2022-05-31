lbl_805016A0:
/* 805016A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805016A4  7C 08 02 A6 */	mflr r0
/* 805016A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805016AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805016B0  7C 9F 23 78 */	mr r31, r4
/* 805016B4  7F E5 FB 78 */	mr r5, r31
/* 805016B8  38 80 00 5B */	li r4, 0x5b
/* 805016BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805016C0  7C 7E 1B 78 */	mr r30, r3
/* 805016C4  4B FD 8D 95 */	bl Player_actor_check_request_main_able
/* 805016C8  2C 03 00 00 */	cmpwi r3, 0
/* 805016CC  41 82 00 1C */	beq lbl_805016E8
/* 805016D0  7F C3 F3 78 */	mr r3, r30
/* 805016D4  7F E5 FB 78 */	mr r5, r31
/* 805016D8  38 80 00 5B */	li r4, 0x5b
/* 805016DC  4B FD 39 39 */	bl Player_actor_request_main_index
/* 805016E0  38 60 00 01 */	li r3, 1
/* 805016E4  48 00 00 08 */	b lbl_805016EC
lbl_805016E8:
/* 805016E8  38 60 00 00 */	li r3, 0
lbl_805016EC:
/* 805016EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805016F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805016F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805016F8  7C 08 03 A6 */	mtlr r0
/* 805016FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80501700  4E 80 00 20 */	blr 
