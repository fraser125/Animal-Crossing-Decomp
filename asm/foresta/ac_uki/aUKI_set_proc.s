lbl_804AF37C:
/* 804AF37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AF380  7C 08 02 A6 */	mflr r0
/* 804AF384  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AF388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AF38C  7C BF 2B 78 */	mr r31, r5
/* 804AF390  3C A0 80 69 */	lis r5, init_proc@ha /* 0x8068FAEC@ha */
/* 804AF394  93 C1 00 08 */	stw r30, 8(r1)
/* 804AF398  57 E0 10 3A */	slwi r0, r31, 2
/* 804AF39C  38 A5 FA EC */	addi r5, r5, init_proc@l /* 0x8068FAEC@l */
/* 804AF3A0  7C 7E 1B 78 */	mr r30, r3
/* 804AF3A4  7D 85 00 2E */	lwzx r12, r5, r0
/* 804AF3A8  7C C5 33 78 */	mr r5, r6
/* 804AF3AC  7D 89 03 A6 */	mtctr r12
/* 804AF3B0  4E 80 04 21 */	bctrl 
/* 804AF3B4  B3 FE 01 D8 */	sth r31, 0x1d8(r30)
/* 804AF3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AF3BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AF3C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AF3C4  7C 08 03 A6 */	mtlr r0
/* 804AF3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AF3CC  4E 80 00 20 */	blr 
