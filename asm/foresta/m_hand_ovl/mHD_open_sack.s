lbl_805DE03C:
/* 805DE03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE040  7C 08 02 A6 */	mflr r0
/* 805DE044  38 E0 00 00 */	li r7, 0
/* 805DE048  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE04C  38 00 00 2A */	li r0, 0x2a
/* 805DE050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DE054  7C 7F 1B 78 */	mr r31, r3
/* 805DE058  3C 60 80 6D */	lis r3, sack_amount@ha /* 0x806CD09C@ha */
/* 805DE05C  93 C1 00 08 */	stw r30, 8(r1)
/* 805DE060  38 83 D0 9C */	addi r4, r3, sack_amount@l /* 0x806CD09C@l */
/* 805DE064  3D 04 FF FF */	addis r8, r4, 0xffff
/* 805DE068  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DE06C  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 805DE070  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DE074  38 80 00 01 */	li r4, 1
/* 805DE078  81 25 09 80 */	lwz r9, 0x980(r5)
/* 805DE07C  3C A3 00 02 */	addis r5, r3, 2
/* 805DE080  38 60 10 52 */	li r3, 0x1052
/* 805DE084  A0 C9 02 34 */	lhz r6, 0x234(r9)
/* 805DE088  54 C6 10 3A */	slwi r6, r6, 2
/* 805DE08C  7C C8 32 14 */	add r6, r8, r6
/* 805DE090  83 C6 7C 00 */	lwz r30, 0x7c00(r6)
/* 805DE094  B0 E9 02 34 */	sth r7, 0x234(r9)
/* 805DE098  80 C5 61 3C */	lwz r6, 0x613c(r5)
/* 805DE09C  80 A6 00 8C */	lwz r5, 0x8c(r6)
/* 805DE0A0  7C A5 F2 14 */	add r5, r5, r30
/* 805DE0A4  90 A6 00 8C */	stw r5, 0x8c(r6)
/* 805DE0A8  B0 89 00 14 */	sth r4, 0x14(r9)
/* 805DE0AC  B0 E9 02 32 */	sth r7, 0x232(r9)
/* 805DE0B0  B0 09 00 16 */	sth r0, 0x16(r9)
/* 805DE0B4  48 04 FC 51 */	bl sAdo_SysTrgStart
/* 805DE0B8  38 00 00 2A */	li r0, 0x2a
/* 805DE0BC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805DE0C0  7C 1E 03 D6 */	divw r0, r30, r0
/* 805DE0C4  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805DE0C8  90 03 03 C4 */	stw r0, 0x3c4(r3)
/* 805DE0CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DE0D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DE0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE0D8  7C 08 03 A6 */	mtlr r0
/* 805DE0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE0E0  4E 80 00 20 */	blr 
