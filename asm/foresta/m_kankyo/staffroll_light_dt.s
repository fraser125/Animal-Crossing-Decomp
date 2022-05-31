lbl_803B95A4:
/* 803B95A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B95A8  7C 08 02 A6 */	mflr r0
/* 803B95AC  3C 80 81 17 */	lis r4, S_get_light_list@ha /* 0x81169C48@ha */
/* 803B95B0  38 63 1D 90 */	addi r3, r3, 0x1d90
/* 803B95B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B95B8  38 84 9C 48 */	addi r4, r4, S_get_light_list@l /* 0x81169C48@l */
/* 803B95BC  80 84 00 00 */	lwz r4, 0(r4)
/* 803B95C0  48 00 2C 25 */	bl Global_light_list_delete
/* 803B95C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B95C8  7C 08 03 A6 */	mtlr r0
/* 803B95CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B95D0  4E 80 00 20 */	blr 
