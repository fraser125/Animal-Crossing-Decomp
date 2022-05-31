lbl_8057DDDC:
/* 8057DDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DDE0  7C 08 02 A6 */	mflr r0
/* 8057DDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DDE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DDEC  7C 9F 23 78 */	mr r31, r4
/* 8057DDF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8057DDF4  7C 7E 1B 78 */	mr r30, r3
/* 8057DDF8  4B E5 FA BD */	bl mPlib_Check_RotateOctagon
/* 8057DDFC  2C 03 00 00 */	cmpwi r3, 0
/* 8057DE00  40 82 00 18 */	bne lbl_8057DE18
/* 8057DE04  A8 BE 09 AC */	lha r5, 0x9ac(r30)
/* 8057DE08  7F C3 F3 78 */	mr r3, r30
/* 8057DE0C  7F E4 FB 78 */	mr r4, r31
/* 8057DE10  38 A5 00 06 */	addi r5, r5, 6
/* 8057DE14  48 00 04 2D */	bl aSHM_setup_think_proc
lbl_8057DE18:
/* 8057DE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DE20  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057DE24  7C 08 03 A6 */	mtlr r0
/* 8057DE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DE2C  4E 80 00 20 */	blr 
