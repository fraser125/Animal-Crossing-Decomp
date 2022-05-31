lbl_804FD1F8:
/* 804FD1F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FD1FC  7C 08 02 A6 */	mflr r0
/* 804FD200  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FD204  39 61 00 30 */	addi r11, r1, 0x30
/* 804FD208  4B B9 DC 35 */	bl func_8009AE3C
/* 804FD20C  39 61 00 18 */	addi r11, r1, 0x18
/* 804FD210  4B B9 DC C5 */	bl func_8009AED4
/* 804FD214  FF A0 08 90 */	fmr f29, f1
/* 804FD218  7C 9E 23 78 */	mr r30, r4
/* 804FD21C  FF C0 10 90 */	fmr f30, f2
/* 804FD220  7C 7D 1B 78 */	mr r29, r3
/* 804FD224  FF E0 18 90 */	fmr f31, f3
/* 804FD228  7C BF 2B 78 */	mr r31, r5
/* 804FD22C  38 80 00 4B */	li r4, 0x4b
/* 804FD230  4B FD D2 29 */	bl Player_actor_check_request_main_able
/* 804FD234  2C 03 00 00 */	cmpwi r3, 0
/* 804FD238  41 82 00 34 */	beq lbl_804FD26C
/* 804FD23C  7F A3 EB 78 */	mr r3, r29
/* 804FD240  4B ED C4 01 */	bl get_player_actor_withoutCheck
/* 804FD244  D3 A3 0D 60 */	stfs f29, 0xd60(r3)
/* 804FD248  7F E5 FB 78 */	mr r5, r31
/* 804FD24C  38 80 00 4B */	li r4, 0x4b
/* 804FD250  D3 C3 0D 64 */	stfs f30, 0xd64(r3)
/* 804FD254  D3 E3 0D 68 */	stfs f31, 0xd68(r3)
/* 804FD258  93 C3 0D 6C */	stw r30, 0xd6c(r3)
/* 804FD25C  7F A3 EB 78 */	mr r3, r29
/* 804FD260  4B FD 7D B5 */	bl Player_actor_request_main_index
/* 804FD264  38 60 00 01 */	li r3, 1
/* 804FD268  48 00 00 08 */	b lbl_804FD270
lbl_804FD26C:
/* 804FD26C  38 60 00 00 */	li r3, 0
lbl_804FD270:
/* 804FD270  39 61 00 30 */	addi r11, r1, 0x30
/* 804FD274  4B B9 DC 15 */	bl func_8009AE88
/* 804FD278  39 61 00 18 */	addi r11, r1, 0x18
/* 804FD27C  4B B9 DC A5 */	bl func_8009AF20
/* 804FD280  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FD284  7C 08 03 A6 */	mtlr r0
/* 804FD288  38 21 00 30 */	addi r1, r1, 0x30
/* 804FD28C  4E 80 00 20 */	blr 
