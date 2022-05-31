lbl_804AA7FC:
/* 804AA7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA800  7C 08 02 A6 */	mflr r0
/* 804AA804  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AA80C  7C 7F 1B 78 */	mr r31, r3
/* 804AA810  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804AA814  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804AA818  7C 04 00 00 */	cmpw r4, r0
/* 804AA81C  41 82 00 08 */	beq lbl_804AA824
/* 804AA820  4B FF FF BD */	bl aTZN2_setupAction
lbl_804AA824:
/* 804AA824  81 9F 01 CC */	lwz r12, 0x1cc(r31)
/* 804AA828  7F E3 FB 78 */	mr r3, r31
/* 804AA82C  7D 89 03 A6 */	mtctr r12
/* 804AA830  4E 80 04 21 */	bctrl 
/* 804AA834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AA83C  7C 08 03 A6 */	mtlr r0
/* 804AA840  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA844  4E 80 00 20 */	blr 
