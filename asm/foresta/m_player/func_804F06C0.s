lbl_804F06C0:
/* 804F06C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F06C4  7C 08 02 A6 */	mflr r0
/* 804F06C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F06CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F06D0  7C 9F 23 78 */	mr r31, r4
/* 804F06D4  7F E5 FB 78 */	mr r5, r31
/* 804F06D8  38 80 00 26 */	li r4, 0x26
/* 804F06DC  93 C1 00 08 */	stw r30, 8(r1)
/* 804F06E0  7C 7E 1B 78 */	mr r30, r3
/* 804F06E4  4B FE 9D 75 */	bl Player_actor_check_request_main_able
/* 804F06E8  2C 03 00 00 */	cmpwi r3, 0
/* 804F06EC  41 82 00 1C */	beq lbl_804F0708
/* 804F06F0  7F C3 F3 78 */	mr r3, r30
/* 804F06F4  7F E5 FB 78 */	mr r5, r31
/* 804F06F8  38 80 00 26 */	li r4, 0x26
/* 804F06FC  4B FE 49 19 */	bl Player_actor_request_main_index
/* 804F0700  38 60 00 01 */	li r3, 1
/* 804F0704  48 00 00 08 */	b lbl_804F070C
lbl_804F0708:
/* 804F0708  38 60 00 00 */	li r3, 0
lbl_804F070C:
/* 804F070C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0714  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F0718  7C 08 03 A6 */	mtlr r0
/* 804F071C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0720  4E 80 00 20 */	blr 
