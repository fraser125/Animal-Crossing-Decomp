lbl_8057EBB8:
/* 8057EBB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057EBBC  7C 08 02 A6 */	mflr r0
/* 8057EBC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057EBC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057EBC8  7C 7F 1B 78 */	mr r31, r3
/* 8057EBCC  38 60 00 01 */	li r3, 1
/* 8057EBD0  4B E1 9C 79 */	bl mDemo_Set_talk_turn
/* 8057EBD4  38 60 00 03 */	li r3, 3
/* 8057EBD8  4B E1 9D 49 */	bl mDemo_Set_camera
/* 8057EBDC  7F E3 FB 78 */	mr r3, r31
/* 8057EBE0  38 80 00 00 */	li r4, 0
/* 8057EBE4  4B FF FF C9 */	bl func_8057EBAC
/* 8057EBE8  4B E6 F1 CD */	bl mSC_check_ArbeitPlayer
/* 8057EBEC  28 03 00 00 */	cmplwi r3, 0
/* 8057EBF0  41 82 00 2C */	beq lbl_8057EC1C
/* 8057EBF4  4B AD E1 01 */	bl fqrand
/* 8057EBF8  3C 60 80 65 */	lis r3, lit_523@ha /* 0x80649A38@ha */
/* 8057EBFC  C0 03 9A 38 */	lfs f0, lit_523@l(r3)  /* 0x80649A38@l */
/* 8057EC00  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057EC04  FC 00 00 1E */	fctiwz f0, f0
/* 8057EC08  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057EC0C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8057EC10  38 63 3A FF */	addi r3, r3, 0x3aff
/* 8057EC14  4B E1 99 01 */	bl mDemo_Set_msg_num
/* 8057EC18  48 00 00 24 */	b lbl_8057EC3C
lbl_8057EC1C:
/* 8057EC1C  4B E6 F1 0D */	bl mSC_LightHouse_travel_check
/* 8057EC20  2C 03 00 00 */	cmpwi r3, 0
/* 8057EC24  41 82 00 10 */	beq lbl_8057EC34
/* 8057EC28  38 60 3B 02 */	li r3, 0x3b02
/* 8057EC2C  4B E1 98 E9 */	bl mDemo_Set_msg_num
/* 8057EC30  48 00 00 0C */	b lbl_8057EC3C
lbl_8057EC34:
/* 8057EC34  38 60 3A FC */	li r3, 0x3afc
/* 8057EC38  4B E1 98 DD */	bl mDemo_Set_msg_num
lbl_8057EC3C:
/* 8057EC3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057EC40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057EC44  7C 08 03 A6 */	mtlr r0
/* 8057EC48  38 21 00 20 */	addi r1, r1, 0x20
/* 8057EC4C  4E 80 00 20 */	blr 
