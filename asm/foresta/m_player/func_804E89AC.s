lbl_804E89AC:
/* 804E89AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E89B0  7C 08 02 A6 */	mflr r0
/* 804E89B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E89B8  39 61 00 18 */	addi r11, r1, 0x18
/* 804E89BC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804E89C0  4B BB 25 11 */	bl func_8009AED0
/* 804E89C4  FF E0 08 90 */	fmr f31, f1
/* 804E89C8  7C 9D 23 78 */	mr r29, r4
/* 804E89CC  7C 7C 1B 78 */	mr r28, r3
/* 804E89D0  7C BE 2B 78 */	mr r30, r5
/* 804E89D4  38 80 00 0E */	li r4, 0xe
/* 804E89D8  4B FF 1A 81 */	bl Player_actor_check_request_main_able
/* 804E89DC  2C 03 00 00 */	cmpwi r3, 0
/* 804E89E0  41 82 00 30 */	beq lbl_804E8A10
/* 804E89E4  7F 83 E3 78 */	mr r3, r28
/* 804E89E8  4B EF 0C 59 */	bl get_player_actor_withoutCheck
/* 804E89EC  7C 7F 1B 78 */	mr r31, r3
/* 804E89F0  7F 83 E3 78 */	mr r3, r28
/* 804E89F4  7F C5 F3 78 */	mr r5, r30
/* 804E89F8  38 80 00 0E */	li r4, 0xe
/* 804E89FC  4B FE C6 19 */	bl Player_actor_request_main_index
/* 804E8A00  D3 FF 0D 60 */	stfs f31, 0xd60(r31)
/* 804E8A04  38 60 00 01 */	li r3, 1
/* 804E8A08  93 BF 0D 64 */	stw r29, 0xd64(r31)
/* 804E8A0C  48 00 00 08 */	b lbl_804E8A14
lbl_804E8A10:
/* 804E8A10  38 60 00 00 */	li r3, 0
lbl_804E8A14:
/* 804E8A14  39 61 00 18 */	addi r11, r1, 0x18
/* 804E8A18  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804E8A1C  4B BB 25 01 */	bl func_8009AF1C
/* 804E8A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E8A24  7C 08 03 A6 */	mtlr r0
/* 804E8A28  38 21 00 20 */	addi r1, r1, 0x20
/* 804E8A2C  4E 80 00 20 */	blr 
