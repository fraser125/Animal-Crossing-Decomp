lbl_804D43A8:
/* 804D43A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D43AC  7C 08 02 A6 */	mflr r0
/* 804D43B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D43B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D43B8  7C 9F 23 78 */	mr r31, r4
/* 804D43BC  93 C1 00 08 */	stw r30, 8(r1)
/* 804D43C0  7C 7E 1B 78 */	mr r30, r3
/* 804D43C4  48 00 C2 61 */	bl Player_actor_move_other_func1
/* 804D43C8  80 9E 0C F8 */	lwz r4, 0xcf8(r30)
/* 804D43CC  38 00 00 00 */	li r0, 0
/* 804D43D0  2C 04 00 00 */	cmpwi r4, 0
/* 804D43D4  41 80 00 10 */	blt lbl_804D43E4
/* 804D43D8  2C 04 00 79 */	cmpwi r4, 0x79
/* 804D43DC  40 80 00 08 */	bge lbl_804D43E4
/* 804D43E0  38 00 00 01 */	li r0, 1
lbl_804D43E4:
/* 804D43E4  2C 00 00 00 */	cmpwi r0, 0
/* 804D43E8  41 82 00 3C */	beq lbl_804D4424
/* 804D43EC  3C 60 80 65 */	lis r3, proc_17088@ha /* 0x80648B78@ha */
/* 804D43F0  54 80 10 3A */	slwi r0, r4, 2
/* 804D43F4  38 63 8B 78 */	addi r3, r3, proc_17088@l /* 0x80648B78@l */
/* 804D43F8  7D 83 00 2E */	lwzx r12, r3, r0
/* 804D43FC  28 0C 00 00 */	cmplwi r12, 0
/* 804D4400  40 82 00 08 */	bne lbl_804D4408
/* 804D4404  48 00 00 20 */	b lbl_804D4424
lbl_804D4408:
/* 804D4408  7F C3 F3 78 */	mr r3, r30
/* 804D440C  7F E4 FB 78 */	mr r4, r31
/* 804D4410  7D 89 03 A6 */	mtctr r12
/* 804D4414  4E 80 04 21 */	bctrl 
/* 804D4418  7F C3 F3 78 */	mr r3, r30
/* 804D441C  7F E4 FB 78 */	mr r4, r31
/* 804D4420  48 00 C2 91 */	bl Player_actor_move_other_func2
lbl_804D4424:
/* 804D4424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D442C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D4430  7C 08 03 A6 */	mtlr r0
/* 804D4434  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4438  4E 80 00 20 */	blr 
