lbl_8052EB78:
/* 8052EB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052EB7C  7C 08 02 A6 */	mflr r0
/* 8052EB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052EB84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052EB88  7C 7F 1B 78 */	mr r31, r3
/* 8052EB8C  38 60 00 07 */	li r3, 7
/* 8052EB90  93 C1 00 08 */	stw r30, 8(r1)
/* 8052EB94  7C 9E 23 78 */	mr r30, r4
/* 8052EB98  7F E4 FB 78 */	mr r4, r31
/* 8052EB9C  4B E6 B6 C9 */	bl mDemo_Check
/* 8052EBA0  2C 03 00 01 */	cmpwi r3, 1
/* 8052EBA4  40 82 00 0C */	bne lbl_8052EBB0
/* 8052EBA8  38 00 00 00 */	li r0, 0
/* 8052EBAC  98 1F 07 C9 */	stb r0, 0x7c9(r31)
lbl_8052EBB0:
/* 8052EBB0  88 1F 07 C9 */	lbz r0, 0x7c9(r31)
/* 8052EBB4  2C 00 00 01 */	cmpwi r0, 1
/* 8052EBB8  41 82 00 30 */	beq lbl_8052EBE8
/* 8052EBBC  40 80 00 10 */	bge lbl_8052EBCC
/* 8052EBC0  2C 00 00 00 */	cmpwi r0, 0
/* 8052EBC4  40 80 00 14 */	bge lbl_8052EBD8
/* 8052EBC8  48 00 00 78 */	b lbl_8052EC40
lbl_8052EBCC:
/* 8052EBCC  2C 00 00 03 */	cmpwi r0, 3
/* 8052EBD0  40 80 00 70 */	bge lbl_8052EC40
/* 8052EBD4  48 00 00 44 */	b lbl_8052EC18
lbl_8052EBD8:
/* 8052EBD8  7F E3 FB 78 */	mr r3, r31
/* 8052EBDC  7F C4 F3 78 */	mr r4, r30
/* 8052EBE0  4B FF FD D9 */	bl aNPC_normal_talk_request
/* 8052EBE4  48 00 00 5C */	b lbl_8052EC40
lbl_8052EBE8:
/* 8052EBE8  7F E3 FB 78 */	mr r3, r31
/* 8052EBEC  4B FF FE 9D */	bl aNPC_force_talk_request
/* 8052EBF0  2C 03 00 00 */	cmpwi r3, 0
/* 8052EBF4  40 82 00 4C */	bne lbl_8052EC40
/* 8052EBF8  7F E3 FB 78 */	mr r3, r31
/* 8052EBFC  7F C4 F3 78 */	mr r4, r30
/* 8052EC00  4B FF FD B9 */	bl aNPC_normal_talk_request
/* 8052EC04  2C 03 00 01 */	cmpwi r3, 1
/* 8052EC08  40 82 00 38 */	bne lbl_8052EC40
/* 8052EC0C  38 00 00 00 */	li r0, 0
/* 8052EC10  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8052EC14  48 00 00 2C */	b lbl_8052EC40
lbl_8052EC18:
/* 8052EC18  7F E4 FB 78 */	mr r4, r31
/* 8052EC1C  38 60 00 08 */	li r3, 8
/* 8052EC20  4B E6 B6 45 */	bl mDemo_Check
/* 8052EC24  2C 03 00 01 */	cmpwi r3, 1
/* 8052EC28  40 82 00 18 */	bne lbl_8052EC40
/* 8052EC2C  7F E3 FB 78 */	mr r3, r31
/* 8052EC30  7F C4 F3 78 */	mr r4, r30
/* 8052EC34  4B FF FB 39 */	bl aNPC_setup_talk_start
/* 8052EC38  38 00 00 03 */	li r0, 3
/* 8052EC3C  98 1F 07 C9 */	stb r0, 0x7c9(r31)
lbl_8052EC40:
/* 8052EC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052EC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052EC48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052EC4C  7C 08 03 A6 */	mtlr r0
/* 8052EC50  38 21 00 10 */	addi r1, r1, 0x10
/* 8052EC54  4E 80 00 20 */	blr 
