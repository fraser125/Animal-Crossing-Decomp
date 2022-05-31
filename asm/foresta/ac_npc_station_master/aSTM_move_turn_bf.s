lbl_8057FCAC:
/* 8057FCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FCB0  7C 08 02 A6 */	mflr r0
/* 8057FCB4  38 A0 00 0E */	li r5, 0xe
/* 8057FCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FCBC  48 00 06 E9 */	bl aSTM_setup_think_proc
/* 8057FCC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FCC4  7C 08 03 A6 */	mtlr r0
/* 8057FCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FCCC  4E 80 00 20 */	blr 
