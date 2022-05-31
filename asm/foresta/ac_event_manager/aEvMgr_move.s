lbl_80419938:
/* 80419938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041993C  7C 08 02 A6 */	mflr r0
/* 80419940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80419944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80419948  7C 7F 1B 78 */	mr r31, r3
/* 8041994C  7C 83 23 78 */	mr r3, r4
/* 80419950  7F E4 FB 78 */	mr r4, r31
/* 80419954  4B FF FC 21 */	bl aEvMgr_actor_renewal_player_pos
/* 80419958  4B F8 15 7D */	bl mEv_RenewalDataEveryDay
/* 8041995C  7F E3 FB 78 */	mr r3, r31
/* 80419960  48 00 90 09 */	bl schedule_main
/* 80419964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80419968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041996C  7C 08 03 A6 */	mtlr r0
/* 80419970  38 21 00 10 */	addi r1, r1, 0x10
/* 80419974  4E 80 00 20 */	blr 
