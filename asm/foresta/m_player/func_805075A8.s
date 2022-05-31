lbl_805075A8:
/* 805075A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805075AC  7C 08 02 A6 */	mflr r0
/* 805075B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805075B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805075B8  7C 9F 23 78 */	mr r31, r4
/* 805075BC  7F E5 FB 78 */	mr r5, r31
/* 805075C0  38 80 00 72 */	li r4, 0x72
/* 805075C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805075C8  7C 7E 1B 78 */	mr r30, r3
/* 805075CC  4B FD 2E 8D */	bl Player_actor_check_request_main_able
/* 805075D0  2C 03 00 00 */	cmpwi r3, 0
/* 805075D4  41 82 00 1C */	beq lbl_805075F0
/* 805075D8  7F C3 F3 78 */	mr r3, r30
/* 805075DC  7F E5 FB 78 */	mr r5, r31
/* 805075E0  38 80 00 72 */	li r4, 0x72
/* 805075E4  4B FC DA 31 */	bl Player_actor_request_main_index
/* 805075E8  38 60 00 01 */	li r3, 1
/* 805075EC  48 00 00 08 */	b lbl_805075F4
lbl_805075F0:
/* 805075F0  38 60 00 00 */	li r3, 0
lbl_805075F4:
/* 805075F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805075F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805075FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80507600  7C 08 03 A6 */	mtlr r0
/* 80507604  38 21 00 10 */	addi r1, r1, 0x10
/* 80507608  4E 80 00 20 */	blr 
