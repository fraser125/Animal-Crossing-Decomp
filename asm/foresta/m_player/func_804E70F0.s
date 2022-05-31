lbl_804E70F0:
/* 804E70F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E70F4  7C 08 02 A6 */	mflr r0
/* 804E70F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E70FC  39 61 00 18 */	addi r11, r1, 0x18
/* 804E7100  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804E7104  4B BB 3D CD */	bl func_8009AED0
/* 804E7108  FF E0 08 90 */	fmr f31, f1
/* 804E710C  7C 9D 23 78 */	mr r29, r4
/* 804E7110  7C 7C 1B 78 */	mr r28, r3
/* 804E7114  7C BE 2B 78 */	mr r30, r5
/* 804E7118  38 80 00 0A */	li r4, 0xa
/* 804E711C  4B FF 33 3D */	bl Player_actor_check_request_main_able
/* 804E7120  2C 03 00 00 */	cmpwi r3, 0
/* 804E7124  41 82 00 30 */	beq lbl_804E7154
/* 804E7128  7F 83 E3 78 */	mr r3, r28
/* 804E712C  4B EF 25 15 */	bl get_player_actor_withoutCheck
/* 804E7130  7C 7F 1B 78 */	mr r31, r3
/* 804E7134  7F 83 E3 78 */	mr r3, r28
/* 804E7138  7F C5 F3 78 */	mr r5, r30
/* 804E713C  38 80 00 0A */	li r4, 0xa
/* 804E7140  4B FE DE D5 */	bl Player_actor_request_main_index
/* 804E7144  D3 FF 0D 60 */	stfs f31, 0xd60(r31)
/* 804E7148  38 60 00 01 */	li r3, 1
/* 804E714C  93 BF 0D 64 */	stw r29, 0xd64(r31)
/* 804E7150  48 00 00 08 */	b lbl_804E7158
lbl_804E7154:
/* 804E7154  38 60 00 00 */	li r3, 0
lbl_804E7158:
/* 804E7158  39 61 00 18 */	addi r11, r1, 0x18
/* 804E715C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804E7160  4B BB 3D BD */	bl func_8009AF1C
/* 804E7164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E7168  7C 08 03 A6 */	mtlr r0
/* 804E716C  38 21 00 20 */	addi r1, r1, 0x20
/* 804E7170  4E 80 00 20 */	blr 
