lbl_80589724:
/* 80589724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589728  7C 08 02 A6 */	mflr r0
/* 8058972C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80589730  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80589734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589738  3C A5 00 02 */	addis r5, r5, 2
/* 8058973C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80589740  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80589744  7D 89 03 A6 */	mtctr r12
/* 80589748  4E 80 04 21 */	bctrl 
/* 8058974C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589750  7C 08 03 A6 */	mtlr r0
/* 80589754  38 21 00 10 */	addi r1, r1, 0x10
/* 80589758  4E 80 00 20 */	blr 
