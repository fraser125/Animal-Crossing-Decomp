lbl_804A8FEC:
/* 804A8FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8FF0  7C 08 02 A6 */	mflr r0
/* 804A8FF4  38 80 00 00 */	li r4, 0
/* 804A8FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8FFC  4B FF FF 79 */	bl aTKT_calc_scale
/* 804A9000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9004  7C 08 03 A6 */	mtlr r0
/* 804A9008  38 21 00 10 */	addi r1, r1, 0x10
/* 804A900C  4E 80 00 20 */	blr 
