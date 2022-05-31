lbl_8058D81C:
/* 8058D81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D820  7C 08 02 A6 */	mflr r0
/* 8058D824  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058D828  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058D82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D830  3C A5 00 02 */	addis r5, r5, 2
/* 8058D834  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058D838  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8058D83C  7D 89 03 A6 */	mtctr r12
/* 8058D840  4E 80 04 21 */	bctrl 
/* 8058D844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D848  7C 08 03 A6 */	mtlr r0
/* 8058D84C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D850  4E 80 00 20 */	blr 
