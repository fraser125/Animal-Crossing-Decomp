lbl_80533F40:
/* 80533F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533F44  7C 08 02 A6 */	mflr r0
/* 80533F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533F50  7C 7F 1B 78 */	mr r31, r3
/* 80533F54  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80533F58  2C 00 00 01 */	cmpwi r0, 1
/* 80533F5C  40 82 00 44 */	bne lbl_80533FA0
/* 80533F60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80533F64  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80533F68  3C 84 00 02 */	addis r4, r4, 2
/* 80533F6C  80 84 60 94 */	lwz r4, 0x6094(r4)
/* 80533F70  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80533F74  7C 00 F8 40 */	cmplw r0, r31
/* 80533F78  40 82 00 28 */	bne lbl_80533FA0
/* 80533F7C  81 84 00 08 */	lwz r12, 8(r4)
/* 80533F80  38 80 00 02 */	li r4, 2
/* 80533F84  7D 89 03 A6 */	mtctr r12
/* 80533F88  4E 80 04 21 */	bctrl 
/* 80533F8C  7F E3 FB 78 */	mr r3, r31
/* 80533F90  4B FF 9C 6D */	bl aNPC_clear_left_hand_info
/* 80533F94  7F E3 FB 78 */	mr r3, r31
/* 80533F98  38 80 00 06 */	li r4, 6
/* 80533F9C  4B FF FD 69 */	bl func_80533D04
lbl_80533FA0:
/* 80533FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533FA8  7C 08 03 A6 */	mtlr r0
/* 80533FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80533FB0  4E 80 00 20 */	blr 
