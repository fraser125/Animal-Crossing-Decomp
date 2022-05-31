lbl_803CA01C:
/* 803CA01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CA020  7C 08 02 A6 */	mflr r0
/* 803CA024  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CA028  4B FF FE 6D */	bl func_803C9E94
/* 803CA02C  4B FF FE 9D */	bl mNtc_operate_data_list
/* 803CA030  4B FF FF 59 */	bl mNtc_sort_data_list
/* 803CA034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CA038  7C 08 03 A6 */	mtlr r0
/* 803CA03C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CA040  4E 80 00 20 */	blr 
