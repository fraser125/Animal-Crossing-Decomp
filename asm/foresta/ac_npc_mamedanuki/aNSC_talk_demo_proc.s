lbl_8055A68C:
/* 8055A68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A690  7C 08 02 A6 */	mflr r0
/* 8055A694  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A69C  7C 7F 1B 78 */	mr r31, r3
/* 8055A6A0  38 60 00 08 */	li r3, 8
/* 8055A6A4  7F E4 FB 78 */	mr r4, r31
/* 8055A6A8  4B E3 FB BD */	bl mDemo_Check
/* 8055A6AC  2C 03 00 01 */	cmpwi r3, 1
/* 8055A6B0  41 82 00 18 */	beq lbl_8055A6C8
/* 8055A6B4  7F E4 FB 78 */	mr r4, r31
/* 8055A6B8  38 60 00 07 */	li r3, 7
/* 8055A6BC  4B E3 FB A9 */	bl mDemo_Check
/* 8055A6C0  2C 03 00 01 */	cmpwi r3, 1
/* 8055A6C4  40 82 00 24 */	bne lbl_8055A6E8
lbl_8055A6C8:
/* 8055A6C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055A6CC  7F E3 FB 78 */	mr r3, r31
/* 8055A6D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055A6D4  3C 84 00 02 */	addis r4, r4, 2
/* 8055A6D8  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 8055A6DC  81 84 01 10 */	lwz r12, 0x110(r4)
/* 8055A6E0  7D 89 03 A6 */	mtctr r12
/* 8055A6E4  4E 80 04 21 */	bctrl 
lbl_8055A6E8:
/* 8055A6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A6F0  7C 08 03 A6 */	mtlr r0
/* 8055A6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A6F8  4E 80 00 20 */	blr 
