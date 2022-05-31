lbl_8053DDE8:
/* 8053DDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DDEC  7C 08 02 A6 */	mflr r0
/* 8053DDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DDF8  7C 7F 1B 78 */	mr r31, r3
/* 8053DDFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8053DE00  7C 9E 23 78 */	mr r30, r4
/* 8053DE04  48 00 55 E1 */	bl aNPC_schedule_proc
/* 8053DE08  7F E3 FB 78 */	mr r3, r31
/* 8053DE0C  7F C4 F3 78 */	mr r4, r30
/* 8053DE10  48 00 15 ED */	bl aNPC_action_proc
/* 8053DE14  7F E3 FB 78 */	mr r3, r31
/* 8053DE18  4B FF FD 41 */	bl aNPC_check_feel_tim
/* 8053DE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DE24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053DE28  7C 08 03 A6 */	mtlr r0
/* 8053DE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DE30  4E 80 00 20 */	blr 
