lbl_804CD80C:
/* 804CD80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD810  7C 08 02 A6 */	mflr r0
/* 804CD814  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD818  38 63 1D 90 */	addi r3, r3, 0x1d90
/* 804CD81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD820  38 84 08 40 */	addi r4, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CD824  80 84 24 A8 */	lwz r4, 0x24a8(r4)
/* 804CD828  4B EE E9 BD */	bl Global_light_list_delete
/* 804CD82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD830  7C 08 03 A6 */	mtlr r0
/* 804CD834  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD838  4E 80 00 20 */	blr 
