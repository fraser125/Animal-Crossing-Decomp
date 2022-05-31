lbl_80399CD0:
/* 80399CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399CD4  7C 08 02 A6 */	mflr r0
/* 80399CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80399CE0  4B FF FE B1 */	bl choice_demo_sub
/* 80399CE4  7C 7F 1B 78 */	mr r31, r3
/* 80399CE8  2C 1F FF FF */	cmpwi r31, -1
/* 80399CEC  41 82 00 84 */	beq lbl_80399D70
/* 80399CF0  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399CF4  57 E3 20 36 */	slwi r3, r31, 4
/* 80399CF8  80 C4 1C BC */	lwz r6, data_80641CBC@l(r4)  /* 0x80641CBC@l */
/* 80399CFC  38 83 00 F0 */	addi r4, r3, 0xf0
/* 80399D00  38 A0 00 10 */	li r5, 0x10
/* 80399D04  38 66 00 E0 */	addi r3, r6, 0xe0
/* 80399D08  7C 86 22 14 */	add r4, r6, r4
/* 80399D0C  4B C6 97 85 */	bl memcpy
/* 80399D10  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399D14  3C 60 80 64 */	lis r3, default_set_func@ha /* 0x80641D48@ha */
/* 80399D18  38 84 1C BC */	addi r4, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80399D1C  80 84 00 00 */	lwz r4, 0(r4)
/* 80399D20  38 63 1D 48 */	addi r3, r3, default_set_func@l /* 0x80641D48@l */
/* 80399D24  80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 80399D28  54 00 10 3A */	slwi r0, r0, 2
/* 80399D2C  7D 83 00 2E */	lwzx r12, r3, r0
/* 80399D30  7D 89 03 A6 */	mtctr r12
/* 80399D34  4E 80 04 21 */	bctrl 
/* 80399D38  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399D3C  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399D40  80 63 00 00 */	lwz r3, 0(r3)
/* 80399D44  81 83 00 E8 */	lwz r12, 0xe8(r3)
/* 80399D48  28 0C 00 00 */	cmplwi r12, 0
/* 80399D4C  41 82 00 10 */	beq lbl_80399D5C
/* 80399D50  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 80399D54  7D 89 03 A6 */	mtctr r12
/* 80399D58  4E 80 04 21 */	bctrl 
lbl_80399D5C:
/* 80399D5C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399D60  38 00 00 01 */	li r0, 1
/* 80399D64  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399D68  80 63 00 00 */	lwz r3, 0(r3)
/* 80399D6C  90 03 00 DC */	stw r0, 0xdc(r3)
lbl_80399D70:
/* 80399D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399D74  7F E3 FB 78 */	mr r3, r31
/* 80399D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80399D7C  7C 08 03 A6 */	mtlr r0
/* 80399D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80399D84  4E 80 00 20 */	blr 
