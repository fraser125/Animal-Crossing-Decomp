lbl_8062FB0C:
/* 8062FB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FB10  7C 08 02 A6 */	mflr r0
/* 8062FB14  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8062FB18  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8062FB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FB20  3C A5 00 02 */	addis r5, r5, 2
/* 8062FB24  80 A5 60 8C */	lwz r5, 0x608c(r5)
/* 8062FB28  28 05 00 00 */	cmplwi r5, 0
/* 8062FB2C  41 82 00 14 */	beq lbl_8062FB40
/* 8062FB30  81 85 00 64 */	lwz r12, 0x64(r5)
/* 8062FB34  38 A0 00 0F */	li r5, 0xf
/* 8062FB38  7D 89 03 A6 */	mtctr r12
/* 8062FB3C  4E 80 04 21 */	bctrl 
lbl_8062FB40:
/* 8062FB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062FB44  7C 08 03 A6 */	mtlr r0
/* 8062FB48  38 21 00 10 */	addi r1, r1, 0x10
/* 8062FB4C  4E 80 00 20 */	blr 
