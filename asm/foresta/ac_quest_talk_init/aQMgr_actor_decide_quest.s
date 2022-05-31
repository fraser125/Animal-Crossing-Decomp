lbl_8048A2FC:
/* 8048A2FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048A300  7C 08 02 A6 */	mflr r0
/* 8048A304  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048A308  39 61 00 20 */	addi r11, r1, 0x20
/* 8048A30C  4B C1 0B C9 */	bl func_8009AED4
/* 8048A310  7C 7E 1B 78 */	mr r30, r3
/* 8048A314  3B E0 00 00 */	li r31, 0
/* 8048A318  80 83 01 78 */	lwz r4, 0x178(r3)
/* 8048A31C  80 84 00 00 */	lwz r4, 0(r4)
/* 8048A320  83 A4 01 7C */	lwz r29, 0x17c(r4)
/* 8048A324  4B FF F8 F5 */	bl aQMgr_actor_check_client_quest_info
/* 8048A328  2C 03 00 01 */	cmpwi r3, 1
/* 8048A32C  40 82 00 48 */	bne lbl_8048A374
/* 8048A330  7F C3 F3 78 */	mr r3, r30
/* 8048A334  4B FF FB B9 */	bl aQMgr_actor_client_quest_set_new
/* 8048A338  88 1E 01 C8 */	lbz r0, 0x1c8(r30)
/* 8048A33C  7F C3 F3 78 */	mr r3, r30
/* 8048A340  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 8048A344  4B FF FA 0D */	bl aQMgr_actor_get_free_quest_p
/* 8048A348  80 1E 02 00 */	lwz r0, 0x200(r30)
/* 8048A34C  28 00 00 00 */	cmplwi r0, 0
/* 8048A350  41 82 00 0C */	beq lbl_8048A35C
/* 8048A354  3B E0 00 01 */	li r31, 1
/* 8048A358  48 00 00 B0 */	b lbl_8048A408
lbl_8048A35C:
/* 8048A35C  88 1E 01 C8 */	lbz r0, 0x1c8(r30)
/* 8048A360  54 00 D7 BF */	rlwinm. r0, r0, 0x1a, 0x1e, 0x1f
/* 8048A364  40 82 00 A4 */	bne lbl_8048A408
/* 8048A368  7F C3 F3 78 */	mr r3, r30
/* 8048A36C  4B FF FB 4D */	bl aQMgr_actor_set_client_quest_info
/* 8048A370  48 00 00 98 */	b lbl_8048A408
lbl_8048A374:
/* 8048A374  38 60 00 04 */	li r3, 4
/* 8048A378  4B F5 A0 59 */	bl mQst_GetRandom
/* 8048A37C  2C 03 00 00 */	cmpwi r3, 0
/* 8048A380  41 82 00 88 */	beq lbl_8048A408
/* 8048A384  38 61 00 0C */	addi r3, r1, 0xc
/* 8048A388  38 81 00 08 */	addi r4, r1, 8
/* 8048A38C  4B FF FB 95 */	bl aQMgr_actor_decide_quest_type_kind
/* 8048A390  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8048A394  7F A5 EB 78 */	mr r5, r29
/* 8048A398  80 81 00 08 */	lwz r4, 8(r1)
/* 8048A39C  88 DD 08 99 */	lbz r6, 0x899(r29)
/* 8048A3A0  88 FD 08 9A */	lbz r7, 0x89a(r29)
/* 8048A3A4  4B FF FC CD */	bl aQMgr_actor_check_occur
/* 8048A3A8  2C 03 00 01 */	cmpwi r3, 1
/* 8048A3AC  40 82 00 5C */	bne lbl_8048A408
/* 8048A3B0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8048A3B4  7F C3 F3 78 */	mr r3, r30
/* 8048A3B8  88 1E 01 C8 */	lbz r0, 0x1c8(r30)
/* 8048A3BC  50 80 36 32 */	rlwimi r0, r4, 6, 0x18, 0x19
/* 8048A3C0  98 1E 01 C8 */	stb r0, 0x1c8(r30)
/* 8048A3C4  80 81 00 08 */	lwz r4, 8(r1)
/* 8048A3C8  88 1E 01 C8 */	lbz r0, 0x1c8(r30)
/* 8048A3CC  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 8048A3D0  98 1E 01 C8 */	stb r0, 0x1c8(r30)
/* 8048A3D4  88 1E 01 C8 */	lbz r0, 0x1c8(r30)
/* 8048A3D8  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 8048A3DC  4B FF F9 75 */	bl aQMgr_actor_get_free_quest_p
/* 8048A3E0  80 1E 02 00 */	lwz r0, 0x200(r30)
/* 8048A3E4  28 00 00 00 */	cmplwi r0, 0
/* 8048A3E8  41 82 00 0C */	beq lbl_8048A3F4
/* 8048A3EC  3B E0 00 01 */	li r31, 1
/* 8048A3F0  48 00 00 18 */	b lbl_8048A408
lbl_8048A3F4:
/* 8048A3F4  88 1E 01 C8 */	lbz r0, 0x1c8(r30)
/* 8048A3F8  54 00 D7 BF */	rlwinm. r0, r0, 0x1a, 0x1e, 0x1f
/* 8048A3FC  40 82 00 0C */	bne lbl_8048A408
/* 8048A400  7F C3 F3 78 */	mr r3, r30
/* 8048A404  4B FF FA B5 */	bl aQMgr_actor_set_client_quest_info
lbl_8048A408:
/* 8048A408  7F E3 FB 78 */	mr r3, r31
/* 8048A40C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048A410  4B C1 0B 11 */	bl func_8009AF20
/* 8048A414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048A418  7C 08 03 A6 */	mtlr r0
/* 8048A41C  38 21 00 20 */	addi r1, r1, 0x20
/* 8048A420  4E 80 00 20 */	blr 
