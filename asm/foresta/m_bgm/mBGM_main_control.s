lbl_8037CBA0:
/* 8037CBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CBA4  7C 08 02 A6 */	mflr r0
/* 8037CBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CBAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037CBB0  3B E3 01 64 */	addi r31, r3, 0x164
/* 8037CBB4  7F E3 FB 78 */	mr r3, r31
/* 8037CBB8  4B FF E1 15 */	bl mBGMPsComp_main_req_md
/* 8037CBBC  7F E3 FB 78 */	mr r3, r31
/* 8037CBC0  4B FF DE F9 */	bl mBGMPsComp_main_req_stop
/* 8037CBC4  7F E3 FB 78 */	mr r3, r31
/* 8037CBC8  4B FF DF 91 */	bl mBGMPsComp_main_remove
/* 8037CBCC  7F E3 FB 78 */	mr r3, r31
/* 8037CBD0  4B FF DF FD */	bl mBGMPsComp_main_req_start
/* 8037CBD4  7F E3 FB 78 */	mr r3, r31
/* 8037CBD8  4B FF E0 99 */	bl mBGMPsComp_main_req_pause
/* 8037CBDC  7F E3 FB 78 */	mr r3, r31
/* 8037CBE0  4B FF E5 61 */	bl mBGMPsComp_main_req_volume
/* 8037CBE4  7F E3 FB 78 */	mr r3, r31
/* 8037CBE8  4B FF EB 55 */	bl mBGMPsComp_main_inform_sound
/* 8037CBEC  7F E3 FB 78 */	mr r3, r31
/* 8037CBF0  4B FF E0 F5 */	bl mBGMPsComp_main_md_move
/* 8037CBF4  7F E3 FB 78 */	mr r3, r31
/* 8037CBF8  4B FF EB A5 */	bl mBGMPsComp_main_counter_dec
/* 8037CBFC  7F E3 FB 78 */	mr r3, r31
/* 8037CC00  4B FF EB F1 */	bl mBGMPsComp_main_fo_check
/* 8037CC04  7F E3 FB 78 */	mr r3, r31
/* 8037CC08  4B FF EC A1 */	bl mBGMPsComp_main_lost
/* 8037CC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CC14  7C 08 03 A6 */	mtlr r0
/* 8037CC18  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CC1C  4E 80 00 20 */	blr 
