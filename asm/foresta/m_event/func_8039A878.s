lbl_8039A878:
/* 8039A878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A87C  7C 08 02 A6 */	mflr r0
/* 8039A880  38 80 00 48 */	li r4, 0x48
/* 8039A884  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A888  38 00 FF FF */	li r0, -1
/* 8039A88C  90 03 00 08 */	stw r0, 8(r3)
/* 8039A890  38 63 00 0C */	addi r3, r3, 0xc
/* 8039A894  4B CC 27 D5 */	bl bzero
/* 8039A898  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A89C  38 80 00 18 */	li r4, 0x18
/* 8039A8A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A8A4  3C 63 00 02 */	addis r3, r3, 2
/* 8039A8A8  38 63 66 84 */	addi r3, r3, 0x6684
/* 8039A8AC  4B CC 27 BD */	bl bzero
/* 8039A8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A8B4  7C 08 03 A6 */	mtlr r0
/* 8039A8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A8BC  4E 80 00 20 */	blr 
