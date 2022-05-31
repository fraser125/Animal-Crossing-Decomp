lbl_8054C2D4:
/* 8054C2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C2D8  7C 08 02 A6 */	mflr r0
/* 8054C2DC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054C2E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054C2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C2E8  3C A5 00 02 */	addis r5, r5, 2
/* 8054C2EC  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 8054C2F0  88 05 00 0C */	lbz r0, 0xc(r5)
/* 8054C2F4  28 00 00 02 */	cmplwi r0, 2
/* 8054C2F8  40 82 00 14 */	bne lbl_8054C30C
/* 8054C2FC  81 83 09 A8 */	lwz r12, 0x9a8(r3)
/* 8054C300  38 A0 00 09 */	li r5, 9
/* 8054C304  7D 89 03 A6 */	mtctr r12
/* 8054C308  4E 80 04 21 */	bctrl 
lbl_8054C30C:
/* 8054C30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C310  7C 08 03 A6 */	mtlr r0
/* 8054C314  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C318  4E 80 00 20 */	blr 
