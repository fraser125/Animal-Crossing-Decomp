lbl_804A7434:
/* 804A7434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7438  7C 08 02 A6 */	mflr r0
/* 804A743C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A7444  7C 7F 1B 78 */	mr r31, r3
/* 804A7448  93 C1 00 08 */	stw r30, 8(r1)
/* 804A744C  7C 9E 23 78 */	mr r30, r4
/* 804A7450  80 03 00 20 */	lwz r0, 0x20(r3)
/* 804A7454  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804A7458  40 82 00 84 */	bne lbl_804A74DC
/* 804A745C  A8 BF 01 F8 */	lha r5, 0x1f8(r31)
/* 804A7460  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 804A7464  41 82 00 38 */	beq lbl_804A749C
/* 804A7468  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 804A746C  41 82 00 30 */	beq lbl_804A749C
/* 804A7470  4B FF C3 C1 */	bl aSNOWMAN_player_block_check
/* 804A7474  2C 03 00 00 */	cmpwi r3, 0
/* 804A7478  40 82 00 24 */	bne lbl_804A749C
/* 804A747C  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A7480  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804A7484  41 82 00 18 */	beq lbl_804A749C
/* 804A7488  7F E3 FB 78 */	mr r3, r31
/* 804A748C  4B EC CF B5 */	bl Actor_delete
/* 804A7490  80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 804A7494  4B EC CF AD */	bl Actor_delete
/* 804A7498  48 00 00 B0 */	b lbl_804A7548
lbl_804A749C:
/* 804A749C  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A74A0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A74A4  C0 23 5C 8C */	lfs f1, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A74A8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A74AC  40 82 00 30 */	bne lbl_804A74DC
/* 804A74B0  3C 60 80 4A */	lis r3, aSMAN_process_combine_head@ha /* 0x804A714C@ha */
/* 804A74B4  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 804A74B8  38 03 71 4C */	addi r0, r3, aSMAN_process_combine_head@l /* 0x804A714C@l */
/* 804A74BC  7C 04 00 40 */	cmplw r4, r0
/* 804A74C0  41 82 00 1C */	beq lbl_804A74DC
/* 804A74C4  88 7F 01 7C */	lbz r3, 0x17c(r31)
/* 804A74C8  38 00 00 00 */	li r0, 0
/* 804A74CC  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 804A74D0  98 7F 01 7C */	stb r3, 0x17c(r31)
/* 804A74D4  90 1F 01 78 */	stw r0, 0x178(r31)
/* 804A74D8  48 00 00 70 */	b lbl_804A7548
lbl_804A74DC:
/* 804A74DC  7F E3 FB 78 */	mr r3, r31
/* 804A74E0  7F C4 F3 78 */	mr r4, r30
/* 804A74E4  4B FF D2 21 */	bl aSMAN_status_check_in_move
/* 804A74E8  7F E3 FB 78 */	mr r3, r31
/* 804A74EC  4B FF D2 D1 */	bl aSMAN_position_move
/* 804A74F0  7F E3 FB 78 */	mr r3, r31
/* 804A74F4  7F C4 F3 78 */	mr r4, r30
/* 804A74F8  4B FF D3 7D */	bl aSMAN_BGcheck
/* 804A74FC  81 9F 01 90 */	lwz r12, 0x190(r31)
/* 804A7500  7F E3 FB 78 */	mr r3, r31
/* 804A7504  7F C4 F3 78 */	mr r4, r30
/* 804A7508  7D 89 03 A6 */	mtctr r12
/* 804A750C  4E 80 04 21 */	bctrl 
/* 804A7510  7F E3 FB 78 */	mr r3, r31
/* 804A7514  4B FF E0 05 */	bl aSMAN_calc_objChkRange
/* 804A7518  7F E3 FB 78 */	mr r3, r31
/* 804A751C  4B FF DD C1 */	bl aSMAN_calc_axis
/* 804A7520  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A7524  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804A7528  40 82 00 20 */	bne lbl_804A7548
/* 804A752C  7F E3 FB 78 */	mr r3, r31
/* 804A7530  38 9F 01 74 */	addi r4, r31, 0x174
/* 804A7534  4B EE E4 C1 */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 804A7538  7F C3 F3 78 */	mr r3, r30
/* 804A753C  38 9E 23 28 */	addi r4, r30, 0x2328
/* 804A7540  38 BF 01 74 */	addi r5, r31, 0x174
/* 804A7544  4B EE D6 59 */	bl CollisionCheck_setOC
lbl_804A7548:
/* 804A7548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A754C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A7550  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A7554  7C 08 03 A6 */	mtlr r0
/* 804A7558  38 21 00 10 */	addi r1, r1, 0x10
/* 804A755C  4E 80 00 20 */	blr 
