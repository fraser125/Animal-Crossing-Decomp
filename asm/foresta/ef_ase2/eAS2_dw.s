lbl_8060512C:
/* 8060512C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80605130  7C 08 02 A6 */	mflr r0
/* 80605134  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80605138  7C 66 1B 78 */	mr r6, r3
/* 8060513C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80605140  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80605144  7C 83 23 78 */	mr r3, r4
/* 80605148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060514C  3C 85 00 02 */	addis r4, r5, 2
/* 80605150  38 A6 00 34 */	addi r5, r6, 0x34
/* 80605154  93 C1 00 08 */	stw r30, 8(r1)
/* 80605158  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 8060515C  A8 06 00 4C */	lha r0, 0x4c(r6)
/* 80605160  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 80605164  38 86 00 10 */	addi r4, r6, 0x10
/* 80605168  54 00 F7 BE */	rlwinm r0, r0, 0x1e, 0x1e, 0x1f
/* 8060516C  38 C6 00 40 */	addi r6, r6, 0x40
/* 80605170  7C 1F 07 34 */	extsh r31, r0
/* 80605174  83 C3 00 00 */	lwz r30, 0(r3)
/* 80605178  7D 89 03 A6 */	mtctr r12
/* 8060517C  4E 80 04 21 */	bctrl 
/* 80605180  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 80605184  3C 60 80 6D */	lis r3, data_806D1DA0@ha /* 0x806D1DA0@ha */
/* 80605188  3C 80 DE 00 */	lis r4, 0xde00
/* 8060518C  57 E0 10 3A */	slwi r0, r31, 2
/* 80605190  38 A6 00 08 */	addi r5, r6, 8
/* 80605194  38 63 1D A0 */	addi r3, r3, data_806D1DA0@l /* 0x806D1DA0@l */
/* 80605198  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 8060519C  90 86 00 00 */	stw r4, 0(r6)
/* 806051A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 806051A4  90 06 00 04 */	stw r0, 4(r6)
/* 806051A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806051AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806051B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806051B4  7C 08 03 A6 */	mtlr r0
/* 806051B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806051BC  4E 80 00 20 */	blr 