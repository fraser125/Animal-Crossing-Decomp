lbl_8057FA18:
/* 8057FA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FA1C  7C 08 02 A6 */	mflr r0
/* 8057FA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FA24  88 A3 09 A1 */	lbz r5, 0x9a1(r3)
/* 8057FA28  48 00 09 7D */	bl aSTM_setup_think_proc
/* 8057FA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FA30  7C 08 03 A6 */	mtlr r0
/* 8057FA34  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FA38  4E 80 00 20 */	blr 
