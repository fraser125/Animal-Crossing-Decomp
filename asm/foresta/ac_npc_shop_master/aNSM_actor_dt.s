lbl_80576CA8:
/* 80576CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576CAC  7C 08 02 A6 */	mflr r0
/* 80576CB0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80576CB4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80576CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576CBC  3C A5 00 02 */	addis r5, r5, 2
/* 80576CC0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80576CC4  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80576CC8  7D 89 03 A6 */	mtctr r12
/* 80576CCC  4E 80 04 21 */	bctrl 
/* 80576CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576CD4  7C 08 03 A6 */	mtlr r0
/* 80576CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80576CDC  4E 80 00 20 */	blr 
