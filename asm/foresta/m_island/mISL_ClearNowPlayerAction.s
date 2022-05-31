lbl_803B3F04:
/* 803B3F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3F08  7C 08 02 A6 */	mflr r0
/* 803B3F0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B3F10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B3F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3F18  3C 63 00 02 */	addis r3, r3, 2
/* 803B3F1C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803B3F20  28 03 00 00 */	cmplwi r3, 0
/* 803B3F24  41 82 00 28 */	beq lbl_803B3F4C
/* 803B3F28  4B FF FF 61 */	bl mISL_GetCheckP
/* 803B3F2C  28 03 00 00 */	cmplwi r3, 0
/* 803B3F30  41 82 00 0C */	beq lbl_803B3F3C
/* 803B3F34  38 00 00 00 */	li r0, 0
/* 803B3F38  90 03 00 00 */	stw r0, 0(r3)
lbl_803B3F3C:
/* 803B3F3C  3C 60 81 17 */	lis r3, l_misl_count_table@ha /* 0x81169B7C@ha */
/* 803B3F40  38 80 00 20 */	li r4, 0x20
/* 803B3F44  38 63 9B 7C */	addi r3, r3, l_misl_count_table@l /* 0x81169B7C@l */
/* 803B3F48  4B CA 91 21 */	bl bzero
lbl_803B3F4C:
/* 803B3F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3F50  7C 08 03 A6 */	mtlr r0
/* 803B3F54  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3F58  4E 80 00 20 */	blr 
