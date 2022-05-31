lbl_804FCC2C:
/* 804FCC2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FCC30  7C 08 02 A6 */	mflr r0
/* 804FCC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FCC38  39 61 00 20 */	addi r11, r1, 0x20
/* 804FCC3C  4B B9 E2 99 */	bl func_8009AED4
/* 804FCC40  2C 05 00 00 */	cmpwi r5, 0
/* 804FCC44  7C 7D 1B 78 */	mr r29, r3
/* 804FCC48  7C 9E 23 78 */	mr r30, r4
/* 804FCC4C  41 82 00 2C */	beq lbl_804FCC78
/* 804FCC50  3B FD 0D 18 */	addi r31, r29, 0xd18
/* 804FCC54  4B FD 87 19 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FCC58  7F E3 FB 78 */	mr r3, r31
/* 804FCC5C  38 9D 0D 60 */	addi r4, r29, 0xd60
/* 804FCC60  38 A0 00 30 */	li r5, 0x30
/* 804FCC64  4B B6 03 B9 */	bl func_8005D01C
/* 804FCC68  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 804FCC6C  7F C3 F3 78 */	mr r3, r30
/* 804FCC70  38 A0 00 25 */	li r5, 0x25
/* 804FCC74  4B FD 83 A1 */	bl Player_actor_request_main_index
lbl_804FCC78:
/* 804FCC78  39 61 00 20 */	addi r11, r1, 0x20
/* 804FCC7C  4B B9 E2 A5 */	bl func_8009AF20
/* 804FCC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FCC84  7C 08 03 A6 */	mtlr r0
/* 804FCC88  38 21 00 20 */	addi r1, r1, 0x20
/* 804FCC8C  4E 80 00 20 */	blr 
