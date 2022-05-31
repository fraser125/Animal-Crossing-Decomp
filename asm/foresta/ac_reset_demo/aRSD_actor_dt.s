lbl_80495CEC:
/* 80495CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495CF0  7C 08 02 A6 */	mflr r0
/* 80495CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495CF8  80 03 01 94 */	lwz r0, 0x194(r3)
/* 80495CFC  28 00 00 00 */	cmplwi r0, 0
/* 80495D00  41 82 00 10 */	beq lbl_80495D10
/* 80495D04  38 64 1D 90 */	addi r3, r4, 0x1d90
/* 80495D08  7C 04 03 78 */	mr r4, r0
/* 80495D0C  4B F2 64 D9 */	bl Global_light_list_delete
lbl_80495D10:
/* 80495D10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80495D14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80495D18  3C 63 00 02 */	addis r3, r3, 2
/* 80495D1C  80 03 60 B0 */	lwz r0, 0x60b0(r3)
/* 80495D20  28 00 00 00 */	cmplwi r0, 0
/* 80495D24  41 82 00 0C */	beq lbl_80495D30
/* 80495D28  38 00 00 00 */	li r0, 0
/* 80495D2C  90 03 60 B0 */	stw r0, 0x60b0(r3)
lbl_80495D30:
/* 80495D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495D34  7C 08 03 A6 */	mtlr r0
/* 80495D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80495D3C  4E 80 00 20 */	blr 
