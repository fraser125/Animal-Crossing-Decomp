lbl_804D94E8:
/* 804D94E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D94EC  7C 08 02 A6 */	mflr r0
/* 804D94F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D94F4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804D94F8  7C 9F 23 78 */	mr r31, r4
/* 804D94FC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804D9500  7C 7E 1B 78 */	mr r30, r3
/* 804D9504  4B FF B0 79 */	bl Player_actor_CheckController_forAxe
/* 804D9508  2C 03 00 00 */	cmpwi r3, 0
/* 804D950C  41 82 01 1C */	beq lbl_804D9628
/* 804D9510  7F C3 F3 78 */	mr r3, r30
/* 804D9514  4B F0 01 2D */	bl get_player_actor_withoutCheck
/* 804D9518  38 81 00 24 */	addi r4, r1, 0x24
/* 804D951C  38 A1 00 08 */	addi r5, r1, 8
/* 804D9520  38 C1 00 14 */	addi r6, r1, 0x14
/* 804D9524  4B FF EC D5 */	bl Player_actor_Check_axe_after
/* 804D9528  2C 03 00 02 */	cmpwi r3, 2
/* 804D952C  40 82 00 94 */	bne lbl_804D95C0
/* 804D9530  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 804D9534  38 61 00 10 */	addi r3, r1, 0x10
/* 804D9538  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804D953C  38 81 00 0C */	addi r4, r1, 0xc
/* 804D9540  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804D9544  38 A1 00 18 */	addi r5, r1, 0x18
/* 804D9548  90 E1 00 18 */	stw r7, 0x18(r1)
/* 804D954C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804D9550  90 01 00 20 */	stw r0, 0x20(r1)
/* 804D9554  4B EC BE 15 */	bl mFI_Wpos2UtNum
/* 804D9558  2C 03 00 00 */	cmpwi r3, 0
/* 804D955C  41 82 00 5C */	beq lbl_804D95B8
/* 804D9560  48 00 73 99 */	bl Player_actor_Get_ItemNoSubmenu
/* 804D9564  38 80 00 00 */	li r4, 0
/* 804D9568  4B FF FD E1 */	bl Player_actor_GetitemNo_forDamageAxe
/* 804D956C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804D9570  7C 66 1B 78 */	mr r6, r3
/* 804D9574  40 82 00 24 */	bne lbl_804D9598
/* 804D9578  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804D957C  7F C3 F3 78 */	mr r3, r30
/* 804D9580  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 804D9584  7F E8 FB 78 */	mr r8, r31
/* 804D9588  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804D958C  38 81 00 24 */	addi r4, r1, 0x24
/* 804D9590  48 01 7D 9D */	bl Player_actor_request_main_broken_axe_type_swing
/* 804D9594  48 00 00 98 */	b lbl_804D962C
lbl_804D9598:
/* 804D9598  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804D959C  7F C3 F3 78 */	mr r3, r30
/* 804D95A0  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 804D95A4  7F E9 FB 78 */	mr r9, r31
/* 804D95A8  81 01 00 0C */	lwz r8, 0xc(r1)
/* 804D95AC  38 81 00 24 */	addi r4, r1, 0x24
/* 804D95B0  48 01 64 3D */	bl Player_actor_request_main_swing_axe_all
/* 804D95B4  48 00 00 78 */	b lbl_804D962C
lbl_804D95B8:
/* 804D95B8  38 60 00 00 */	li r3, 0
/* 804D95BC  48 00 00 70 */	b lbl_804D962C
lbl_804D95C0:
/* 804D95C0  2C 03 00 01 */	cmpwi r3, 1
/* 804D95C4  40 82 00 54 */	bne lbl_804D9618
/* 804D95C8  48 00 73 31 */	bl Player_actor_Get_ItemNoSubmenu
/* 804D95CC  38 80 00 01 */	li r4, 1
/* 804D95D0  4B FF FD 79 */	bl Player_actor_GetitemNo_forDamageAxe
/* 804D95D4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804D95D8  7C 66 1B 78 */	mr r6, r3
/* 804D95DC  40 82 00 20 */	bne lbl_804D95FC
/* 804D95E0  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804D95E4  7F C3 F3 78 */	mr r3, r30
/* 804D95E8  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804D95EC  7F E7 FB 78 */	mr r7, r31
/* 804D95F0  38 81 00 24 */	addi r4, r1, 0x24
/* 804D95F4  48 01 7C A1 */	bl func_804F1294
/* 804D95F8  48 00 00 34 */	b lbl_804D962C
lbl_804D95FC:
/* 804D95FC  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804D9600  7F C3 F3 78 */	mr r3, r30
/* 804D9604  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 804D9608  7F E8 FB 78 */	mr r8, r31
/* 804D960C  38 81 00 24 */	addi r4, r1, 0x24
/* 804D9610  48 01 74 A5 */	bl Player_actor_request_main_reflect_axe_all
/* 804D9614  48 00 00 18 */	b lbl_804D962C
lbl_804D9618:
/* 804D9618  7F C3 F3 78 */	mr r3, r30
/* 804D961C  7F E4 FB 78 */	mr r4, r31
/* 804D9620  48 01 70 A1 */	bl func_804F06C0
/* 804D9624  48 00 00 08 */	b lbl_804D962C
lbl_804D9628:
/* 804D9628  38 60 00 00 */	li r3, 0
lbl_804D962C:
/* 804D962C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D9630  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D9634  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804D9638  7C 08 03 A6 */	mtlr r0
/* 804D963C  38 21 00 40 */	addi r1, r1, 0x40
/* 804D9640  4E 80 00 20 */	blr 
