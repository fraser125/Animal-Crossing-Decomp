lbl_804E5BFC:
/* 804E5BFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E5C00  7C 08 02 A6 */	mflr r0
/* 804E5C04  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E5C08  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5C0C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 804E5C10  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804E5C14  4B BB 52 BD */	bl func_8009AED0
/* 804E5C18  FF C0 08 90 */	fmr f30, f1
/* 804E5C1C  7C 9D 23 78 */	mr r29, r4
/* 804E5C20  FF E0 10 90 */	fmr f31, f2
/* 804E5C24  7C 7C 1B 78 */	mr r28, r3
/* 804E5C28  7C BE 2B 78 */	mr r30, r5
/* 804E5C2C  38 80 00 07 */	li r4, 7
/* 804E5C30  4B FF 48 29 */	bl Player_actor_check_request_main_able
/* 804E5C34  2C 03 00 00 */	cmpwi r3, 0
/* 804E5C38  41 82 00 34 */	beq lbl_804E5C6C
/* 804E5C3C  7F 83 E3 78 */	mr r3, r28
/* 804E5C40  4B EF 3A 01 */	bl get_player_actor_withoutCheck
/* 804E5C44  7C 7F 1B 78 */	mr r31, r3
/* 804E5C48  7F 83 E3 78 */	mr r3, r28
/* 804E5C4C  7F C5 F3 78 */	mr r5, r30
/* 804E5C50  38 80 00 07 */	li r4, 7
/* 804E5C54  4B FE F3 C1 */	bl Player_actor_request_main_index
/* 804E5C58  D3 DF 0D 60 */	stfs f30, 0xd60(r31)
/* 804E5C5C  38 60 00 01 */	li r3, 1
/* 804E5C60  93 BF 0D 68 */	stw r29, 0xd68(r31)
/* 804E5C64  D3 FF 0D 64 */	stfs f31, 0xd64(r31)
/* 804E5C68  48 00 00 08 */	b lbl_804E5C70
lbl_804E5C6C:
/* 804E5C6C  38 60 00 00 */	li r3, 0
lbl_804E5C70:
/* 804E5C70  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5C74  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 804E5C78  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804E5C7C  4B BB 52 A1 */	bl func_8009AF1C
/* 804E5C80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E5C84  7C 08 03 A6 */	mtlr r0
/* 804E5C88  38 21 00 30 */	addi r1, r1, 0x30
/* 804E5C8C  4E 80 00 20 */	blr 
