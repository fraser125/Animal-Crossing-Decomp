lbl_804A4704:
/* 804A4704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A4708  7C 08 02 A6 */	mflr r0
/* 804A470C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A4710  39 61 00 20 */	addi r11, r1, 0x20
/* 804A4714  4B BF 67 C1 */	bl func_8009AED4
/* 804A4718  A8 A3 01 F8 */	lha r5, 0x1f8(r3)
/* 804A471C  7C 7D 1B 78 */	mr r29, r3
/* 804A4720  7C 9E 23 78 */	mr r30, r4
/* 804A4724  3B E0 00 00 */	li r31, 0
/* 804A4728  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 804A472C  41 82 00 24 */	beq lbl_804A4750
/* 804A4730  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 804A4734  40 82 00 1C */	bne lbl_804A4750
/* 804A4738  60 A0 00 04 */	ori r0, r5, 4
/* 804A473C  B0 1D 01 F8 */	sth r0, 0x1f8(r29)
/* 804A4740  4B FF FE E1 */	bl aSMAN_MakeBreakEffect
/* 804A4744  7F A3 EB 78 */	mr r3, r29
/* 804A4748  4B EC FC F9 */	bl Actor_delete
/* 804A474C  3B E0 00 01 */	li r31, 1
lbl_804A4750:
/* 804A4750  A8 7D 01 F8 */	lha r3, 0x1f8(r29)
/* 804A4754  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804A4758  41 82 00 08 */	beq lbl_804A4760
/* 804A475C  3B E0 00 01 */	li r31, 1
lbl_804A4760:
/* 804A4760  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804A4764  41 82 00 08 */	beq lbl_804A476C
/* 804A4768  3B E0 00 01 */	li r31, 1
lbl_804A476C:
/* 804A476C  2C 1F 00 01 */	cmpwi r31, 1
/* 804A4770  40 82 00 30 */	bne lbl_804A47A0
/* 804A4774  3C 60 80 4A */	lis r3, aSMAN_process_player_push@ha /* 0x804A59A4@ha */
/* 804A4778  80 9D 01 90 */	lwz r4, 0x190(r29)
/* 804A477C  38 03 59 A4 */	addi r0, r3, aSMAN_process_player_push@l /* 0x804A59A4@l */
/* 804A4780  7C 04 00 40 */	cmplw r4, r0
/* 804A4784  41 82 00 14 */	beq lbl_804A4798
/* 804A4788  3C 60 80 4A */	lis r3, aSMAN_process_player_push_scroll@ha /* 0x804A6024@ha */
/* 804A478C  38 03 60 24 */	addi r0, r3, aSMAN_process_player_push_scroll@l /* 0x804A6024@l */
/* 804A4790  7C 04 00 40 */	cmplw r4, r0
/* 804A4794  40 82 00 0C */	bne lbl_804A47A0
lbl_804A4798:
/* 804A4798  7F C3 F3 78 */	mr r3, r30
/* 804A479C  4B FF FA E9 */	bl aSMAN_player_push_free
lbl_804A47A0:
/* 804A47A0  7F E3 FB 78 */	mr r3, r31
/* 804A47A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A47A8  4B BF 67 79 */	bl func_8009AF20
/* 804A47AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A47B0  7C 08 03 A6 */	mtlr r0
/* 804A47B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804A47B8  4E 80 00 20 */	blr 
