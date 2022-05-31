lbl_804E506C:
/* 804E506C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5070  7C 08 02 A6 */	mflr r0
/* 804E5074  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E507C  7C 9F 23 78 */	mr r31, r4
/* 804E5080  7F E5 FB 78 */	mr r5, r31
/* 804E5084  38 80 00 03 */	li r4, 3
/* 804E5088  93 C1 00 08 */	stw r30, 8(r1)
/* 804E508C  7C 7E 1B 78 */	mr r30, r3
/* 804E5090  4B FF 53 C9 */	bl Player_actor_check_request_main_able
/* 804E5094  2C 03 00 00 */	cmpwi r3, 0
/* 804E5098  41 82 00 1C */	beq lbl_804E50B4
/* 804E509C  7F C3 F3 78 */	mr r3, r30
/* 804E50A0  7F E5 FB 78 */	mr r5, r31
/* 804E50A4  38 80 00 03 */	li r4, 3
/* 804E50A8  4B FE FF 6D */	bl Player_actor_request_main_index
/* 804E50AC  38 60 00 01 */	li r3, 1
/* 804E50B0  48 00 00 08 */	b lbl_804E50B8
lbl_804E50B4:
/* 804E50B4  38 60 00 00 */	li r3, 0
lbl_804E50B8:
/* 804E50B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E50BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E50C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E50C4  7C 08 03 A6 */	mtlr r0
/* 804E50C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E50CC  4E 80 00 20 */	blr 
