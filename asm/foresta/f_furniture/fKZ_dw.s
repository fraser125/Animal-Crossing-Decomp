lbl_8063DEDC:
/* 8063DEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063DEE0  7C 08 02 A6 */	mflr r0
/* 8063DEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063DEE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DEEC  4B A5 CF E9 */	bl func_8009AED4
/* 8063DEF0  83 A5 00 00 */	lwz r29, 0(r5)
/* 8063DEF4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063DEF8  A0 63 00 00 */	lhz r3, 0(r3)
/* 8063DEFC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063DF00  83 FD 02 D0 */	lwz r31, 0x2d0(r29)
/* 8063DF04  38 83 FB A5 */	addi r4, r3, -1115
/* 8063DF08  38 7F 00 08 */	addi r3, r31, 8
/* 8063DF0C  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8063DF10  54 9E 07 7E */	clrlwi r30, r4, 0x1d
/* 8063DF14  90 1F 00 00 */	stw r0, 0(r31)
/* 8063DF18  80 65 00 00 */	lwz r3, 0(r5)
/* 8063DF1C  4B DC F4 B9 */	bl _Matrix_to_Mtx_new
/* 8063DF20  90 7F 00 04 */	stw r3, 4(r31)
/* 8063DF24  3C 60 80 6E */	lis r3, fKZ_model_table@ha /* 0x806DE658@ha */
/* 8063DF28  3C 80 DE 00 */	lis r4, 0xde00
/* 8063DF2C  57 C0 10 3A */	slwi r0, r30, 2
/* 8063DF30  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 8063DF34  38 63 E6 58 */	addi r3, r3, fKZ_model_table@l /* 0x806DE658@l */
/* 8063DF38  38 A6 00 08 */	addi r5, r6, 8
/* 8063DF3C  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 8063DF40  90 86 00 00 */	stw r4, 0(r6)
/* 8063DF44  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063DF48  90 06 00 04 */	stw r0, 4(r6)
/* 8063DF4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DF50  4B A5 CF D1 */	bl func_8009AF20
/* 8063DF54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063DF58  7C 08 03 A6 */	mtlr r0
/* 8063DF5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063DF60  4E 80 00 20 */	blr 
