lbl_80503344:
/* 80503344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80503348  7C 08 02 A6 */	mflr r0
/* 8050334C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503350  39 61 00 20 */	addi r11, r1, 0x20
/* 80503354  4B B9 7B 81 */	bl func_8009AED4
/* 80503358  7C 7D 1B 78 */	mr r29, r3
/* 8050335C  7C 9E 23 78 */	mr r30, r4
/* 80503360  7C BF 2B 78 */	mr r31, r5
/* 80503364  38 60 00 62 */	li r3, 0x62
/* 80503368  4B FD 70 71 */	bl Player_actor_check_able_request_main_index_for_reset
/* 8050336C  2C 03 00 00 */	cmpwi r3, 0
/* 80503370  40 82 00 54 */	bne lbl_805033C4
/* 80503374  7F A3 EB 78 */	mr r3, r29
/* 80503378  4B ED 62 C9 */	bl get_player_actor_withoutCheck
/* 8050337C  80 DE 00 00 */	lwz r6, 0(r30)
/* 80503380  38 80 00 62 */	li r4, 0x62
/* 80503384  80 1E 00 04 */	lwz r0, 4(r30)
/* 80503388  38 A0 00 08 */	li r5, 8
/* 8050338C  90 C3 0D 6C */	stw r6, 0xd6c(r3)
/* 80503390  90 03 0D 70 */	stw r0, 0xd70(r3)
/* 80503394  80 1E 00 08 */	lwz r0, 8(r30)
/* 80503398  90 03 0D 74 */	stw r0, 0xd74(r3)
/* 8050339C  80 DF 00 00 */	lwz r6, 0(r31)
/* 805033A0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805033A4  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 805033A8  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 805033AC  80 1F 00 08 */	lwz r0, 8(r31)
/* 805033B0  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 805033B4  7F A3 EB 78 */	mr r3, r29
/* 805033B8  4B FD 1C 5D */	bl Player_actor_request_main_index
/* 805033BC  38 60 00 01 */	li r3, 1
/* 805033C0  48 00 00 08 */	b lbl_805033C8
lbl_805033C4:
/* 805033C4  38 60 00 00 */	li r3, 0
lbl_805033C8:
/* 805033C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805033CC  4B B9 7B 55 */	bl func_8009AF20
/* 805033D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805033D4  7C 08 03 A6 */	mtlr r0
/* 805033D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805033DC  4E 80 00 20 */	blr 