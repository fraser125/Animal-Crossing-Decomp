lbl_804A9FD8:
/* 804A9FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9FDC  7C 08 02 A6 */	mflr r0
/* 804A9FE0  38 A0 00 00 */	li r5, 0
/* 804A9FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9FE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A9FEC  7C 7F 1B 78 */	mr r31, r3
/* 804A9FF0  7F E4 FB 78 */	mr r4, r31
/* 804A9FF4  38 7F 01 D8 */	addi r3, r31, 0x1d8
/* 804A9FF8  4B FF FE DD */	bl aTUMB_calc_model_scale_sub
/* 804A9FFC  7F E4 FB 78 */	mr r4, r31
/* 804AA000  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 804AA004  38 A0 00 01 */	li r5, 1
/* 804AA008  4B FF FE CD */	bl aTUMB_calc_model_scale_sub
/* 804AA00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AA014  7C 08 03 A6 */	mtlr r0
/* 804AA018  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA01C  4E 80 00 20 */	blr 
