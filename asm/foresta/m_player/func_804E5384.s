lbl_804E5384:
/* 804E5384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E5388  7C 08 02 A6 */	mflr r0
/* 804E538C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E5390  39 61 00 18 */	addi r11, r1, 0x18
/* 804E5394  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804E5398  4B BB 5B 3D */	bl func_8009AED4
/* 804E539C  FF E0 08 90 */	fmr f31, f1
/* 804E53A0  7C 9E 23 78 */	mr r30, r4
/* 804E53A4  7C 7D 1B 78 */	mr r29, r3
/* 804E53A8  7C BF 2B 78 */	mr r31, r5
/* 804E53AC  38 80 00 04 */	li r4, 4
/* 804E53B0  4B FF 50 A9 */	bl Player_actor_check_request_main_able
/* 804E53B4  2C 03 00 00 */	cmpwi r3, 0
/* 804E53B8  41 82 00 2C */	beq lbl_804E53E4
/* 804E53BC  7F A3 EB 78 */	mr r3, r29
/* 804E53C0  4B EF 42 81 */	bl get_player_actor_withoutCheck
/* 804E53C4  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804E53C8  7F E5 FB 78 */	mr r5, r31
/* 804E53CC  38 80 00 04 */	li r4, 4
/* 804E53D0  D3 E3 0D 64 */	stfs f31, 0xd64(r3)
/* 804E53D4  7F A3 EB 78 */	mr r3, r29
/* 804E53D8  4B FE FC 3D */	bl Player_actor_request_main_index
/* 804E53DC  38 60 00 01 */	li r3, 1
/* 804E53E0  48 00 00 08 */	b lbl_804E53E8
lbl_804E53E4:
/* 804E53E4  38 60 00 00 */	li r3, 0
lbl_804E53E8:
/* 804E53E8  39 61 00 18 */	addi r11, r1, 0x18
/* 804E53EC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804E53F0  4B BB 5B 31 */	bl func_8009AF20
/* 804E53F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E53F8  7C 08 03 A6 */	mtlr r0
/* 804E53FC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E5400  4E 80 00 20 */	blr 
