lbl_80607A20:
/* 80607A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80607A24  7C 08 02 A6 */	mflr r0
/* 80607A28  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80607A2C  7C 67 1B 78 */	mr r7, r3
/* 80607A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80607A34  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80607A38  7C 83 23 78 */	mr r3, r4
/* 80607A3C  38 87 00 10 */	addi r4, r7, 0x10
/* 80607A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80607A44  3C A5 00 02 */	addis r5, r5, 2
/* 80607A48  80 C5 60 9C */	lwz r6, 0x609c(r5)
/* 80607A4C  38 A7 00 34 */	addi r5, r7, 0x34
/* 80607A50  83 E3 00 00 */	lwz r31, 0(r3)
/* 80607A54  81 86 00 18 */	lwz r12, 0x18(r6)
/* 80607A58  7D 89 03 A6 */	mtctr r12
/* 80607A5C  4E 80 04 21 */	bctrl 
/* 80607A60  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80607A64  3C 80 FF FF */	lis r4, 0xFFFF /* 0xFFFF00FF@ha */
/* 80607A68  3C 60 80 CB */	lis r3, ef_carhosi01_00_modelT@ha /* 0x80CAFFE0@ha */
/* 80607A6C  3C C0 FB 00 */	lis r6, 0xfb00
/* 80607A70  38 07 00 08 */	addi r0, r7, 8
/* 80607A74  38 A4 00 FF */	addi r5, r4, 0x00FF /* 0xFFFF00FF@l */
/* 80607A78  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80607A7C  3C 80 DE 00 */	lis r4, 0xde00
/* 80607A80  38 03 FF E0 */	addi r0, r3, ef_carhosi01_00_modelT@l /* 0x80CAFFE0@l */
/* 80607A84  90 C7 00 00 */	stw r6, 0(r7)
/* 80607A88  90 A7 00 04 */	stw r5, 4(r7)
/* 80607A8C  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80607A90  38 65 00 08 */	addi r3, r5, 8
/* 80607A94  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80607A98  90 85 00 00 */	stw r4, 0(r5)
/* 80607A9C  90 05 00 04 */	stw r0, 4(r5)
/* 80607AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80607AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80607AA8  7C 08 03 A6 */	mtlr r0
/* 80607AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80607AB0  4E 80 00 20 */	blr 
