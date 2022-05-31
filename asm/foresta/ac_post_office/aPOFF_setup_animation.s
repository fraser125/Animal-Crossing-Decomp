lbl_805B7F8C:
/* 805B7F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7F90  7C 08 02 A6 */	mflr r0
/* 805B7F94  3C A0 80 6C */	lis r5, data_806C62C0@ha /* 0x806C62C0@ha */
/* 805B7F98  FC 80 08 90 */	fmr f4, f1
/* 805B7F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7FA0  39 05 62 C0 */	addi r8, r5, data_806C62C0@l /* 0x806C62C0@l */
/* 805B7FA4  80 83 02 D8 */	lwz r4, 0x2d8(r3)
/* 805B7FA8  80 03 02 B0 */	lwz r0, 0x2b0(r3)
/* 805B7FAC  20 84 00 03 */	subfic r4, r4, 3
/* 805B7FB0  7C 84 00 34 */	cntlzw r4, r4
/* 805B7FB4  2C 00 00 03 */	cmpwi r0, 3
/* 805B7FB8  54 8A D9 7E */	srwi r10, r4, 5
/* 805B7FBC  41 82 00 30 */	beq lbl_805B7FEC
/* 805B7FC0  40 80 00 10 */	bge lbl_805B7FD0
/* 805B7FC4  2C 00 00 02 */	cmpwi r0, 2
/* 805B7FC8  40 80 00 14 */	bge lbl_805B7FDC
/* 805B7FCC  48 00 00 20 */	b lbl_805B7FEC
lbl_805B7FD0:
/* 805B7FD0  2C 00 00 05 */	cmpwi r0, 5
/* 805B7FD4  40 80 00 18 */	bge lbl_805B7FEC
/* 805B7FD8  48 00 00 0C */	b lbl_805B7FE4
lbl_805B7FDC:
/* 805B7FDC  38 C0 00 02 */	li r6, 2
/* 805B7FE0  48 00 00 10 */	b lbl_805B7FF0
lbl_805B7FE4:
/* 805B7FE4  38 C0 00 01 */	li r6, 1
/* 805B7FE8  48 00 00 08 */	b lbl_805B7FF0
lbl_805B7FEC:
/* 805B7FEC  38 C0 00 00 */	li r6, 0
lbl_805B7FF0:
/* 805B7FF0  30 06 FF FF */	addic r0, r6, -1
/* 805B7FF4  54 C9 10 3A */	slwi r9, r6, 2
/* 805B7FF8  7C 00 31 10 */	subfe r0, r0, r6
/* 805B7FFC  38 A8 01 60 */	addi r5, r8, 0x160
/* 805B8000  7C 25 4C 2E */	lfsx f1, r5, r9
/* 805B8004  3C 80 80 65 */	lis r4, lit_440@ha /* 0x8064AA38@ha */
/* 805B8008  38 E4 AA 38 */	addi r7, r4, lit_440@l /* 0x8064AA38@l */
/* 805B800C  38 C8 01 70 */	addi r6, r8, 0x170
/* 805B8010  7C 46 4C 2E */	lfsx f2, r6, r9
/* 805B8014  55 44 18 38 */	slwi r4, r10, 3
/* 805B8018  54 00 10 3A */	slwi r0, r0, 2
/* 805B801C  C0 A7 00 00 */	lfs f5, 0(r7)
/* 805B8020  7C 04 02 14 */	add r0, r4, r0
/* 805B8024  38 A8 01 50 */	addi r5, r8, 0x150
/* 805B8028  80 83 01 90 */	lwz r4, 0x190(r3)
/* 805B802C  FC 60 08 90 */	fmr f3, f1
/* 805B8030  7C A5 00 2E */	lwzx r5, r5, r0
/* 805B8034  38 63 01 78 */	addi r3, r3, 0x178
/* 805B8038  38 C0 00 00 */	li r6, 0
/* 805B803C  38 E0 00 00 */	li r7, 0
/* 805B8040  4B DB 8C 95 */	bl cKF_SkeletonInfo_R_init
/* 805B8044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B8048  7C 08 03 A6 */	mtlr r0
/* 805B804C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B8050  4E 80 00 20 */	blr 
