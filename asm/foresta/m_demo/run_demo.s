lbl_80399ED0:
/* 80399ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399ED4  7C 08 02 A6 */	mflr r0
/* 80399ED8  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399EDC  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399EE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80399EE8  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80399EEC  2C 00 00 01 */	cmpwi r0, 1
/* 80399EF0  40 82 00 54 */	bne lbl_80399F44
/* 80399EF4  80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 80399EF8  3C 60 80 64 */	lis r3, wait_start@ha /* 0x80641D8C@ha */
/* 80399EFC  38 63 1D 8C */	addi r3, r3, wait_start@l /* 0x80641D8C@l */
/* 80399F00  54 00 10 3A */	slwi r0, r0, 2
/* 80399F04  7D 83 00 2E */	lwzx r12, r3, r0
/* 80399F08  7D 89 03 A6 */	mtctr r12
/* 80399F0C  4E 80 04 21 */	bctrl 
/* 80399F10  2C 03 00 00 */	cmpwi r3, 0
/* 80399F14  41 82 00 70 */	beq lbl_80399F84
/* 80399F18  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399F1C  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399F20  80 63 00 00 */	lwz r3, 0(r3)
/* 80399F24  80 63 02 F8 */	lwz r3, 0x2f8(r3)
/* 80399F28  4B FF EA 65 */	bl change_camera
/* 80399F2C  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399F30  38 00 00 02 */	li r0, 2
/* 80399F34  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399F38  80 63 00 00 */	lwz r3, 0(r3)
/* 80399F3C  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80399F40  48 00 00 44 */	b lbl_80399F84
lbl_80399F44:
/* 80399F44  2C 00 00 02 */	cmpwi r0, 2
/* 80399F48  40 82 00 3C */	bne lbl_80399F84
/* 80399F4C  80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 80399F50  3C 60 80 64 */	lis r3, wait_end@ha /* 0x80641DD0@ha */
/* 80399F54  38 63 1D D0 */	addi r3, r3, wait_end@l /* 0x80641DD0@l */
/* 80399F58  54 00 10 3A */	slwi r0, r0, 2
/* 80399F5C  7D 83 00 2E */	lwzx r12, r3, r0
/* 80399F60  7D 89 03 A6 */	mtctr r12
/* 80399F64  4E 80 04 21 */	bctrl 
/* 80399F68  2C 03 00 00 */	cmpwi r3, 0
/* 80399F6C  41 82 00 18 */	beq lbl_80399F84
/* 80399F70  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399F74  38 00 00 09 */	li r0, 9
/* 80399F78  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399F7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80399F80  90 03 00 DC */	stw r0, 0xdc(r3)
lbl_80399F84:
/* 80399F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399F88  7C 08 03 A6 */	mtlr r0
/* 80399F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80399F90  4E 80 00 20 */	blr 
