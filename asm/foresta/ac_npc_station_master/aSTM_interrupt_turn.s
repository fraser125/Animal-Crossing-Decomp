lbl_8057FA3C:
/* 8057FA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FA40  7C 08 02 A6 */	mflr r0
/* 8057FA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FA48  88 A3 09 A0 */	lbz r5, 0x9a0(r3)
/* 8057FA4C  38 05 00 01 */	addi r0, r5, 1
/* 8057FA50  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8057FA54  48 00 09 51 */	bl aSTM_setup_think_proc
/* 8057FA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FA5C  7C 08 03 A6 */	mtlr r0
/* 8057FA60  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FA64  4E 80 00 20 */	blr 
