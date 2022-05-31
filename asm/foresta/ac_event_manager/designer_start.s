lbl_8041E184:
/* 8041E184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041E188  7C 08 02 A6 */	mflr r0
/* 8041E18C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041E190  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E194  4B C7 CD 3D */	bl func_8009AED0
/* 8041E198  7C 7C 1B 78 */	mr r28, r3
/* 8041E19C  7C 9D 23 78 */	mr r29, r4
/* 8041E1A0  3B E0 00 02 */	li r31, 2
/* 8041E1A4  38 A0 58 28 */	li r5, 0x5828
/* 8041E1A8  38 C0 00 51 */	li r6, 0x51
/* 8041E1AC  4B FF DB 31 */	bl make_FG_somewhere_lot4sale
/* 8041E1B0  7C 60 1B 78 */	mr r0, r3
/* 8041E1B4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8041E1B8  7C 1E 03 78 */	mr r30, r0
/* 8041E1BC  4B F7 FA 31 */	bl mEv_check_keep
/* 8041E1C0  2C 03 00 00 */	cmpwi r3, 0
/* 8041E1C4  40 82 00 10 */	bne lbl_8041E1D4
/* 8041E1C8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8041E1CC  4B F7 F9 B9 */	bl mEv_set_keep
/* 8041E1D0  3B E0 00 01 */	li r31, 1
lbl_8041E1D4:
/* 8041E1D4  2C 1F 00 00 */	cmpwi r31, 0
/* 8041E1D8  41 82 00 54 */	beq lbl_8041E22C
/* 8041E1DC  28 1E 00 00 */	cmplwi r30, 0
/* 8041E1E0  41 82 00 44 */	beq lbl_8041E224
/* 8041E1E4  3C 60 81 1D */	lis r3, spppp@ha /* 0x811CB960@ha */
/* 8041E1E8  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000D002@ha */
/* 8041E1EC  38 83 B9 60 */	addi r4, r3, spppp@l /* 0x811CB960@l */
/* 8041E1F0  7F 83 E3 78 */	mr r3, r28
/* 8041E1F4  93 C4 00 00 */	stw r30, 0(r4)
/* 8041E1F8  7F A4 EB 78 */	mr r4, r29
/* 8041E1FC  7F C5 F3 78 */	mr r5, r30
/* 8041E200  38 C1 00 08 */	addi r6, r1, 8
/* 8041E204  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8041E208  38 E7 D0 02 */	addi r7, r7, 0xD002 /* 0x0000D002@l */
/* 8041E20C  39 00 00 01 */	li r8, 1
/* 8041E210  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041E214  81 3E 00 08 */	lwz r9, 8(r30)
/* 8041E218  38 09 00 02 */	addi r0, r9, 2
/* 8041E21C  90 01 00 08 */	stw r0, 8(r1)
/* 8041E220  4B FF E1 CD */	bl make_actor_in_fixed_block
lbl_8041E224:
/* 8041E224  38 60 00 01 */	li r3, 1
/* 8041E228  4B F7 C7 51 */	bl mEv_EventON
lbl_8041E22C:
/* 8041E22C  7F E3 FB 78 */	mr r3, r31
/* 8041E230  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E234  4B C7 CC E9 */	bl func_8009AF1C
/* 8041E238  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041E23C  7C 08 03 A6 */	mtlr r0
/* 8041E240  38 21 00 20 */	addi r1, r1, 0x20
/* 8041E244  4E 80 00 20 */	blr 
