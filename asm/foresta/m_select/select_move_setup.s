lbl_8062877C:
/* 8062877C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80628780  7C 08 02 A6 */	mflr r0
/* 80628784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80628788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062878C  7C 7F 1B 78 */	mr r31, r3
/* 80628790  4B FF F9 35 */	bl select_check_start
/* 80628794  2C 03 00 01 */	cmpwi r3, 1
/* 80628798  41 82 00 20 */	beq lbl_806287B8
/* 8062879C  7F E3 FB 78 */	mr r3, r31
/* 806287A0  4B FF FB ED */	bl select_move_cursol
/* 806287A4  2C 03 00 01 */	cmpwi r3, 1
/* 806287A8  41 82 00 10 */	beq lbl_806287B8
/* 806287AC  7F E3 FB 78 */	mr r3, r31
/* 806287B0  4B FF FB 79 */	bl select_check_A_button
/* 806287B4  2C 03 00 01 */	cmpwi r3, 1
lbl_806287B8:
/* 806287B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806287BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806287C0  7C 08 03 A6 */	mtlr r0
/* 806287C4  38 21 00 10 */	addi r1, r1, 0x10
/* 806287C8  4E 80 00 20 */	blr 
