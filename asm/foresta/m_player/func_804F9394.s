lbl_804F9394:
/* 804F9394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9398  7C 08 02 A6 */	mflr r0
/* 804F939C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F93A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F93A4  7C 9F 23 78 */	mr r31, r4
/* 804F93A8  7F E5 FB 78 */	mr r5, r31
/* 804F93AC  38 80 00 3D */	li r4, 0x3d
/* 804F93B0  93 C1 00 08 */	stw r30, 8(r1)
/* 804F93B4  7C 7E 1B 78 */	mr r30, r3
/* 804F93B8  4B FE 10 A1 */	bl Player_actor_check_request_main_able
/* 804F93BC  2C 03 00 00 */	cmpwi r3, 0
/* 804F93C0  41 82 00 1C */	beq lbl_804F93DC
/* 804F93C4  7F C3 F3 78 */	mr r3, r30
/* 804F93C8  7F E5 FB 78 */	mr r5, r31
/* 804F93CC  38 80 00 3D */	li r4, 0x3d
/* 804F93D0  4B FD BC 45 */	bl Player_actor_request_main_index
/* 804F93D4  38 60 00 01 */	li r3, 1
/* 804F93D8  48 00 00 08 */	b lbl_804F93E0
lbl_804F93DC:
/* 804F93DC  38 60 00 00 */	li r3, 0
lbl_804F93E0:
/* 804F93E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F93E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F93E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F93EC  7C 08 03 A6 */	mtlr r0
/* 804F93F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F93F4  4E 80 00 20 */	blr 
