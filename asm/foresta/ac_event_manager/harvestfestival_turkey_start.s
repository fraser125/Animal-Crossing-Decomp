lbl_8042176C:
/* 8042176C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421770  7C 08 02 A6 */	mflr r0
/* 80421774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421778  39 61 00 20 */	addi r11, r1, 0x20
/* 8042177C  4B C7 97 59 */	bl func_8009AED4
/* 80421780  7C 7D 1B 78 */	mr r29, r3
/* 80421784  7C 9E 23 78 */	mr r30, r4
/* 80421788  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8042178C  3B E0 00 02 */	li r31, 2
/* 80421790  2C 00 00 00 */	cmpwi r0, 0
/* 80421794  40 82 00 24 */	bne lbl_804217B8
/* 80421798  80 7E 00 00 */	lwz r3, 0(r30)
/* 8042179C  38 80 00 01 */	li r4, 1
/* 804217A0  4B F7 C2 E1 */	bl mEv_clear_status
/* 804217A4  80 7E 00 00 */	lwz r3, 0(r30)
/* 804217A8  38 80 00 20 */	li r4, 0x20
/* 804217AC  4B F7 C2 25 */	bl mEv_set_status
/* 804217B0  38 60 00 00 */	li r3, 0
/* 804217B4  48 00 00 4C */	b lbl_80421800
lbl_804217B8:
/* 804217B8  80 7E 00 00 */	lwz r3, 0(r30)
/* 804217BC  4B F7 C4 31 */	bl mEv_check_keep
/* 804217C0  2C 03 00 00 */	cmpwi r3, 0
/* 804217C4  40 82 00 10 */	bne lbl_804217D4
/* 804217C8  80 7E 00 00 */	lwz r3, 0(r30)
/* 804217CC  4B F7 C3 B9 */	bl mEv_set_keep
/* 804217D0  3B E0 00 01 */	li r31, 1
lbl_804217D4:
/* 804217D4  2C 1F 00 00 */	cmpwi r31, 0
/* 804217D8  41 82 00 24 */	beq lbl_804217FC
/* 804217DC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D08D@ha */
/* 804217E0  7F A3 EB 78 */	mr r3, r29
/* 804217E4  7F C4 F3 78 */	mr r4, r30
/* 804217E8  38 C0 00 51 */	li r6, 0x51
/* 804217EC  38 A5 D0 8D */	addi r5, r5, 0xD08D /* 0x0000D08D@l */
/* 804217F0  4B FF AA D1 */	bl make_actor_in_free_block_hide
/* 804217F4  3C 80 81 1D */	lis r4, tpppp@ha /* 0x811CB968@ha */
/* 804217F8  90 64 B9 68 */	stw r3, tpppp@l(r4)  /* 0x811CB968@l */
lbl_804217FC:
/* 804217FC  7F E3 FB 78 */	mr r3, r31
lbl_80421800:
/* 80421800  39 61 00 20 */	addi r11, r1, 0x20
/* 80421804  4B C7 97 1D */	bl func_8009AF20
/* 80421808  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042180C  7C 08 03 A6 */	mtlr r0
/* 80421810  38 21 00 20 */	addi r1, r1, 0x20
/* 80421814  4E 80 00 20 */	blr 
