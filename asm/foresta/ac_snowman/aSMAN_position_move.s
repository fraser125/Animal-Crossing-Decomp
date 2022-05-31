lbl_804A47BC:
/* 804A47BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A47C0  7C 08 02 A6 */	mflr r0
/* 804A47C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A47C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A47CC  7C 7F 1B 78 */	mr r31, r3
/* 804A47D0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A47D4  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804A47D8  38 83 5C 8C */	addi r4, r3, data_80645C8C@l /* 0x80645C8C@l */
/* 804A47DC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A47E0  38 7F 01 F2 */	addi r3, r31, 0x1f2
/* 804A47E4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A47E8  38 81 00 08 */	addi r4, r1, 8
/* 804A47EC  90 A1 00 08 */	stw r5, 8(r1)
/* 804A47F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A47F4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A47F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A47FC  4B EE AE BD */	bl func_8038F6B8
/* 804A4800  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 804A4804  38 7F 00 74 */	addi r3, r31, 0x74
/* 804A4808  C0 5F 01 C8 */	lfs f2, 0x1c8(r31)
/* 804A480C  4B F1 64 5D */	bl chase_f
/* 804A4810  A8 7F 01 F8 */	lha r3, 0x1f8(r31)
/* 804A4814  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804A4818  40 82 00 48 */	bne lbl_804A4860
/* 804A481C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804A4820  40 82 00 40 */	bne lbl_804A4860
/* 804A4824  3C 60 80 4A */	lis r3, aSMAN_process_combine_body@ha /* 0x804A7384@ha */
/* 804A4828  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 804A482C  38 03 73 84 */	addi r0, r3, aSMAN_process_combine_body@l /* 0x804A7384@l */
/* 804A4830  7C 04 00 40 */	cmplw r4, r0
/* 804A4834  41 82 00 2C */	beq lbl_804A4860
/* 804A4838  3C 60 80 4A */	lis r3, aSMAN_process_player_push_scroll@ha /* 0x804A6024@ha */
/* 804A483C  38 03 60 24 */	addi r0, r3, aSMAN_process_player_push_scroll@l /* 0x804A6024@l */
/* 804A4840  7C 04 00 40 */	cmplw r4, r0
/* 804A4844  40 82 00 08 */	bne lbl_804A484C
/* 804A4848  48 00 00 18 */	b lbl_804A4860
lbl_804A484C:
/* 804A484C  7F E3 FB 78 */	mr r3, r31
/* 804A4850  4B EC FA 55 */	bl Actor_position_speed_set
/* 804A4854  7F E3 FB 78 */	mr r3, r31
/* 804A4858  38 9F 01 F2 */	addi r4, r31, 0x1f2
/* 804A485C  4B F5 1D 49 */	bl mRlib_position_move_for_sloop
lbl_804A4860:
/* 804A4860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A4864  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A4868  7C 08 03 A6 */	mtlr r0
/* 804A486C  38 21 00 20 */	addi r1, r1, 0x20
/* 804A4870  4E 80 00 20 */	blr 
