lbl_804CD66C:
/* 804CD66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD670  7C 08 02 A6 */	mflr r0
/* 804CD674  3C 60 81 1D */	lis r3, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD678  38 80 00 64 */	li r4, 0x64
/* 804CD67C  38 63 08 40 */	addi r3, r3, data_811D0840@l /* 0x811D0840@l */
/* 804CD680  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD684  38 A0 00 00 */	li r5, 0
/* 804CD688  38 63 24 34 */	addi r3, r3, 0x2434
/* 804CD68C  48 00 08 01 */	bl func_804CDE8C
/* 804CD690  3C 60 81 1D */	lis r3, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD694  38 00 00 00 */	li r0, 0
/* 804CD698  38 63 08 40 */	addi r3, r3, data_811D0840@l /* 0x811D0840@l */
/* 804CD69C  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 804CD6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD6A4  7C 08 03 A6 */	mtlr r0
/* 804CD6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD6AC  4E 80 00 20 */	blr 