lbl_80505448:
/* 80505448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050544C  7C 08 02 A6 */	mflr r0
/* 80505450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80505458  7C 9F 23 78 */	mr r31, r4
/* 8050545C  7F E5 FB 78 */	mr r5, r31
/* 80505460  38 80 00 6A */	li r4, 0x6a
/* 80505464  93 C1 00 08 */	stw r30, 8(r1)
/* 80505468  7C 7E 1B 78 */	mr r30, r3
/* 8050546C  4B FD 4F ED */	bl Player_actor_check_request_main_able
/* 80505470  2C 03 00 00 */	cmpwi r3, 0
/* 80505474  41 82 00 1C */	beq lbl_80505490
/* 80505478  7F C3 F3 78 */	mr r3, r30
/* 8050547C  7F E5 FB 78 */	mr r5, r31
/* 80505480  38 80 00 6A */	li r4, 0x6a
/* 80505484  4B FC FB 91 */	bl Player_actor_request_main_index
/* 80505488  38 60 00 01 */	li r3, 1
/* 8050548C  48 00 00 08 */	b lbl_80505494
lbl_80505490:
/* 80505490  38 60 00 00 */	li r3, 0
lbl_80505494:
/* 80505494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050549C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805054A0  7C 08 03 A6 */	mtlr r0
/* 805054A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805054A8  4E 80 00 20 */	blr 