lbl_80506B10:
/* 80506B10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80506B14  7C 08 02 A6 */	mflr r0
/* 80506B18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80506B1C  39 61 00 18 */	addi r11, r1, 0x18
/* 80506B20  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80506B24  4B B9 43 B1 */	bl func_8009AED4
/* 80506B28  FF E0 08 90 */	fmr f31, f1
/* 80506B2C  7C 9E 23 78 */	mr r30, r4
/* 80506B30  7C 7D 1B 78 */	mr r29, r3
/* 80506B34  7C BF 2B 78 */	mr r31, r5
/* 80506B38  38 80 00 6F */	li r4, 0x6f
/* 80506B3C  4B FD 39 1D */	bl Player_actor_check_request_main_able
/* 80506B40  2C 03 00 00 */	cmpwi r3, 0
/* 80506B44  41 82 00 2C */	beq lbl_80506B70
/* 80506B48  7F A3 EB 78 */	mr r3, r29
/* 80506B4C  4B ED 2A F5 */	bl get_player_actor_withoutCheck
/* 80506B50  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 80506B54  7F E5 FB 78 */	mr r5, r31
/* 80506B58  38 80 00 6F */	li r4, 0x6f
/* 80506B5C  D3 E3 0D 64 */	stfs f31, 0xd64(r3)
/* 80506B60  7F A3 EB 78 */	mr r3, r29
/* 80506B64  4B FC E4 B1 */	bl Player_actor_request_main_index
/* 80506B68  38 60 00 01 */	li r3, 1
/* 80506B6C  48 00 00 08 */	b lbl_80506B74
lbl_80506B70:
/* 80506B70  38 60 00 00 */	li r3, 0
lbl_80506B74:
/* 80506B74  39 61 00 18 */	addi r11, r1, 0x18
/* 80506B78  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80506B7C  4B B9 43 A5 */	bl func_8009AF20
/* 80506B80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80506B84  7C 08 03 A6 */	mtlr r0
/* 80506B88  38 21 00 20 */	addi r1, r1, 0x20
/* 80506B8C  4E 80 00 20 */	blr 
