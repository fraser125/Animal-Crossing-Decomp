lbl_80591C98:
/* 80591C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591C9C  7C 08 02 A6 */	mflr r0
/* 80591CA0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80591CA4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80591CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591CAC  3C A5 00 02 */	addis r5, r5, 2
/* 80591CB0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80591CB4  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80591CB8  7D 89 03 A6 */	mtctr r12
/* 80591CBC  4E 80 04 21 */	bctrl 
/* 80591CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591CC4  7C 08 03 A6 */	mtlr r0
/* 80591CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80591CCC  4E 80 00 20 */	blr 
