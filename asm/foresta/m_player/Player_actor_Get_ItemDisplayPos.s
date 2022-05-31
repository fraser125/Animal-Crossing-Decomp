lbl_804DD750:
/* 804DD750  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DD754  7C 08 02 A6 */	mflr r0
/* 804DD758  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804DD75C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804DD760  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DD764  3C A5 00 02 */	addis r5, r5, 2
/* 804DD768  80 A5 60 80 */	lwz r5, 0x6080(r5)
/* 804DD76C  28 05 00 00 */	cmplwi r5, 0
/* 804DD770  41 82 00 38 */	beq lbl_804DD7A8
/* 804DD774  81 85 00 28 */	lwz r12, 0x28(r5)
/* 804DD778  28 0C 00 00 */	cmplwi r12, 0
/* 804DD77C  41 82 00 2C */	beq lbl_804DD7A8
/* 804DD780  80 C4 00 00 */	lwz r6, 0(r4)
/* 804DD784  80 A4 00 04 */	lwz r5, 4(r4)
/* 804DD788  80 04 00 08 */	lwz r0, 8(r4)
/* 804DD78C  38 81 00 08 */	addi r4, r1, 8
/* 804DD790  90 C1 00 08 */	stw r6, 8(r1)
/* 804DD794  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804DD798  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DD79C  7D 89 03 A6 */	mtctr r12
/* 804DD7A0  4E 80 04 21 */	bctrl 
/* 804DD7A4  48 00 00 1C */	b lbl_804DD7C0
lbl_804DD7A8:
/* 804DD7A8  80 A4 00 00 */	lwz r5, 0(r4)
/* 804DD7AC  80 04 00 04 */	lwz r0, 4(r4)
/* 804DD7B0  90 A3 00 00 */	stw r5, 0(r3)
/* 804DD7B4  90 03 00 04 */	stw r0, 4(r3)
/* 804DD7B8  80 04 00 08 */	lwz r0, 8(r4)
/* 804DD7BC  90 03 00 08 */	stw r0, 8(r3)
lbl_804DD7C0:
/* 804DD7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DD7C4  7C 08 03 A6 */	mtlr r0
/* 804DD7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DD7CC  4E 80 00 20 */	blr 
