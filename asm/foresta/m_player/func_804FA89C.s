lbl_804FA89C:
/* 804FA89C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FA8A0  7C 08 02 A6 */	mflr r0
/* 804FA8A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FA8A8  39 61 00 28 */	addi r11, r1, 0x28
/* 804FA8AC  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 804FA8B0  4B BA 06 1D */	bl func_8009AECC
/* 804FA8B4  FF E0 08 90 */	fmr f31, f1
/* 804FA8B8  7C 9C 23 78 */	mr r28, r4
/* 804FA8BC  7C FF 3B 78 */	mr r31, r7
/* 804FA8C0  7C BD 2B 78 */	mr r29, r5
/* 804FA8C4  7C 7B 1B 78 */	mr r27, r3
/* 804FA8C8  7C DE 33 78 */	mr r30, r6
/* 804FA8CC  7F E5 FB 78 */	mr r5, r31
/* 804FA8D0  38 80 00 41 */	li r4, 0x41
/* 804FA8D4  4B FD FB 85 */	bl Player_actor_check_request_main_able
/* 804FA8D8  2C 03 00 00 */	cmpwi r3, 0
/* 804FA8DC  41 82 00 34 */	beq lbl_804FA910
/* 804FA8E0  7F 63 DB 78 */	mr r3, r27
/* 804FA8E4  4B ED ED 5D */	bl get_player_actor_withoutCheck
/* 804FA8E8  93 83 0D 60 */	stw r28, 0xd60(r3)
/* 804FA8EC  7F E5 FB 78 */	mr r5, r31
/* 804FA8F0  38 80 00 41 */	li r4, 0x41
/* 804FA8F4  93 A3 0D 64 */	stw r29, 0xd64(r3)
/* 804FA8F8  D3 E3 0D 68 */	stfs f31, 0xd68(r3)
/* 804FA8FC  93 C3 0D 6C */	stw r30, 0xd6c(r3)
/* 804FA900  7F 63 DB 78 */	mr r3, r27
/* 804FA904  4B FD A7 11 */	bl Player_actor_request_main_index
/* 804FA908  38 60 00 01 */	li r3, 1
/* 804FA90C  48 00 00 08 */	b lbl_804FA914
lbl_804FA910:
/* 804FA910  38 60 00 00 */	li r3, 0
lbl_804FA914:
/* 804FA914  39 61 00 28 */	addi r11, r1, 0x28
/* 804FA918  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 804FA91C  4B BA 05 FD */	bl func_8009AF18
/* 804FA920  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FA924  7C 08 03 A6 */	mtlr r0
/* 804FA928  38 21 00 30 */	addi r1, r1, 0x30
/* 804FA92C  4E 80 00 20 */	blr 
