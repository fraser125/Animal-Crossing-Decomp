lbl_804E5914:
/* 804E5914  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E5918  7C 08 02 A6 */	mflr r0
/* 804E591C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E5920  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5924  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 804E5928  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804E592C  4B BB 55 A9 */	bl func_8009AED4
/* 804E5930  FF C0 08 90 */	fmr f30, f1
/* 804E5934  7C 9E 23 78 */	mr r30, r4
/* 804E5938  FF E0 10 90 */	fmr f31, f2
/* 804E593C  7C 7D 1B 78 */	mr r29, r3
/* 804E5940  7C BF 2B 78 */	mr r31, r5
/* 804E5944  38 80 00 06 */	li r4, 6
/* 804E5948  4B FF 4B 11 */	bl Player_actor_check_request_main_able
/* 804E594C  2C 03 00 00 */	cmpwi r3, 0
/* 804E5950  41 82 00 30 */	beq lbl_804E5980
/* 804E5954  7F A3 EB 78 */	mr r3, r29
/* 804E5958  4B EF 3C E9 */	bl get_player_actor_withoutCheck
/* 804E595C  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804E5960  7F E5 FB 78 */	mr r5, r31
/* 804E5964  38 80 00 06 */	li r4, 6
/* 804E5968  D3 C3 0D 64 */	stfs f30, 0xd64(r3)
/* 804E596C  D3 E3 0D 68 */	stfs f31, 0xd68(r3)
/* 804E5970  7F A3 EB 78 */	mr r3, r29
/* 804E5974  4B FE F6 A1 */	bl Player_actor_request_main_index
/* 804E5978  38 60 00 01 */	li r3, 1
/* 804E597C  48 00 00 08 */	b lbl_804E5984
lbl_804E5980:
/* 804E5980  38 60 00 00 */	li r3, 0
lbl_804E5984:
/* 804E5984  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5988  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 804E598C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804E5990  4B BB 55 91 */	bl func_8009AF20
/* 804E5994  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E5998  7C 08 03 A6 */	mtlr r0
/* 804E599C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E59A0  4E 80 00 20 */	blr 
