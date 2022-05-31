lbl_8041E9B8:
/* 8041E9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E9BC  7C 08 02 A6 */	mflr r0
/* 8041E9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041E9C8  7C 9F 23 78 */	mr r31, r4
/* 8041E9CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8041E9D0  7C 7E 1B 78 */	mr r30, r3
/* 8041E9D4  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E9D8  38 80 00 40 */	li r4, 0x40
/* 8041E9DC  4B F7 F1 25 */	bl mEv_check_status
/* 8041E9E0  2C 03 00 00 */	cmpwi r3, 0
/* 8041E9E4  41 82 00 30 */	beq lbl_8041EA14
/* 8041E9E8  7F C3 F3 78 */	mr r3, r30
/* 8041E9EC  7F E4 FB 78 */	mr r4, r31
/* 8041E9F0  38 A0 00 51 */	li r5, 0x51
/* 8041E9F4  4B FF E4 A5 */	bl walk_actor_at_wade
/* 8041E9F8  28 03 00 00 */	cmplwi r3, 0
/* 8041E9FC  41 82 00 18 */	beq lbl_8041EA14
/* 8041EA00  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041EA04  38 80 00 40 */	li r4, 0x40
/* 8041EA08  4B F7 F0 79 */	bl mEv_clear_status
/* 8041EA0C  38 60 00 01 */	li r3, 1
/* 8041EA10  48 00 00 08 */	b lbl_8041EA18
lbl_8041EA14:
/* 8041EA14  38 60 00 00 */	li r3, 0
lbl_8041EA18:
/* 8041EA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EA1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041EA20  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041EA24  7C 08 03 A6 */	mtlr r0
/* 8041EA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EA2C  4E 80 00 20 */	blr 
