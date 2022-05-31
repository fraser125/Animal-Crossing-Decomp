lbl_803BFA8C:
/* 803BFA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFA90  7C 08 02 A6 */	mflr r0
/* 803BFA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFA98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BFA9C  7C 9F 23 78 */	mr r31, r4
/* 803BFAA0  38 80 00 06 */	li r4, 6
/* 803BFAA4  93 C1 00 08 */	stw r30, 8(r1)
/* 803BFAA8  7C 7E 1B 78 */	mr r30, r3
/* 803BFAAC  4B FF FC 25 */	bl mMsg_Change_request_main_index
/* 803BFAB0  2C 03 00 00 */	cmpwi r3, 0
/* 803BFAB4  41 82 00 10 */	beq lbl_803BFAC4
/* 803BFAB8  93 FE 04 60 */	stw r31, 0x460(r30)
/* 803BFABC  38 60 00 01 */	li r3, 1
/* 803BFAC0  48 00 00 08 */	b lbl_803BFAC8
lbl_803BFAC4:
/* 803BFAC4  38 60 00 00 */	li r3, 0
lbl_803BFAC8:
/* 803BFAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BFAD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BFAD4  7C 08 03 A6 */	mtlr r0
/* 803BFAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFADC  4E 80 00 20 */	blr 
