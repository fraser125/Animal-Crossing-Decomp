lbl_804A585C:
/* 804A585C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A5860  7C 08 02 A6 */	mflr r0
/* 804A5864  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A5868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A586C  7C 7F 1B 78 */	mr r31, r3
/* 804A5870  93 C1 00 08 */	stw r30, 8(r1)
/* 804A5874  7C 9E 23 78 */	mr r30, r4
/* 804A5878  4B FF FD B9 */	bl aSMAN_Player_push_Request
/* 804A587C  2C 03 00 00 */	cmpwi r3, 0
/* 804A5880  41 82 00 0C */	beq lbl_804A588C
/* 804A5884  38 60 00 00 */	li r3, 0
/* 804A5888  48 00 00 48 */	b lbl_804A58D0
lbl_804A588C:
/* 804A588C  7F E3 FB 78 */	mr r3, r31
/* 804A5890  4B FF F7 6D */	bl aSMAN_set_speed_relations_norm
/* 804A5894  7F E3 FB 78 */	mr r3, r31
/* 804A5898  7F C4 F3 78 */	mr r4, r30
/* 804A589C  4B FF E2 FD */	bl aSMAN_Make_Effect_Ground
/* 804A58A0  7F E3 FB 78 */	mr r3, r31
/* 804A58A4  7F C4 F3 78 */	mr r4, r30
/* 804A58A8  4B FF F5 A1 */	bl aSMAN_OBJcheck
/* 804A58AC  7F E3 FB 78 */	mr r3, r31
/* 804A58B0  4B FF E2 A1 */	bl aSMAN_House_Tree_Rev_Check
/* 804A58B4  38 7F 00 68 */	addi r3, r31, 0x68
/* 804A58B8  38 9F 00 74 */	addi r4, r31, 0x74
/* 804A58BC  38 BF 00 36 */	addi r5, r31, 0x36
/* 804A58C0  4B F5 0B C9 */	bl func_803F6488
/* 804A58C4  7F E3 FB 78 */	mr r3, r31
/* 804A58C8  4B FF FB 21 */	bl aSMAN_calc_scale
/* 804A58CC  38 60 00 01 */	li r3, 1
lbl_804A58D0:
/* 804A58D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A58D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A58D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A58DC  7C 08 03 A6 */	mtlr r0
/* 804A58E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A58E4  4E 80 00 20 */	blr 
