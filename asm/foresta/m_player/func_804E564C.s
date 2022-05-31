lbl_804E564C:
/* 804E564C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E5650  7C 08 02 A6 */	mflr r0
/* 804E5654  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E5658  39 61 00 20 */	addi r11, r1, 0x20
/* 804E565C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 804E5660  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804E5664  4B BB 58 71 */	bl func_8009AED4
/* 804E5668  FF C0 08 90 */	fmr f30, f1
/* 804E566C  7C 9E 23 78 */	mr r30, r4
/* 804E5670  FF E0 10 90 */	fmr f31, f2
/* 804E5674  7C 7D 1B 78 */	mr r29, r3
/* 804E5678  7C BF 2B 78 */	mr r31, r5
/* 804E567C  38 80 00 05 */	li r4, 5
/* 804E5680  4B FF 4D D9 */	bl Player_actor_check_request_main_able
/* 804E5684  2C 03 00 00 */	cmpwi r3, 0
/* 804E5688  41 82 00 30 */	beq lbl_804E56B8
/* 804E568C  7F A3 EB 78 */	mr r3, r29
/* 804E5690  4B EF 3F B1 */	bl get_player_actor_withoutCheck
/* 804E5694  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804E5698  7F E5 FB 78 */	mr r5, r31
/* 804E569C  38 80 00 05 */	li r4, 5
/* 804E56A0  D3 C3 0D 64 */	stfs f30, 0xd64(r3)
/* 804E56A4  D3 E3 0D 68 */	stfs f31, 0xd68(r3)
/* 804E56A8  7F A3 EB 78 */	mr r3, r29
/* 804E56AC  4B FE F9 69 */	bl Player_actor_request_main_index
/* 804E56B0  38 60 00 01 */	li r3, 1
/* 804E56B4  48 00 00 08 */	b lbl_804E56BC
lbl_804E56B8:
/* 804E56B8  38 60 00 00 */	li r3, 0
lbl_804E56BC:
/* 804E56BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E56C0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 804E56C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804E56C8  4B BB 58 59 */	bl func_8009AF20
/* 804E56CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E56D0  7C 08 03 A6 */	mtlr r0
/* 804E56D4  38 21 00 30 */	addi r1, r1, 0x30
/* 804E56D8  4E 80 00 20 */	blr 
