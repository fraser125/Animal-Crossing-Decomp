lbl_803C5044:
/* 803C5044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C5048  7C 08 02 A6 */	mflr r0
/* 803C504C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C5050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C5054  7C 9F 23 78 */	mr r31, r4
/* 803C5058  93 C1 00 08 */	stw r30, 8(r1)
/* 803C505C  7C 7E 1B 78 */	mr r30, r3
/* 803C5060  80 84 00 00 */	lwz r4, 0(r4)
/* 803C5064  4B FF AF E5 */	bl func_803C0048
/* 803C5068  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C506C  7C 00 1A 14 */	add r0, r0, r3
/* 803C5070  38 60 00 00 */	li r3, 0
/* 803C5074  90 1F 00 00 */	stw r0, 0(r31)
/* 803C5078  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C507C  64 00 00 01 */	oris r0, r0, 1
/* 803C5080  90 1E 04 0C */	stw r0, 0x40c(r30)
/* 803C5084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C5088  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C508C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5090  7C 08 03 A6 */	mtlr r0
/* 803C5094  38 21 00 10 */	addi r1, r1, 0x10
/* 803C5098  4E 80 00 20 */	blr 