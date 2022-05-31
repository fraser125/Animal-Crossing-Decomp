lbl_80590B8C:
/* 80590B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590B90  7C 08 02 A6 */	mflr r0
/* 80590B94  3C A0 80 6C */	lis r5, process@ha /* 0x806C2818@ha */
/* 80590B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590B9C  38 00 00 00 */	li r0, 0
/* 80590BA0  38 A5 28 18 */	addi r5, r5, process@l /* 0x806C2818@l */
/* 80590BA4  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80590BA8  54 80 10 3A */	slwi r0, r4, 2
/* 80590BAC  90 83 09 94 */	stw r4, 0x994(r3)
/* 80590BB0  7C 05 00 2E */	lwzx r0, r5, r0
/* 80590BB4  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80590BB8  4B FF FE A9 */	bl aGH0_set_animation
/* 80590BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590BC0  7C 08 03 A6 */	mtlr r0
/* 80590BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80590BC8  4E 80 00 20 */	blr 
