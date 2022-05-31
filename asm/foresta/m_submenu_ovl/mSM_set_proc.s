lbl_805EEFC4:
/* 805EEFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EEFC8  7C 08 02 A6 */	mflr r0
/* 805EEFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EEFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EEFD4  7C 7F 1B 78 */	mr r31, r3
/* 805EEFD8  4B FF FF A9 */	bl mSM_save_before_func
/* 805EEFDC  7F E3 FB 78 */	mr r3, r31
/* 805EEFE0  4B FF FD FD */	bl mSM_set_new_start_data
/* 805EEFE4  7F E3 FB 78 */	mr r3, r31
/* 805EEFE8  4B FF FD A9 */	bl mSM_set_new_seg
/* 805EEFEC  7F E3 FB 78 */	mr r3, r31
/* 805EEFF0  4B FF FC BD */	bl mSM_set_other_seg
/* 805EEFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EEFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EEFFC  7C 08 03 A6 */	mtlr r0
/* 805EF000  38 21 00 10 */	addi r1, r1, 0x10
/* 805EF004  4E 80 00 20 */	blr 
