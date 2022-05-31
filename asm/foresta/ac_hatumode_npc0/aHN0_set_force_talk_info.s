lbl_8052AE24:
/* 8052AE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AE28  7C 08 02 A6 */	mflr r0
/* 8052AE2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052AE30  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052AE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AE38  3C 84 00 02 */	addis r4, r4, 2
/* 8052AE3C  80 84 60 D0 */	lwz r4, 0x60d0(r4)
/* 8052AE40  28 04 00 00 */	cmplwi r4, 0
/* 8052AE44  41 82 00 14 */	beq lbl_8052AE58
/* 8052AE48  81 84 00 00 */	lwz r12, 0(r4)
/* 8052AE4C  38 80 00 00 */	li r4, 0
/* 8052AE50  7D 89 03 A6 */	mtctr r12
/* 8052AE54  4E 80 04 21 */	bctrl 
lbl_8052AE58:
/* 8052AE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AE5C  7C 08 03 A6 */	mtlr r0
/* 8052AE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AE64  4E 80 00 20 */	blr 
