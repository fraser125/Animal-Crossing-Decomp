lbl_803E3CEC:
/* 803E3CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E3CF0  7C 08 02 A6 */	mflr r0
/* 803E3CF4  28 03 00 00 */	cmplwi r3, 0
/* 803E3CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E3CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E3D00  3B E0 00 00 */	li r31, 0
/* 803E3D04  41 82 00 2C */	beq lbl_803E3D30
/* 803E3D08  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E3D0C  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 803E3D10  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803E3D14  38 A0 00 0F */	li r5, 0xf
/* 803E3D18  3C 63 00 01 */	addis r3, r3, 1
/* 803E3D1C  38 63 74 38 */	addi r3, r3, 0x7438
/* 803E3D20  4B FE 89 BD */	bl mNpc_SearchAnimalinfo
/* 803E3D24  2C 03 FF FF */	cmpwi r3, -1
/* 803E3D28  40 82 00 08 */	bne lbl_803E3D30
/* 803E3D2C  3B E0 00 01 */	li r31, 1
lbl_803E3D30:
/* 803E3D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E3D34  7F E3 FB 78 */	mr r3, r31
/* 803E3D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E3D3C  7C 08 03 A6 */	mtlr r0
/* 803E3D40  38 21 00 10 */	addi r1, r1, 0x10
/* 803E3D44  4E 80 00 20 */	blr 
