lbl_8056652C:
/* 8056652C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566530  7C 08 02 A6 */	mflr r0
/* 80566534  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80566538  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056653C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566540  3C A5 00 02 */	addis r5, r5, 2
/* 80566544  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80566548  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8056654C  7D 89 03 A6 */	mtctr r12
/* 80566550  4E 80 04 21 */	bctrl 
/* 80566554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566558  7C 08 03 A6 */	mtlr r0
/* 8056655C  38 21 00 10 */	addi r1, r1, 0x10
/* 80566560  4E 80 00 20 */	blr 
