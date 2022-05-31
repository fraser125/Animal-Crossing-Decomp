lbl_804FC740:
/* 804FC740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FC744  7C 08 02 A6 */	mflr r0
/* 804FC748  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC74C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC750  4B B9 E7 81 */	bl func_8009AED0
/* 804FC754  7C 7C 1B 78 */	mr r28, r3
/* 804FC758  7C 9D 23 78 */	mr r29, r4
/* 804FC75C  7C BE 2B 78 */	mr r30, r5
/* 804FC760  3B FC 0D 18 */	addi r31, r28, 0xd18
/* 804FC764  4B FE 41 DD */	bl Player_actor_Get_ItemKind_from_submenu
/* 804FC768  7C 63 07 74 */	extsb r3, r3
/* 804FC76C  38 00 00 00 */	li r0, 0
/* 804FC770  2C 03 00 0B */	cmpwi r3, 0xb
/* 804FC774  41 80 00 10 */	blt lbl_804FC784
/* 804FC778  2C 03 00 33 */	cmpwi r3, 0x33
/* 804FC77C  40 80 00 08 */	bge lbl_804FC784
/* 804FC780  38 00 00 01 */	li r0, 1
lbl_804FC784:
/* 804FC784  2C 00 00 00 */	cmpwi r0, 0
/* 804FC788  41 82 00 10 */	beq lbl_804FC798
/* 804FC78C  2C 1E 00 00 */	cmpwi r30, 0
/* 804FC790  40 82 00 1C */	bne lbl_804FC7AC
/* 804FC794  48 00 00 40 */	b lbl_804FC7D4
lbl_804FC798:
/* 804FC798  3C 60 80 65 */	lis r3, lit_13856@ha /* 0x80648564@ha */
/* 804FC79C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804FC7A0  C0 03 85 64 */	lfs f0, lit_13856@l(r3)  /* 0x80648564@l */
/* 804FC7A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FC7A8  41 80 00 2C */	blt lbl_804FC7D4
lbl_804FC7AC:
/* 804FC7AC  7F 83 E3 78 */	mr r3, r28
/* 804FC7B0  4B FD 8B BD */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FC7B4  7F E3 FB 78 */	mr r3, r31
/* 804FC7B8  38 9C 0D 60 */	addi r4, r28, 0xd60
/* 804FC7BC  38 A0 00 30 */	li r5, 0x30
/* 804FC7C0  4B B6 08 5D */	bl func_8005D01C
/* 804FC7C4  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 804FC7C8  7F A3 EB 78 */	mr r3, r29
/* 804FC7CC  38 A0 00 25 */	li r5, 0x25
/* 804FC7D0  4B FD 88 45 */	bl Player_actor_request_main_index
lbl_804FC7D4:
/* 804FC7D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC7D8  4B B9 E7 45 */	bl func_8009AF1C
/* 804FC7DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FC7E0  7C 08 03 A6 */	mtlr r0
/* 804FC7E4  38 21 00 20 */	addi r1, r1, 0x20
/* 804FC7E8  4E 80 00 20 */	blr 
