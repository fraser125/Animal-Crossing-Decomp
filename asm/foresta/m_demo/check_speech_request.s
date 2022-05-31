lbl_80399D88:
/* 80399D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399D8C  7C 08 02 A6 */	mflr r0
/* 80399D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399D94  4B FF FD FD */	bl choice_demo_sub
/* 80399D98  2C 03 FF FF */	cmpwi r3, -1
/* 80399D9C  38 A0 00 00 */	li r5, 0
/* 80399DA0  41 82 00 28 */	beq lbl_80399DC8
/* 80399DA4  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399DA8  54 63 20 36 */	slwi r3, r3, 4
/* 80399DAC  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80399DB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80399DB4  38 03 00 F4 */	addi r0, r3, 0xf4
/* 80399DB8  7C 04 00 2E */	lwzx r0, r4, r0
/* 80399DBC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80399DC0  40 82 00 08 */	bne lbl_80399DC8
/* 80399DC4  38 A0 00 01 */	li r5, 1
lbl_80399DC8:
/* 80399DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399DCC  7C A3 2B 78 */	mr r3, r5
/* 80399DD0  7C 08 03 A6 */	mtlr r0
/* 80399DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80399DD8  4E 80 00 20 */	blr 
