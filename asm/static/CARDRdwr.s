.include "macros.inc"

.section .text

.org 0x8008E554

.global BlockReadCallback
BlockReadCallback:
/* 8008E554 0008B4B4  7C 08 02 A6 */	mflr r0
/* 8008E558 0008B4B8  90 01 00 04 */	stw r0, 4(r1)
/* 8008E55C 0008B4BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008E560 0008B4C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008E564 0008B4C4  3B E3 00 00 */	addi r31, r3, 0
/* 8008E568 0008B4C8  3C 60 80 21 */	lis r3, __CARDBlock@ha
/* 8008E56C 0008B4CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8008E570 0008B4D0  1C BF 01 10 */	mulli r5, r31, 0x110
/* 8008E574 0008B4D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8008E578 0008B4D8  38 03 84 E0 */	addi r0, r3, __CARDBlock@l
/* 8008E57C 0008B4DC  7C 9D 23 79 */	or. r29, r4, r4
/* 8008E580 0008B4E0  7F C0 2A 14 */	add r30, r0, r5
/* 8008E584 0008B4E4  41 80 00 50 */	blt lbl_8008E5D4
/* 8008E588 0008B4E8  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 8008E58C 0008B4EC  38 03 02 00 */	addi r0, r3, 0x200
/* 8008E590 0008B4F0  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 8008E594 0008B4F4  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 8008E598 0008B4F8  38 03 02 00 */	addi r0, r3, 0x200
/* 8008E59C 0008B4FC  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 8008E5A0 0008B500  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 8008E5A4 0008B504  38 03 02 00 */	addi r0, r3, 0x200
/* 8008E5A8 0008B508  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 8008E5AC 0008B50C  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 8008E5B0 0008B510  34 03 FF FF */	addic. r0, r3, -1
/* 8008E5B4 0008B514  90 1E 00 AC */	stw r0, 0xac(r30)
/* 8008E5B8 0008B518  40 81 00 1C */	ble lbl_8008E5D4
/* 8008E5BC 0008B51C  3C 60 80 09 */	lis r3, BlockReadCallback@ha
/* 8008E5C0 0008B520  38 83 E5 54 */	addi r4, r3, BlockReadCallback@l
/* 8008E5C4 0008B524  38 7F 00 00 */	addi r3, r31, 0
/* 8008E5C8 0008B528  4B FF F7 81 */	bl __CARDReadSegment
/* 8008E5CC 0008B52C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8008E5D0 0008B530  40 80 00 44 */	bge lbl_8008E614
lbl_8008E5D4:
/* 8008E5D4 0008B534  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 8008E5D8 0008B538  28 00 00 00 */	cmplwi r0, 0
/* 8008E5DC 0008B53C  40 82 00 10 */	bne lbl_8008E5EC
/* 8008E5E0 0008B540  38 7E 00 00 */	addi r3, r30, 0
/* 8008E5E4 0008B544  38 9D 00 00 */	addi r4, r29, 0
/* 8008E5E8 0008B548  4B FF FC 1D */	bl __CARDPutControlBlock
lbl_8008E5EC:
/* 8008E5EC 0008B54C  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 8008E5F0 0008B550  28 00 00 00 */	cmplwi r0, 0
/* 8008E5F4 0008B554  7C 0C 03 78 */	mr r12, r0
/* 8008E5F8 0008B558  41 82 00 1C */	beq lbl_8008E614
/* 8008E5FC 0008B55C  38 00 00 00 */	li r0, 0
/* 8008E600 0008B560  7D 88 03 A6 */	mtlr r12
/* 8008E604 0008B564  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 8008E608 0008B568  38 7F 00 00 */	addi r3, r31, 0
/* 8008E60C 0008B56C  38 9D 00 00 */	addi r4, r29, 0
/* 8008E610 0008B570  4E 80 00 21 */	blrl 
lbl_8008E614:
/* 8008E614 0008B574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008E618 0008B578  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008E61C 0008B57C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8008E620 0008B580  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8008E624 0008B584  38 21 00 20 */	addi r1, r1, 0x20
/* 8008E628 0008B588  7C 08 03 A6 */	mtlr r0
/* 8008E62C 0008B58C  4E 80 00 20 */	blr 

.global __CARDRead
__CARDRead:
/* 8008E630 0008B590  7C 08 02 A6 */	mflr r0
/* 8008E634 0008B594  1D 23 01 10 */	mulli r9, r3, 0x110
/* 8008E638 0008B598  90 01 00 04 */	stw r0, 4(r1)
/* 8008E63C 0008B59C  3D 00 80 21 */	lis r8, __CARDBlock@ha
/* 8008E640 0008B5A0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8008E644 0008B5A4  38 08 84 E0 */	addi r0, r8, __CARDBlock@l
/* 8008E648 0008B5A8  7D 00 4A 14 */	add r8, r0, r9
/* 8008E64C 0008B5AC  80 08 00 00 */	lwz r0, 0(r8)
/* 8008E650 0008B5B0  2C 00 00 00 */	cmpwi r0, 0
/* 8008E654 0008B5B4  40 82 00 0C */	bne lbl_8008E660
/* 8008E658 0008B5B8  38 60 FF FD */	li r3, -3
/* 8008E65C 0008B5BC  48 00 00 28 */	b lbl_8008E684
lbl_8008E660:
/* 8008E660 0008B5C0  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 8008E664 0008B5C4  54 A0 BA 7E */	srwi r0, r5, 9
/* 8008E668 0008B5C8  3C A0 80 09 */	lis r5, BlockReadCallback@ha
/* 8008E66C 0008B5CC  90 08 00 AC */	stw r0, 0xac(r8)
/* 8008E670 0008B5D0  38 05 E5 54 */	addi r0, r5, BlockReadCallback@l
/* 8008E674 0008B5D4  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 8008E678 0008B5D8  7C 04 03 78 */	mr r4, r0
/* 8008E67C 0008B5DC  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 8008E680 0008B5E0  4B FF F6 C9 */	bl __CARDReadSegment
lbl_8008E684:
/* 8008E684 0008B5E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8008E688 0008B5E8  38 21 00 08 */	addi r1, r1, 8
/* 8008E68C 0008B5EC  7C 08 03 A6 */	mtlr r0
/* 8008E690 0008B5F0  4E 80 00 20 */	blr 

.global BlockWriteCallback
BlockWriteCallback:
/* 8008E694 0008B5F4  7C 08 02 A6 */	mflr r0
/* 8008E698 0008B5F8  90 01 00 04 */	stw r0, 4(r1)
/* 8008E69C 0008B5FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008E6A0 0008B600  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008E6A4 0008B604  3B E3 00 00 */	addi r31, r3, 0
/* 8008E6A8 0008B608  3C 60 80 21 */	lis r3, __CARDBlock@ha
/* 8008E6AC 0008B60C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8008E6B0 0008B610  1C BF 01 10 */	mulli r5, r31, 0x110
/* 8008E6B4 0008B614  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8008E6B8 0008B618  38 03 84 E0 */	addi r0, r3, __CARDBlock@l
/* 8008E6BC 0008B61C  7C 9D 23 79 */	or. r29, r4, r4
/* 8008E6C0 0008B620  7F C0 2A 14 */	add r30, r0, r5
/* 8008E6C4 0008B624  41 80 00 50 */	blt lbl_8008E714
/* 8008E6C8 0008B628  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 8008E6CC 0008B62C  38 03 00 80 */	addi r0, r3, 0x80
/* 8008E6D0 0008B630  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 8008E6D4 0008B634  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 8008E6D8 0008B638  38 03 00 80 */	addi r0, r3, 0x80
/* 8008E6DC 0008B63C  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 8008E6E0 0008B640  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 8008E6E4 0008B644  38 03 00 80 */	addi r0, r3, 0x80
/* 8008E6E8 0008B648  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 8008E6EC 0008B64C  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 8008E6F0 0008B650  34 03 FF FF */	addic. r0, r3, -1
/* 8008E6F4 0008B654  90 1E 00 AC */	stw r0, 0xac(r30)
/* 8008E6F8 0008B658  40 81 00 1C */	ble lbl_8008E714
/* 8008E6FC 0008B65C  3C 60 80 09 */	lis r3, BlockWriteCallback@ha
/* 8008E700 0008B660  38 83 E6 94 */	addi r4, r3, BlockWriteCallback@l
/* 8008E704 0008B664  38 7F 00 00 */	addi r3, r31, 0
/* 8008E708 0008B668  4B FF F7 75 */	bl __CARDWritePage
/* 8008E70C 0008B66C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8008E710 0008B670  40 80 00 44 */	bge lbl_8008E754
lbl_8008E714:
/* 8008E714 0008B674  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 8008E718 0008B678  28 00 00 00 */	cmplwi r0, 0
/* 8008E71C 0008B67C  40 82 00 10 */	bne lbl_8008E72C
/* 8008E720 0008B680  38 7E 00 00 */	addi r3, r30, 0
/* 8008E724 0008B684  38 9D 00 00 */	addi r4, r29, 0
/* 8008E728 0008B688  4B FF FA DD */	bl __CARDPutControlBlock
lbl_8008E72C:
/* 8008E72C 0008B68C  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 8008E730 0008B690  28 00 00 00 */	cmplwi r0, 0
/* 8008E734 0008B694  7C 0C 03 78 */	mr r12, r0
/* 8008E738 0008B698  41 82 00 1C */	beq lbl_8008E754
/* 8008E73C 0008B69C  38 00 00 00 */	li r0, 0
/* 8008E740 0008B6A0  7D 88 03 A6 */	mtlr r12
/* 8008E744 0008B6A4  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 8008E748 0008B6A8  38 7F 00 00 */	addi r3, r31, 0
/* 8008E74C 0008B6AC  38 9D 00 00 */	addi r4, r29, 0
/* 8008E750 0008B6B0  4E 80 00 21 */	blrl 
lbl_8008E754:
/* 8008E754 0008B6B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008E758 0008B6B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008E75C 0008B6BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8008E760 0008B6C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8008E764 0008B6C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8008E768 0008B6C8  7C 08 03 A6 */	mtlr r0
/* 8008E76C 0008B6CC  4E 80 00 20 */	blr 

.global __CARDWrite
__CARDWrite:
/* 8008E770 0008B6D0  7C 08 02 A6 */	mflr r0
/* 8008E774 0008B6D4  1D 23 01 10 */	mulli r9, r3, 0x110
/* 8008E778 0008B6D8  90 01 00 04 */	stw r0, 4(r1)
/* 8008E77C 0008B6DC  3D 00 80 21 */	lis r8, __CARDBlock@ha
/* 8008E780 0008B6E0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8008E784 0008B6E4  38 08 84 E0 */	addi r0, r8, __CARDBlock@l
/* 8008E788 0008B6E8  7D 00 4A 14 */	add r8, r0, r9
/* 8008E78C 0008B6EC  80 08 00 00 */	lwz r0, 0(r8)
/* 8008E790 0008B6F0  2C 00 00 00 */	cmpwi r0, 0
/* 8008E794 0008B6F4  40 82 00 0C */	bne lbl_8008E7A0
/* 8008E798 0008B6F8  38 60 FF FD */	li r3, -3
/* 8008E79C 0008B6FC  48 00 00 28 */	b lbl_8008E7C4
lbl_8008E7A0:
/* 8008E7A0 0008B700  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 8008E7A4 0008B704  54 A0 C9 FE */	srwi r0, r5, 7
/* 8008E7A8 0008B708  3C A0 80 09 */	lis r5, BlockWriteCallback@ha
/* 8008E7AC 0008B70C  90 08 00 AC */	stw r0, 0xac(r8)
/* 8008E7B0 0008B710  38 05 E6 94 */	addi r0, r5, BlockWriteCallback@l
/* 8008E7B4 0008B714  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 8008E7B8 0008B718  7C 04 03 78 */	mr r4, r0
/* 8008E7BC 0008B71C  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 8008E7C0 0008B720  4B FF F6 BD */	bl __CARDWritePage
lbl_8008E7C4:
/* 8008E7C4 0008B724  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8008E7C8 0008B728  38 21 00 08 */	addi r1, r1, 8
/* 8008E7CC 0008B72C  7C 08 03 A6 */	mtlr r0
/* 8008E7D0 0008B730  4E 80 00 20 */	blr 