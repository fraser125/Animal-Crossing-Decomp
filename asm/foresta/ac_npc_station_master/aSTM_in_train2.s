lbl_8057FE14:
/* 8057FE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FE18  7C 08 02 A6 */	mflr r0
/* 8057FE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057FE24  7C 9F 23 78 */	mr r31, r4
/* 8057FE28  93 C1 00 08 */	stw r30, 8(r1)
/* 8057FE2C  7C 7E 1B 78 */	mr r30, r3
/* 8057FE30  4B FF F9 69 */	bl aSTM_look_player
/* 8057FE34  7F E3 FB 78 */	mr r3, r31
/* 8057FE38  4B E5 98 39 */	bl mPlib_get_player_actor_main_index
/* 8057FE3C  2C 03 00 4C */	cmpwi r3, 0x4c
/* 8057FE40  41 82 00 14 */	beq lbl_8057FE54
/* 8057FE44  7F C3 F3 78 */	mr r3, r30
/* 8057FE48  7F E4 FB 78 */	mr r4, r31
/* 8057FE4C  38 A0 00 14 */	li r5, 0x14
/* 8057FE50  48 00 05 55 */	bl aSTM_setup_think_proc
lbl_8057FE54:
/* 8057FE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057FE5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057FE60  7C 08 03 A6 */	mtlr r0
/* 8057FE64  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FE68  4E 80 00 20 */	blr 
