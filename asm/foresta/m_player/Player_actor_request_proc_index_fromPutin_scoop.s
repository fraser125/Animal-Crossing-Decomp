lbl_804F99EC:
/* 804F99EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F99F0  7C 08 02 A6 */	mflr r0
/* 804F99F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F99F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F99FC  7C 9F 23 78 */	mr r31, r4
/* 804F9A00  80 03 0D 28 */	lwz r0, 0xd28(r3)
/* 804F9A04  2C 00 00 00 */	cmpwi r0, 0
/* 804F9A08  40 82 00 0C */	bne lbl_804F9A14
/* 804F9A0C  4B FF E8 8D */	bl Player_actor_request_proc_index_fromFill_scoop
/* 804F9A10  48 00 00 20 */	b lbl_804F9A30
lbl_804F9A14:
/* 804F9A14  2C 05 00 00 */	cmpwi r5, 0
/* 804F9A18  41 82 00 18 */	beq lbl_804F9A30
/* 804F9A1C  4B FD B9 51 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F9A20  7F E3 FB 78 */	mr r3, r31
/* 804F9A24  38 80 00 03 */	li r4, 3
/* 804F9A28  38 A0 00 22 */	li r5, 0x22
/* 804F9A2C  48 00 EA 71 */	bl Player_actor_request_main_demo_get_golden_item_all
lbl_804F9A30:
/* 804F9A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9A38  7C 08 03 A6 */	mtlr r0
/* 804F9A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9A40  4E 80 00 20 */	blr 
