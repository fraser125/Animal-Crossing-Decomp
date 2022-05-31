lbl_8057DAFC:
/* 8057DAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DB00  7C 08 02 A6 */	mflr r0
/* 8057DB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DB0C  7C 9F 23 78 */	mr r31, r4
/* 8057DB10  93 C1 00 08 */	stw r30, 8(r1)
/* 8057DB14  7C 7E 1B 78 */	mr r30, r3
/* 8057DB18  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8057DB1C  28 00 00 02 */	cmplwi r0, 2
/* 8057DB20  41 82 00 0C */	beq lbl_8057DB2C
/* 8057DB24  28 00 00 00 */	cmplwi r0, 0
/* 8057DB28  40 82 00 38 */	bne lbl_8057DB60
lbl_8057DB2C:
/* 8057DB2C  7F C3 F3 78 */	mr r3, r30
/* 8057DB30  4B FF EE 25 */	bl aSHM_set_next_avoid_pos
/* 8057DB34  2C 03 00 00 */	cmpwi r3, 0
/* 8057DB38  41 82 00 18 */	beq lbl_8057DB50
/* 8057DB3C  80 BE 09 9C */	lwz r5, 0x99c(r30)
/* 8057DB40  7F C3 F3 78 */	mr r3, r30
/* 8057DB44  7F E4 FB 78 */	mr r4, r31
/* 8057DB48  48 00 06 F9 */	bl aSHM_setup_think_proc
/* 8057DB4C  48 00 00 14 */	b lbl_8057DB60
lbl_8057DB50:
/* 8057DB50  7F C3 F3 78 */	mr r3, r30
/* 8057DB54  7F E4 FB 78 */	mr r4, r31
/* 8057DB58  38 A0 00 0D */	li r5, 0xd
/* 8057DB5C  48 00 06 E5 */	bl aSHM_setup_think_proc
lbl_8057DB60:
/* 8057DB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DB68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057DB6C  7C 08 03 A6 */	mtlr r0
/* 8057DB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DB74  4E 80 00 20 */	blr 
