lbl_804E6C08:
/* 804E6C08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E6C0C  7C 08 02 A6 */	mflr r0
/* 804E6C10  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E6C14  39 61 00 18 */	addi r11, r1, 0x18
/* 804E6C18  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804E6C1C  4B BB 42 B5 */	bl func_8009AED0
/* 804E6C20  FF E0 08 90 */	fmr f31, f1
/* 804E6C24  7C 9D 23 78 */	mr r29, r4
/* 804E6C28  7C 7C 1B 78 */	mr r28, r3
/* 804E6C2C  7C BE 2B 78 */	mr r30, r5
/* 804E6C30  38 80 00 09 */	li r4, 9
/* 804E6C34  4B FF 38 25 */	bl Player_actor_check_request_main_able
/* 804E6C38  2C 03 00 00 */	cmpwi r3, 0
/* 804E6C3C  41 82 00 30 */	beq lbl_804E6C6C
/* 804E6C40  7F 83 E3 78 */	mr r3, r28
/* 804E6C44  4B EF 29 FD */	bl get_player_actor_withoutCheck
/* 804E6C48  7C 7F 1B 78 */	mr r31, r3
/* 804E6C4C  7F 83 E3 78 */	mr r3, r28
/* 804E6C50  7F C5 F3 78 */	mr r5, r30
/* 804E6C54  38 80 00 09 */	li r4, 9
/* 804E6C58  4B FE E3 BD */	bl Player_actor_request_main_index
/* 804E6C5C  D3 FF 0D 60 */	stfs f31, 0xd60(r31)
/* 804E6C60  38 60 00 01 */	li r3, 1
/* 804E6C64  93 BF 0D 64 */	stw r29, 0xd64(r31)
/* 804E6C68  48 00 00 08 */	b lbl_804E6C70
lbl_804E6C6C:
/* 804E6C6C  38 60 00 00 */	li r3, 0
lbl_804E6C70:
/* 804E6C70  39 61 00 18 */	addi r11, r1, 0x18
/* 804E6C74  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804E6C78  4B BB 42 A5 */	bl func_8009AF1C
/* 804E6C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E6C80  7C 08 03 A6 */	mtlr r0
/* 804E6C84  38 21 00 20 */	addi r1, r1, 0x20
/* 804E6C88  4E 80 00 20 */	blr 
