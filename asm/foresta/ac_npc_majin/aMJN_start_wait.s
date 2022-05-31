lbl_80556E44:
/* 80556E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556E48  7C 08 02 A6 */	mflr r0
/* 80556E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80556E54  7C 9F 23 78 */	mr r31, r4
/* 80556E58  93 C1 00 08 */	stw r30, 8(r1)
/* 80556E5C  7C 7E 1B 78 */	mr r30, r3
/* 80556E60  7F E3 FB 78 */	mr r3, r31
/* 80556E64  4B E8 75 BD */	bl mPlib_check_player_actor_main_index_OutDoorMove2
/* 80556E68  2C 03 00 00 */	cmpwi r3, 0
/* 80556E6C  40 82 00 10 */	bne lbl_80556E7C
/* 80556E70  7F C3 F3 78 */	mr r3, r30
/* 80556E74  7F E4 FB 78 */	mr r4, r31
/* 80556E78  4B FF FE 71 */	bl aMJN_setup_start_think
lbl_80556E7C:
/* 80556E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80556E84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80556E88  7C 08 03 A6 */	mtlr r0
/* 80556E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80556E90  4E 80 00 20 */	blr 
