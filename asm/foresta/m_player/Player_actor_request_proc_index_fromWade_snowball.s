lbl_804E94F0:
/* 804E94F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E94F4  7C 08 02 A6 */	mflr r0
/* 804E94F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E94FC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E9500  4B BB 19 D5 */	bl func_8009AED4
/* 804E9504  7C 7D 1B 78 */	mr r29, r3
/* 804E9508  7C 9E 23 78 */	mr r30, r4
/* 804E950C  4B FF FF B1 */	bl Player_actor_able_request_proc_index_fromWade_snowball_common
/* 804E9510  2C 03 00 00 */	cmpwi r3, 0
/* 804E9514  41 82 00 5C */	beq lbl_804E9570
/* 804E9518  83 FD 0D B4 */	lwz r31, 0xdb4(r29)
/* 804E951C  7F A3 EB 78 */	mr r3, r29
/* 804E9520  4B FE BE 4D */	bl Player_actor_SettleRequestMainIndexPriority
/* 804E9524  2C 1F 00 00 */	cmpwi r31, 0
/* 804E9528  41 82 00 28 */	beq lbl_804E9550
/* 804E952C  80 1D 11 FC */	lwz r0, 0x11fc(r29)
/* 804E9530  2C 00 00 00 */	cmpwi r0, 0
/* 804E9534  40 82 00 1C */	bne lbl_804E9550
/* 804E9538  80 9D 0D 44 */	lwz r4, 0xd44(r29)
/* 804E953C  7F C3 F3 78 */	mr r3, r30
/* 804E9540  38 A0 00 01 */	li r5, 1
/* 804E9544  38 C0 00 02 */	li r6, 2
/* 804E9548  48 01 B3 89 */	bl func_805048D0
/* 804E954C  48 00 00 24 */	b lbl_804E9570
lbl_804E9550:
/* 804E9550  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E9554  7F C3 F3 78 */	mr r3, r30
/* 804E9558  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E955C  38 9D 0D 28 */	addi r4, r29, 0xd28
/* 804E9560  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E9564  38 A0 00 06 */	li r5, 6
/* 804E9568  38 C0 00 01 */	li r6, 1
/* 804E956C  4B FF CA E5 */	bl func_804E6050
lbl_804E9570:
/* 804E9570  39 61 00 20 */	addi r11, r1, 0x20
/* 804E9574  4B BB 19 AD */	bl func_8009AF20
/* 804E9578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E957C  7C 08 03 A6 */	mtlr r0
/* 804E9580  38 21 00 20 */	addi r1, r1, 0x20
/* 804E9584  4E 80 00 20 */	blr 
