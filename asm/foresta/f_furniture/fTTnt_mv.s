lbl_8063FB50:
/* 8063FB50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063FB54  7C 08 02 A6 */	mflr r0
/* 8063FB58  3C 80 80 6E */	lis r4, int_tak_tent_off_pal@ha /* 0x806DFA60@ha */
/* 8063FB5C  3C A0 80 6E */	lis r5, int_tak_tent_on_pal@ha /* 0x806DFA40@ha */
/* 8063FB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063FB64  7C 66 1B 78 */	mr r6, r3
/* 8063FB68  38 84 FA 60 */	addi r4, r4, int_tak_tent_off_pal@l /* 0x806DFA60@l */
/* 8063FB6C  38 A5 FA 40 */	addi r5, r5, int_tak_tent_on_pal@l /* 0x806DFA40@l */
/* 8063FB70  80 63 08 50 */	lwz r3, 0x850(r3)
/* 8063FB74  4B FE ED 11 */	bl func_8062E884
/* 8063FB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063FB7C  7C 08 03 A6 */	mtlr r0
/* 8063FB80  38 21 00 10 */	addi r1, r1, 0x10
/* 8063FB84  4E 80 00 20 */	blr 
