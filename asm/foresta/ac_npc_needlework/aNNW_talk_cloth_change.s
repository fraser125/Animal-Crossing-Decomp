lbl_80563790:
/* 80563790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563794  7C 08 02 A6 */	mflr r0
/* 80563798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056379C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805637A0  7C 9F 23 78 */	mr r31, r4
/* 805637A4  93 C1 00 08 */	stw r30, 8(r1)
/* 805637A8  7C 7E 1B 78 */	mr r30, r3
/* 805637AC  7F E3 FB 78 */	mr r3, r31
/* 805637B0  4B E7 5E C1 */	bl mPlib_get_player_actor_main_index
/* 805637B4  2C 03 00 65 */	cmpwi r3, 0x65
/* 805637B8  41 82 00 34 */	beq lbl_805637EC
/* 805637BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805637C0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE20@ha */
/* 805637C4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805637C8  7F E3 FB 78 */	mr r3, r31
/* 805637CC  3C A4 00 02 */	addis r5, r4, 2
/* 805637D0  38 86 FE 20 */	addi r4, r6, 0xFE20 /* 0x0000FE20@l */
/* 805637D4  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 805637D8  38 C0 00 01 */	li r6, 1
/* 805637DC  A0 A5 10 88 */	lhz r5, 0x1088(r5)
/* 805637E0  4B E7 74 89 */	bl mPlib_request_main_change_cloth_forNPC_type1
/* 805637E4  7F C3 F3 78 */	mr r3, r30
/* 805637E8  48 00 0C B5 */	bl aNNW_change_talk_proc_next
lbl_805637EC:
/* 805637EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805637F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805637F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805637F8  7C 08 03 A6 */	mtlr r0
/* 805637FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80563800  4E 80 00 20 */	blr 
