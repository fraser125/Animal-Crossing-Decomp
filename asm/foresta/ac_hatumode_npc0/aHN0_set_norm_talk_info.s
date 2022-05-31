lbl_8052AEB0:
/* 8052AEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052AEB4  7C 08 02 A6 */	mflr r0
/* 8052AEB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052AEBC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052AEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052AEC4  3C 84 00 02 */	addis r4, r4, 2
/* 8052AEC8  80 84 60 D0 */	lwz r4, 0x60d0(r4)
/* 8052AECC  28 04 00 00 */	cmplwi r4, 0
/* 8052AED0  41 82 00 14 */	beq lbl_8052AEE4
/* 8052AED4  81 84 00 00 */	lwz r12, 0(r4)
/* 8052AED8  38 80 00 01 */	li r4, 1
/* 8052AEDC  7D 89 03 A6 */	mtctr r12
/* 8052AEE0  4E 80 04 21 */	bctrl 
lbl_8052AEE4:
/* 8052AEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052AEE8  7C 08 03 A6 */	mtlr r0
/* 8052AEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052AEF0  4E 80 00 20 */	blr 
