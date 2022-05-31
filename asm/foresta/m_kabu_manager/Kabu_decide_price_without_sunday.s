lbl_803B6020:
/* 803B6020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6024  7C 08 02 A6 */	mflr r0
/* 803B6028  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B602C  3C 60 80 65 */	lis r3, process@ha /* 0x80655C6C@ha */
/* 803B6030  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B6034  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6038  3C 84 00 02 */	addis r4, r4, 2
/* 803B603C  38 63 5C 6C */	addi r3, r3, process@l /* 0x80655C6C@l */
/* 803B6040  A0 04 04 8E */	lhz r0, 0x48e(r4)
/* 803B6044  54 00 10 3A */	slwi r0, r0, 2
/* 803B6048  7D 83 00 2E */	lwzx r12, r3, r0
/* 803B604C  7D 89 03 A6 */	mtctr r12
/* 803B6050  4E 80 04 21 */	bctrl 
/* 803B6054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6058  7C 08 03 A6 */	mtlr r0
/* 803B605C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6060  4E 80 00 20 */	blr 
